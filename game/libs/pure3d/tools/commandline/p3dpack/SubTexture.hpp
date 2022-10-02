//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlTable.hpp"

class tlPrimGroup;
class tlTexture;
class tlVertex;

class IntPair
{
  public:
    int x;
    int y;

    IntPair() : x(0), y(0) {/**/};
    IntPair(int xx, int yy) : x(xx), y(yy) {/**/};
    IntPair(const IntPair &ip) : x(ip.x), y(ip.y) {/**/};

    IntPair& operator=(const IntPair &ip);
};

// A wrapper around a prim group with additional info usefull to SubTexture.
class PrimNode
{
  public:
    PrimNode();
    virtual ~PrimNode();

    void SetPrim(tlPrimGroup *pg, const int triIdx, const int uvIdx, const tlTexture *texture);
    void SetNext(class PrimNode *pn);

    int GetWidth() const {return mHigh.x - mLow.x + 1;}
    int GetHeight() const {return mHigh.y - mLow.y + 1;}
    IntPair GetLow() const {return mLow;}
    IntPair GetHigh() const {return mHigh;}
    int GetUVIndex() const {return mUVIndex;}
    tlVertex* GetVertex(int vertexIndex) const;
    PrimNode* Next() const {return mNext;}

  protected:
    IntPair mLow;
    IntPair mHigh;
    unsigned mVertexIndex[3];
    int mUVIndex;

    PrimNode *mNext;
    tlPrimGroup *mPrimGroup;
};

// A fraction of the texture containing primgroups' UVs.
class SubTexture
{
  public:
    SubTexture(const tlTexture *texture);
    virtual ~SubTexture();

    IntPair GetLow() const {return mLow;}
    IntPair GetHigh() const {return mHigh;}
    int  GetWidth() const;
    int  GetHeight() const;

    // Use Overlaps() to determine if it should be added.
    bool Overlaps(const PrimNode &prim, float threshold = 1.0f) const; 
    void Add(PrimNode* prim); // Add the UVPrim to this and update boundaries.
    void MoveTo(const IntPair &newPosition, const IntPair &newSize); // Upate vertex UVs with new position.
    void Transpose(bool transpose);
    bool IsTransposed() const {return mTranspose;}
    void SetTexture(const tlTexture *texture) {mTexture = texture;}

  protected:
    IntPair mLow;
    IntPair mHigh;
    PrimNode *mHead;
    bool mTranspose; // subtexture rotated by 90 deg to fit in BSPTree.
    const tlTexture *mTexture; // Original full sized texture.
};

struct BSPNode
{
    BSPNode();
    BSPNode(SubTexture* subTexture);
    virtual ~BSPNode();

// Prob not here.    tlMatrix mMatrix; // Translational matrix to place area.
    BSPNode *mChild;
    BSPNode *mYoungerSibling;
    BSPNode *mOlderSibling;
    BSPNode *mParent;
    IntPair mFreeSpace; // Excess space available for use.
    IntPair mPosition;  // Position in the BSPTree.
    SubTexture *mSubTexture;
};

class BSPTree
{
  public:
    BSPTree();
    BSPTree(const IntPair &size);
    virtual ~BSPTree();

    void Resize(const IntPair &size);

    bool Add(SubTexture *area); // returns success of operation.
    void PackTexture(tlTexture *texture);
    
  protected:
    bool AddRoot(SubTexture *st);
    bool AddSubTexture(BSPNode *node, SubTexture *st);
    void DeleteTree();
    
    enum Direction{FROM_PARENT, FROM_OLDER_SIBLING, FROM_YOUNGER_SIBLING,
                   FROM_CHILD};

    IntPair mSize;
    BSPNode *mRoot;
    tlTable<BSPNode*> mNodeList; // For sequential traversal.
};

// The list of all subtextures of a single texture.
class SubTextureList
{
  public:
    SubTextureList(tlTexture *texture);
    virtual ~SubTextureList();

    void Add(tlPrimGroup *primGroup, int uvIdx);

    void Sort();
    bool Pack(int x, int y);
    void ApplyNewTexture();
    
    int Count() const {return mList.Count();}
    SubTexture* operator[](const int i) {assert(i<Count()); return mList[i];}
    const SubTexture* operator[](const int i) const {return mList[i];}
    int Area() const;

  protected:
    tlTable<SubTexture*> mList;
    tlTexture *mTexture;
public: 
    tlTexture *mPackedTexture; // HBW: Temporarily make public.
protected:

    BSPTree mBSPTree;
};

