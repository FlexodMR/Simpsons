//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "SubTexture.hpp"
#include "tlImage.hpp"
#include "tlPrimGroup.hpp"
#include "tlShader.hpp"
#include "tlUV.hpp"
#include "tlVertex.hpp"
#include "radmath/util.hpp"

namespace rmt = RadicalMathLibrary;

IntPair& IntPair::operator=(const IntPair &ip)
{
    x = ip.x;
    y = ip.y;

    return *this;
}

PrimNode::PrimNode() : mLow(0, 0), mHigh(0, 0), mUVIndex(0),
                       mNext(NULL), mPrimGroup(NULL)
{
    mVertexIndex[0] = 0;
    mVertexIndex[1] = 0;
    mVertexIndex[2] = 0;
}

PrimNode::~PrimNode()
{
    // Would be nice to have mPrimGroup ref counted.
    // delete mPrim;
}

void PrimNode::SetPrim(tlPrimGroup *primGroup, const int triangleIndex,
                       const int uvIndex, const tlTexture *texture)
{
    if(primGroup == NULL) return;
    if(triangleIndex >= primGroup->GetTriangleCount()) return;

    mUVIndex = uvIndex;
    mPrimGroup = primGroup;
    
    IntPair size(texture->GetWidth(), texture->GetHeight());

    bool initialized = false;
    primGroup->GetTriangle(triangleIndex, mVertexIndex, mVertexIndex + 1,
                           mVertexIndex + 2);

    
    int i;
    tlUV uvOffset; // Offset to apply to each vertex uv.
    for(i = 0; i < 3; i++)
    {
        const tlUV &uv = primGroup->GetVertex(mVertexIndex[i])->GetUV(mUVIndex);

        uvOffset.u = rmt::Min(uvOffset.u, uv.u);
        uvOffset.v = rmt::Min(uvOffset.v, uv.v);
    }
    uvOffset.u = rmt::Floor(uvOffset.u);
    uvOffset.v = rmt::Floor(uvOffset.v);
        
    bool useAllX = false;
    bool useAllY = false;
    for(i = 0; i < 3; i++)
    {
        // Find the vertex position in the texture.
        const tlUV &uv = primGroup->GetVertex(mVertexIndex[i])->GetUV(mUVIndex);

        // Shift UVs of each vertex so as to have the minimum of all UVs in [0, 1).
        float u = rmt::Max(uv.u - uvOffset.u, 0.0f);
        float v = rmt::Max(uv.v - uvOffset.v, 0.0f);
        
        // If the UVs wrap, use the entire width or height of the texture.
        // HBW TODO: Do this by shifting the texture or through further subdivision.
        if(u > 1.0f)
        {
            useAllX = true;
        }
        if(v > 1.0f)
        {
            useAllY = true;
        }

        //now convert it to pixel coordinates.  ( 0.5 is pixel 0, 1.5 is pixel 1, etc. )
        float x = u * rmt::LtoF(size.x);
        float y = (1.0f - v) * rmt::LtoF(size.y);
        
        // Subtract 0.5 to center about integer values. ( 0.0 is pixel 0, 1.0 is pixel 1, etc. )
        x -= 0.5f;
        y -= 0.5f;
        
        // Determine the pixels bounding the sampling point.  Note this may
        // extend to one pixel beyond the normal texture boundaries.  This is
        // the method to represent potential wrap around.
        int lowX  = (x >= 0.0f) ? rmt::FtoL(x) : -1;
        int lowY  = (y >= 0.0f) ? rmt::FtoL(y) : -1;
        int highX = lowX + 1;
        int highY = lowY + 1;

        // Set the starting bounding values.
        if(!initialized)
        {
            mLow.x  = useAllX ? 0 : lowX;
            mHigh.x = useAllX ? size.x : highX;
            mLow.y  = useAllY ? 0 : lowY;
            mHigh.y = useAllY ? size.y : highY;
            initialized = true;
        }
        else
        {
            // Extend the bounds to include this pixel.
            mLow.x  = useAllX ? 0 : rmt::Min(mLow.x, lowX);
            mHigh.x = useAllX ? size.x : rmt::Max(mHigh.x, highX);
            mLow.y  = useAllY ? 0 : rmt::Min(mLow.y, lowY);
            mHigh.y = useAllY ? size.y : rmt::Max(mHigh.y, highY);
        }
    }
}

void PrimNode::SetNext(class PrimNode *pn)
{
    mNext = pn;
}

