/*===========================================================================
    File:: tlImageQuantizer.cpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <string.h>
#include <float.h>

#include "tlColour.hpp"
#include "tlImage.hpp"

#include "tlImageQuantizer.hpp"


// tlImageQuantizer initialization and cleanup
// ===========================================

tlImageQuantizer::tlImageQuantizer():
    colour_key_active(true),
    depth(8)
{
    // Default colour key is hot pink (255, 0, 255)
    colour_key[0] = 255;
    colour_key[1] = 0;
    colour_key[2] = 255;
    colour_key[3] = 255;
}


tlImageQuantizer::~tlImageQuantizer()
{
}


// tlImageQuantizer parameter accessors
// ====================================

void tlImageQuantizer::SetColourKeyActive(bool active)
{
    colour_key_active = active;
}


bool tlImageQuantizer::GetColourKeyActive() const
{
    return colour_key_active;
}


void tlImageQuantizer::SetColourKey(tlColour key)
{
    colour_key[0] = key.BlueCh();
    colour_key[1] = key.GreenCh();
    colour_key[2] = key.RedCh();
    colour_key[3] = key.AlphaCh();
}


tlColour tlImageQuantizer::GetColourKey() const
{
    return tlColour(colour_key[0], colour_key[1], colour_key[2], colour_key[3]);
}


void tlImageQuantizer::SetColourKey(const unsigned char key[4])
{
    memcpy(colour_key, key, sizeof(colour_key));
}


void tlImageQuantizer::GetColourKey(unsigned char key[4]) const
{
    memcpy(key, colour_key, sizeof(colour_key));
}


void tlImageQuantizer::SetDepth(int new_depth)
{
    depth = new_depth;
}


int tlImageQuantizer::GetDepth() const
{
    return depth;
}


bool tlImageQuantizer::IsColourKey(const unsigned char colour[4]) const
{
    return (colour[0] == colour_key[0]) &&
             (colour[1] == colour_key[1]) &&
             (colour[2] == colour_key[2]) &&
             (colour[3] == colour_key[3]);
}


// tlImageQuantizer::Node class - the rgb-space octtree nodes
// ==========================================================

tlImageQuantizer::Node::Node(const unsigned char c_min[4],
                                      const unsigned char c_max[4]):
    num_pixels_total(0),
    num_pixels_contained(0),
    error(0.0),
    index(-1)
{
    memcpy(colour_min, c_min, sizeof(colour_min));
    memcpy(colour_max, c_max, sizeof(colour_max));
    for (int c = 0; c < 4; ++c)
    {
        colour_ctr[c] = (colour_min[c] + colour_max[c]) / 2;
    }

    memset(sum, 0, sizeof(sum));

    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 2; ++j)
        {
            for (int k = 0; k < 2; ++k)
            {
                for (int l = 0; l < 2; ++l)
                {
                    nodes[i][j][k][l] = NULL;
                }
            }
        }
    }
}


tlImageQuantizer::Node::~Node()
{
    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 2; ++j)
        {
            for (int k = 0; k < 2; ++k)
            {
                for (int l = 0; l < 2; ++l)
                {
                    if (nodes[i][j][k][l] != NULL)
                    {
                        delete nodes[i][j][k][l];
                    }
                }
            }
        }
    }
}


int tlImageQuantizer::Node::AddPixel(const unsigned char colour[3],
                                                 int depth)
{
    ++num_pixels_total;

    int c;
    for (c = 0; c < 4; ++c)
    {
        int diff = colour[c] - colour_ctr[c];
        error += (diff * diff);
    }

    // Check if we've hit the maximum tree depth,
    // or if we've hit the minimum colourspace quanta
    if ((depth <= 0) || (colour_min[0] == colour_max[0]) ||
                              (colour_min[1] == colour_max[1]) ||
                              (colour_min[2] == colour_max[2]) ||
                              (colour_min[3] == colour_max[3]))
    {
        ++num_pixels_contained;

        for (c = 0; c < 4; ++c)
        {
            sum[c] += colour[c];
        }

        // Return 1 if this is the FIRST time a contained
        // pixel has been added to this node
        return (num_pixels_contained == 1);
    }
    else
    {
        --depth;

        int idx[4];
        for (c = 0; c < 4; ++c)
        {
            idx[c] = (colour[c] > colour_ctr[c]);
        }

        // Memory is allocated as needed - reduces time and resources required
        if (nodes[idx[0]][idx[1]][idx[2]][idx[3]] == NULL)
        {
            unsigned char c_min[4];
            unsigned char c_max[4];

            for (c = 0; c < 4; ++c)
            {
                c_min[c] = (idx[c] ? colour_ctr[c] + 1 : colour_min[c]);
                c_max[c] = (idx[c] ? colour_max[c] : colour_ctr[c]);
            }

            nodes[idx[0]][idx[1]][idx[2]][idx[3]] = new Node(c_min, c_max);
        }

        return nodes[idx[0]][idx[1]][idx[2]][idx[3]]->AddPixel(colour, depth);
    }
}


void tlImageQuantizer::Node::Prune(double error_threshold,
                                              double& min_error,
                                              int& nodes_containing)
{
    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 2; ++j)
        {
            for (int k = 0; k < 2; ++k)
            {
                for (int l = 0; l < 2; ++l)
                {
                    if (nodes[i][j][k][l] != NULL)
                    {
                        nodes[i][j][k][l]->Prune(error_threshold,
                                                         min_error,
                                                         nodes_containing);

                        if (nodes[i][j][k][l]->error <= error_threshold)
                        {
                            // prune the node - add its colour statistics to the parent
                            num_pixels_contained += nodes[i][j][k][l]->num_pixels_contained;
                            for (int c = 0; c < 4; ++c)
                            {
                                sum[c] += nodes[i][j][k][l]->sum[c];
                            }

                            delete nodes[i][j][k][l];
                            nodes[i][j][k][l] = NULL;
                        }
                        else
                        {
                            // not pruning, so update loop controls
                            if (nodes[i][j][k][l]->error < min_error)
                            {
                                min_error = nodes[i][j][k][l]->error;
                            }

                            if (nodes[i][j][k][l]->num_pixels_contained > 0)
                            {
                                ++nodes_containing;
                            }
                        }
                    }
                }
            }
        }
    }
}


void tlImageQuantizer::Node::SetPaletteEntries(int& idx, unsigned char* palette)
{
    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 2; ++j)
        {
            for (int k = 0; k < 2; ++k)
            {
                for (int l = 0; l < 2; ++l)
                {
                    if (nodes[i][j][k][l] != NULL)
                    {
                        nodes[i][j][k][l]->SetPaletteEntries(idx, palette);
                    }
                }
            }
        }
    }

    if (num_pixels_contained > 0)
    {
        index = idx;
        ++idx;

        unsigned char pal_colour[4];
        for (int c = 0; c < 4; ++c)
        {
            pal_colour[c] = (unsigned char)(sum[c] / num_pixels_contained);
        }

        memcpy(palette + (index * 4), pal_colour, sizeof(pal_colour));
    }
}


int tlImageQuantizer::Node::ClassifyPixel(const unsigned char colour[4])
{
    int idx[4];
    for (int c = 0; c < 4; ++c)
    {
        idx[c] = (colour[c] > colour_ctr[c]);
    }

    Node* node = nodes[idx[0]][idx[1]][idx[2]][idx[3]];
    if (node != NULL)
    {
        int sub_index = node->ClassifyPixel(colour);

        // check to see if node actually had a palette entry
        if (sub_index < 0)
        {
            return index;
        }
        else
        {
            return sub_index;
        }
    }

    return index;
}


// tlImageQuantizer Quantize() method - colour reduction on set of images
// ======================================================================

int tlImageQuantizer::Classify(Node* root, const tlTable<tlImage*>& images)
{
    int nodes_containing = 0;
    unsigned char colour[4];

    for (int i = 0; i < images.Count(); ++i)
    {
        for (int y = 0; y < images[i]->GetHeight(); ++y)
        {
            for (int x = 0; x < images[i]->GetWidth(); ++x)
            {
                images[i]->GetPixel(x, y, colour);

                if (colour_key_active)
                {
                    if (!IsColourKey(colour))
                    {
                        nodes_containing += root->AddPixel(colour, depth - 1);
                    }
                }
                else
                {
                    nodes_containing += root->AddPixel(colour, depth - 1);
                }
            }
        }
    }

    return nodes_containing;
}


void tlImageQuantizer::Reduce(Node* root, int nodes_containing, int max_colours)
{
    double error_threshold = 0.0;
    double min_error;

    // reserve an index for the colour key
    if (colour_key_active)
    {
        --max_colours;
    }

    while (nodes_containing > max_colours)
    {
        nodes_containing = 0;
        min_error = DBL_MAX;

        root->Prune(error_threshold, min_error, nodes_containing);

        // need to increment the containing nodes for the root
        // since Prune() only takes into account child nodes
        if (root->num_pixels_contained > 0)
        {
            ++nodes_containing;
        }

        error_threshold = min_error;
    }
}


void tlImageQuantizer::GeneratePalette(Node* root, unsigned char* palette)
{
    int idx;

    if (colour_key_active)
    {
        memcpy(palette, colour_key, sizeof(colour_key));
        idx = 1;
    }
    else
    {
        idx = 0;
    }

    root->SetPaletteEntries(idx, palette);
}


void tlImageQuantizer::GenerateImages(Node* root, const tlTable<tlImage*>& images,
                                                  int new_bpp, const unsigned char* palette)
{
    int pal_count = (1 << new_bpp);

    unsigned char colour[4];
    int index;

    for (int i = 0; i < images.Count(); ++i)
    {
        tlImage* new_image = new tlImage(images[i]->GetWidth(),
                                                    images[i]->GetHeight(),
                                                    new_bpp,
                                                    true, false,
                                                    NULL, palette);
        new_image->SetName(images[i]->GetName());

        for (int y = 0; y < new_image->GetHeight(); ++y)
        {
            for (int x = 0; x < new_image->GetWidth(); ++x)
            {
                images[i]->GetPixel(x, y, colour);

                if (colour_key_active && IsColourKey(colour))
                {
                    // if we're using a colour key, its index
                    // is automatically 0 (first entry in the palette)
                    index = 0;
                }
                else
                {
                    // otherwise, search for the pixel index
                    // -- letting the octtree classify the pixel colour
                    //    should be faster than using tlImage's MatchColour()
                    //    method, since the octtree will allow colour
                    //    classification to occur in log(n) time - might as
                    //    well use the memory if its there!
                    index = root->ClassifyPixel(colour);

                    // colour not classified - won't usually happen, but
                    // sometimes will for images not covering a broad spectrum
                    // range, but having a few outlying pixels
                    // (eg. predominantly red image, with a few blue pixels in a corner)
                    if (index < 0)
                    {
                        // fine, try finding closest match within palette
                        index = tlImage::MatchColour(colour, pal_count, palette);
                    }
                }

                new_image->SetPixelIndex(x, y, index);
            }
        }

        *(images[i]) = *new_image;
        delete new_image;
    }
}

void tlImageQuantizer::Quantize(tlImage* image, int new_bpp)
{
    tlTable<tlImage*> table;
    table.Append(image);

    Quantize(table, new_bpp);
}

void tlImageQuantizer::Quantize(const tlTable<tlImage*>& images, int new_bpp)
{
    // We only support 4 and 8-bit palettized images
    if (new_bpp <= 4) new_bpp = 4;
    if (new_bpp > 4) new_bpp = 8;

    // Create root octtree node, containing entire colourspace
    unsigned char c_min[4] = { 0, 0, 0, 0 };
    unsigned char c_max[4] = { 255, 255, 255, 255 };
    Node* root = new Node(c_min, c_max);

    // classify all the pixels in the images list into the octtree
    int nodes_containing = Classify(root, images);

    // prune the octtree until we have <= max_colours leaves
    int max_colours = (1 << new_bpp);
    Reduce(root, nodes_containing, max_colours);

    // generate a palette from the octtree
    int palette_size = max_colours * 4;
    unsigned char* palette = new unsigned char [palette_size];
    memset( palette, 0xff, palette_size );
    GeneratePalette(root, palette);

    // finally, transform all the images into palettized format
    GenerateImages(root, images, new_bpp, palette);
    delete[] palette;

    delete root;
}

void tlImageQuantizer::Quantize(tlVolumeImage* image, int new_bpp)
{   
    tlTable<tlImage*> table;
    for (int i = 0; i < image->GetDepth(); i++)
    {
        tlImage* tmp = image->GetImage(i);
        table.Append(tmp);
    }
    Quantize(table, new_bpp);
}

void tlImageQuantizer::Quantize(const tlTable<tlVolumeImage*>& images, int new_bpp)
{
    tlTable<tlImage*> table;
    for (int i = 0; i < images.Count(); i++)
    {
        if (!images[i])
            break;

        table.ZeroCount();
        for (int j = 0; j < images[i]->GetDepth(); j++)
        {
            tlImage* tmp = images[i]->GetImage(j);
            table.Append(tmp);
        }
        Quantize(table, new_bpp);
    }
}

// End of file.

