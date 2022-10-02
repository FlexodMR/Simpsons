/*===========================================================================
    File:: tlImageQuantizer.hpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLIMAGEQUANTIZER_HPP
#define _TLIMAGEQUANTIZER_HPP


#include "tlTable.hpp"


class tlColour;
class tlImage;
class tlVolumeImage;

class tlImageQuantizer
{
public:

    tlImageQuantizer();
    virtual ~tlImageQuantizer();

    void SetColourKeyActive(bool active);
    bool GetColourKeyActive() const;

    void SetColourKey(tlColour key);
    tlColour GetColourKey() const;
    void SetColourKey(const unsigned char key[4]);
    void GetColourKey(unsigned char key[4]) const;

    void SetDepth(int new_depth);
    int GetDepth() const;

    bool IsColourKey(const unsigned char colour[4]) const;

    void Quantize(tlImage* image, int new_bpp = 8);
    void Quantize(const tlTable<tlImage*>& images, int new_bpp = 8);

    void Quantize(tlVolumeImage* image, int new_bpp = 8);
    void Quantize(const tlTable<tlVolumeImage*>& images, int new_bpp = 8);

private:

    bool colour_key_active;
    unsigned char colour_key[4];
    int depth;

    struct Node
    {
    public:

        unsigned char colour_min[4];
        unsigned char colour_max[4];
        unsigned char colour_ctr[4];

        int num_pixels_total, num_pixels_contained;
        unsigned long sum[4];
        double error;
        int index;

        Node* nodes[2][2][2][2];

        Node(const unsigned char c_min[4],
              const unsigned char c_max[4]);
        ~Node();

        int AddPixel(const unsigned char colour[4], int depth);
        void Prune(double error_threshold, double& min_error, int& nodes_containing);
        void SetPaletteEntries(int& idx, unsigned char* palette);
        int ClassifyPixel(const unsigned char colour[4]);
    };

    int Classify(Node* root, const tlTable<tlImage*>& images);
    void Reduce(Node* root, int nodes_containing, int max_colours);
    void GeneratePalette(Node* root, unsigned char* palette);
    void GenerateImages(Node* root, const tlTable<tlImage*>& images,
                              int new_bpp, const unsigned char* palette);
};


#endif