tlVertex* PrimNode::GetVertex(int vertexIndex) const
{
    if(vertexIndex < 0 || vertexIndex >= 3) return NULL;

    if(mPrimGroup == NULL) return NULL;
    return mPrimGroup->GetVertex(mVertexIndex[vertexIndex]);
}

SubTexture::SubTexture(const tlTexture *texture) : mLow(0, 0), mHigh(0, 0), mHead(NULL),
                                                   mTranspose(false), mTexture(texture)
{
}

SubTexture::~SubTexture()
{
    PrimNode *current = mHead;
    PrimNode *next;

    // Step through the node list and delete all entries.
    while(current)
    {
        next = current->Next();
        delete current;
        current = next;
    }
}

int  SubTexture::GetWidth() const
{
    return (mTranspose) ? (mHigh.y - mLow.y + 1) : (mHigh.x - mLow.x + 1);
}

int  SubTexture::GetHeight() const
{
    return (mTranspose) ? (mHigh.x - mLow.x + 1) : (mHigh.y - mLow.y + 1);
}

// Use this to determine if the new prim should be added.
bool SubTexture::Overlaps(const PrimNode &prim, float threshold) const
{
    if(mHead == NULL)
    {
        return true;  // Currently the subtexture is empty.
    }
    
    IntPair overlapLow, overlapHigh;
    overlapLow.x  = rmt::Max(mLow.x, prim.GetLow().x);
    overlapLow.y  = rmt::Max(mLow.y, prim.GetLow().y);
    overlapHigh.x = rmt::Min(mHigh.x, prim.GetHigh().x);
    overlapHigh.y = rmt::Min(mHigh.y, prim.GetHigh().y);
    
    if(overlapLow.x > overlapHigh.x ||
       overlapLow.y > overlapHigh.y)
    {
        return false;
    }

    int area     = GetWidth() * GetHeight();
    int primArea = prim.GetWidth() * prim.GetHeight();

    int overlap = (overlapHigh.x - overlapLow.x + 1) *
                  (overlapHigh.y - overlapLow.y + 1);

    // This is the main decision algorithm.
    float percentArea = (float)overlap / (float)area;
    float percentPrimArea = (float)overlap / (float)primArea;

    bool usefull = percentArea + percentPrimArea >= threshold;

    return usefull;
}

void SubTexture::Add(PrimNode* prim)
{
    if(prim == NULL) return;

    PrimNode *current = mHead;

    // Check to see if this is the first entry.
    if(mHead == NULL)
    {
        mLow = prim->GetLow();
        mHigh = prim->GetHigh();
        mHead = prim;
        return;
    }
    
    // Make sure this not already in the list.
    if(mHead == prim) return;
    while(current->Next() != NULL)
    {
        current = current->Next();
        if(current == prim) return;
    }

    current->SetNext(prim); // Add prim to the list.

    // Update the bounds with the new addition.
    mLow.x  = rmt::Min(mLow.x, prim->GetLow().x);
    mLow.y  = rmt::Min(mLow.y, prim->GetLow().y);
    mHigh.x = rmt::Max(mHigh.x, prim->GetHigh().x);
    mHigh.y = rmt::Max(mHigh.y, prim->GetHigh().y);
}

void SubTexture::MoveTo(const IntPair &newPosition, const IntPair &textureSize)
{
    static const tlMatrix SWAP_XY(0.0f, 1.0f, 0.0f, 0.0f,
                                  1.0f, 0.0f, 0.0f, 0.0f,
                                  0.0f, 0.0f, 1.0f, 0.0f,
                                  0.0f, 0.0f, 0.0f, 1.0f);

    PrimNode *current = mHead;

    tlPoint newUVPos((float)(newPosition.x), (float)(newPosition.y), 0.0f);
    tlPoint newUVSize((float)(GetWidth()), (float)(GetHeight()), 1.0f);

    tlPoint oldUVPos((float)(mLow.x), (float)(mLow.y), 0.0f);
    tlPoint oldUVSize(newUVSize);
    if(mTranspose)
    {
        rmt::Swap(oldUVSize.x, oldUVSize.y);
    }
    
    tlPoint newTextureSize((float)(mTexture->GetWidth()), (float)(mTexture->GetHeight()), 1.0f);
    tlPoint oldTextureSize((float)(textureSize.x), (float)(textureSize.y), 1.0f);

    oldUVPos  = oldUVPos  / oldTextureSize;
    oldUVSize = oldUVSize / oldTextureSize;
    newUVPos  = newUVPos  / newTextureSize;
    newUVSize = newUVSize / newTextureSize;

    tlMatrix transform;
    transform.IdentityMatrix();
    transform.Translate(0.0f, -1.0f, 0.0f);
    transform.Scale(1.0f, -1.0f, 1.0f, true);

    transform.Translate(-oldUVPos.x, -oldUVPos.y, -oldUVPos.z);
    transform.Scale(1.0f / oldUVSize.x, 1.0f / oldUVSize.y, 1.0f, true);
    if(mTranspose)
    {
        transform = transform * SWAP_XY;
    }
    transform.Scale(newUVSize.x, newUVSize.y, 1.0f, true);
    transform.Translate(newUVPos);

    transform.Scale(1.0f, -1.0f, 1.0f, true);
    transform.Translate(0.0f, 1.0f, 0.0f);

    while(current != NULL)
    {
        tlMatrix tranform;
        const int uvIndex = current->GetUVIndex();
        // Convert pixel transform to uv

        int i;
        for(i = 0; i < 3; i++)
        {
            tlVertex *vertex = current->GetVertex(i);

            tlUV uv = vertex->GetUV(uvIndex);
            tlPoint uv3(uv.u, uv.v, 0.0f);
            uv3 = uv3 * transform;
            uv.Set(uv3.x, uv3.y);
            
            vertex->SetUV(uvIndex, uv);            
        }
        current = current->Next();
    }            
}

void SubTexture::Transpose(bool transpose)
{
    mTranspose = transpose;
}

SubTextureList::SubTextureList(tlTexture *texture) : mTexture(texture), mPackedTexture(NULL)
{
    assert(texture != NULL);
}

SubTextureList::~SubTextureList()
{
}

// Find a subtexture to put the primgroup in.  If none currently
// exists, create one to hold it.
void SubTextureList::Add(tlPrimGroup *primGroup, int uvIndex)
{

    int triangleIndex;

    for(triangleIndex = primGroup->GetTriangleCount() - 1; triangleIndex >= 0; triangleIndex--)
    {
        bool successfull = false;

        // Convert the primGroup to a primNode.
        PrimNode *primNode = new PrimNode();
        primNode->SetPrim(primGroup, triangleIndex, uvIndex, mTexture);
        
        int i;
        for(i = 0; i < mList.Count(); i++)
        {
            SubTexture *subTexture = mList[i];
            if(subTexture == NULL) continue;
            
            if(subTexture->Overlaps(*primNode))
            {
                subTexture->Add(primNode);
                successfull = true;
                break;
            }
        }        

        if(!successfull)
        {
            // Create a new subtexture to hold this primgroup.
            SubTexture *subTexture = new SubTexture(mTexture);
            subTexture->Add(primNode);
            mList.Append(subTexture);
        }

    }
}

// Compare the longest sides of two sub-textures for use in sort.
// return +1 if a1 < a2
// return  0 if a1 == a2
// return -1 if a1 > a2
// This sorts textures from largest to smallest.
int CompareSubTextures(const void *a1, const void *a2)
{
    int returnVal;
    
    SubTexture *s1 = *((SubTexture**)a1);
    SubTexture *s2 = *((SubTexture**)a2);

    if(s1 == NULL || s2 == NULL)
    {
        assert(0 && "Unable to cast subtextures in compare");
        return 0; // No way to pass an error, just return equal.
    }

    int size1 = rmt::Max(s1->GetWidth(), s1->GetHeight());
    int size2 = rmt::Max(s2->GetWidth(), s2->GetHeight());

    if(size1 < size2)
    {
        returnVal = 1;
    }
    else if(size1 == size2)
    {
        returnVal = 0;
    }
    else
    {
        returnVal = -1;
    }

    return returnVal;
}

void SubTextureList::Sort()
{
    // Make sure the sub-textures are higher than wider.
    int i;
    for(i = 0; i < mList.Count(); i++)
    {
        SubTexture *s = mList[i];

        // HBW TODO: Not sure which will compact better.  Play with this.
        if(s->GetWidth() > s->GetHeight())
            // if(s->GetWidth() < s->GetHeight())
        {
            s->Transpose(true);
        }
    }

    // Now sort the list in decending height order.
    mList.Sort( CompareSubTextures );
}

bool SubTextureList::Pack(int x, int y)
{
    bool success = true;

    mBSPTree.Resize(IntPair(x, y));

    bool *originalTranspose = new bool[mList.Count()];

    int i;
    for(i = 0; i < mList.Count(); i++)
    {
        originalTranspose[i] = mList[i]->IsTransposed();

        if(mBSPTree.Add(mList[i]) == false)
        {
            // HBW TODO: if it doesn't fit, this should transpose and add *** sort back into list ***.
            mList[i]->Transpose(!originalTranspose[i]);
            if(mBSPTree.Add(mList[i]) == false)
            {
                success = false;
                int j;

                // Back out changes to sub-textures.
                for(j = 0; j <= i; j++)
                {
                    mList[j]->Transpose(originalTranspose[j]);
                }
                
                break;
            }
        }
    }

    delete[] originalTranspose;
    
    return success;
}

void SubTextureList::ApplyNewTexture()
{
    mBSPTree.PackTexture(mTexture);
}

int SubTextureList::Area() const
{
    int totalArea = 0;
    
    int i;
    for(i = 0; i < mList.Count(); i++)
    {
        const SubTexture *subTexture = mList[i];
        totalArea += subTexture->GetWidth() * subTexture->GetHeight();
    }

    return totalArea;
}


BSPNode::BSPNode()
    : mChild(NULL), mYoungerSibling(NULL),
      mOlderSibling(NULL), mParent(NULL), mFreeSpace(0, 0), mSubTexture(NULL)
{
}

BSPNode::~BSPNode()
{
}

BSPTree::BSPTree() : mSize(0, 0), mRoot(NULL)
{
}

BSPTree::BSPTree(const IntPair &size) : mSize(size), mRoot(NULL)
{
}

BSPTree::~BSPTree()
{
    DeleteTree();
}

void BSPTree::Resize(const IntPair &size)
{
    if(mRoot != NULL)
    {
        DeleteTree();
    }
    
    mSize = size;
}

bool BSPTree::Add(SubTexture *st)
{
    if(st == NULL) return false;

    // Set the root if not already set.
    if(mRoot == NULL)
    {
        return AddRoot(st);
    }

    // Step through the tree to find the next available slot.  Use
    // non-recursive search.
    BSPNode *current = mRoot;
    Direction direction(FROM_PARENT);
    while(current != mRoot || direction != FROM_CHILD)
    {

        // First try to make the current a sibling.
        if(direction == FROM_PARENT)
        {
            // Go through list to last sibling
            while(current->mYoungerSibling != NULL)
            {
                current = current->mYoungerSibling;
            } 

            direction = FROM_OLDER_SIBLING;
        }

        // Do in-node things here.
        if(direction == FROM_OLDER_SIBLING && current->mYoungerSibling == NULL)
        {
            bool success = AddSubTexture(current, st);
            if(success)
            {
                return true;
            }
                
            direction = FROM_YOUNGER_SIBLING;
        }
        
        if(direction == FROM_YOUNGER_SIBLING || direction == FROM_CHILD)
        {
            if(direction == FROM_YOUNGER_SIBLING && current->mChild != NULL)
            {
                direction = FROM_PARENT;
                current = current->mChild;
            }
            else if(current->mOlderSibling != NULL)
            {
                direction = FROM_YOUNGER_SIBLING;
                current = current->mOlderSibling;
            }
            else
            {
                direction = FROM_CHILD;
                current = current->mParent;
            }
        }
    }
    return false;
}

void BSPTree::PackTexture(tlTexture *texture)
{
    tlImage *image      = texture->GetImage(0);
    if(image == NULL)
    {
        return;
    }

    tlImage borderedImage(*image);

    int originalX = image->GetWidth();
    int originalY = image->GetHeight();

    borderedImage.Resize( originalX + 2, originalY + 2);
    
    // Copy inner region.
    borderedImage.CopyRegion(image,
                             0, 0,
                             originalX, originalY,
                             1, 1);
    // Add horizontal boundaries.
    borderedImage.CopyRegion(image,
                             0, 0,
                             originalX, 1,
                             1, originalY+1);
    borderedImage.CopyRegion(image,
                             0, originalY-1,
                             originalX, 1,
                             1, 0);

    // Add vertical boundaries.
    borderedImage.CopyRegion(&borderedImage,
                             1, 0,
                             1, originalY+2,
                             originalX+1, 0);
    borderedImage.CopyRegion(&borderedImage,
                             originalX, 0,
                             1, originalY+2,
                             0, 0);                              

    // HBW TODO: Use a more effecient method.
    // Create a transposed image of this one to copy from any transposed subTextures.
    tlImage tBorderedImage(borderedImage);
    int maxSide = rmt::Max(borderedImage.GetWidth(), borderedImage.GetHeight());
    tBorderedImage.Resize(maxSide, maxSide);
    tBorderedImage.Flip();
    tBorderedImage.FlipX();
    tBorderedImage.FlipY();

    image->Resize(mSize.x, mSize.y);
    texture->SetSize(mSize.x, mSize.y);
    image->Fill(tlColour(1.0f, 0.0f, 1.0f));  // Mark unused pixels as bright pink.
    int i;
    for(i = mNodeList.Count() - 1; i >= 0; i--)
    {
        BSPNode *node = mNodeList[i];

        IntPair sourcePosition(node->mSubTexture->GetLow().x + 1, node->mSubTexture->GetLow().y + 1);
        IntPair sourceSize(node->mSubTexture->GetWidth(), node->mSubTexture->GetHeight());
        IntPair destinationPosition(node->mPosition);
        
        if(node->mSubTexture->IsTransposed())
        {
            rmt::Swap(sourcePosition.x, sourcePosition.y);
            image->CopyRegion(&tBorderedImage,
                              sourcePosition.x, sourcePosition.y,
                              sourceSize.x, sourceSize.y,
                              destinationPosition.x, destinationPosition.y);
        }
        else
        {
            image->CopyRegion(&borderedImage,
                              sourcePosition.x, sourcePosition.y,
                              sourceSize.x, sourceSize.y,
                              destinationPosition.x, destinationPosition.y);
        }
        
        // Now update UVs
        node->mSubTexture->MoveTo(destinationPosition, IntPair(originalX, originalY));
    }
}

bool BSPTree::AddRoot(SubTexture *st)
{
    mRoot = new BSPNode();
    mRoot->mFreeSpace.x = mSize.x;
    mRoot->mFreeSpace.y = mSize.y;
    mRoot->mPosition.x = 0;
    mRoot->mPosition.y = 0;
    
    mRoot->mParent = mRoot;

    bool success = AddSubTexture(mRoot, st);
    if(!success)
    {
        delete mRoot;
        mRoot = NULL;
    }

    return success;
}

bool BSPTree::AddSubTexture(BSPNode *node, SubTexture *st)
{
    int dx = node->mFreeSpace.x - st->GetWidth();
    int dy = node->mFreeSpace.y - st->GetHeight();
    
    // If the space is big enough, add the sub-texture here and tie up
    // loose ends.
    if(dx < 0 || dy < 0)
    {
        return false;
    }

    node->mSubTexture = st;
    
    // Create sibling if space allows (in x direction).
    if(dx > 0)
    {
        node->mYoungerSibling = new BSPNode();
        node->mYoungerSibling->mFreeSpace.x = dx;
        node->mYoungerSibling->mFreeSpace.y = st->GetHeight();
        node->mYoungerSibling->mPosition.x = node->mPosition.x + st->GetWidth();
        node->mYoungerSibling->mPosition.y = node->mPosition.y;
        node->mYoungerSibling->mOlderSibling = node;
        node->mYoungerSibling->mParent = node->mParent;
    }
    
    // Create child there is extra space (in y direction).
    if(dy > 0)
    {
        node->mChild = new BSPNode();
        node->mChild->mFreeSpace.x = node->mFreeSpace.x;
        node->mChild->mFreeSpace.y = dy;
        node->mChild->mPosition.x = node->mPosition.x;
        node->mChild->mPosition.y = node->mPosition.y + st->GetHeight();
        node->mChild->mParent = node;
    }

    // Update this node's available space.
    node->mFreeSpace.x = 0;
    node->mFreeSpace.y = 0;

    mNodeList.Append(node);

    return true;
}

// Delete the tree entries using the generated list.  Avoids tree recursion.
void BSPTree::DeleteTree()
{
    int nodeIndex;
    for(nodeIndex = mNodeList.Count() - 1; nodeIndex >= 0; nodeIndex--)
    {
        BSPNode *node = mNodeList[nodeIndex];

        // Delete any unused nodes connected to this one (these are not in table).
        if(node->mYoungerSibling != NULL &&
           (node->mYoungerSibling->mFreeSpace.x + node->mYoungerSibling->mFreeSpace.y > 0) )
        {
            delete node->mYoungerSibling;
            node->mYoungerSibling = NULL;
        }
        if(node->mChild != NULL &&
           (node->mChild->mFreeSpace.x == 0 && node->mChild->mFreeSpace.y == 0) )
        {
            delete node->mChild;
            node->mChild = NULL;
        }
        if(node->mOlderSibling != NULL)
        {
            node->mOlderSibling->mYoungerSibling = NULL;
        }
        else if(node->mParent != NULL)
        {
            node->mParent->mChild = NULL;
        }        
           
        delete node; // Delete this node.
        node = NULL;
    }
    mNodeList.Delete(0, mNodeList.Count()); // Delete all table entries.

    mRoot = NULL;
}
