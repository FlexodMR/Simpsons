/*===========================================================================
    File:: tlScenegraph.hpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLSCENEGRAPH_HPP
#define _TLSCENEGRAPH_HPP

#include "tlScenegraphChunk.hpp"
#include "tlDataChunk.hpp"
#include "tlEntity.hpp"
#include "tlTable.hpp"
#include "tlLoadManager.hpp"
#include <assert.h>

class tlDataChunk;
class tlInventory;

//*****************************************************************************
// tlScenegraphNode
//*****************************************************************************
class tlScenegraphNode
{
public:
    tlScenegraphNode();
    virtual ~tlScenegraphNode();

    void SetName(const char*);
    char* GetName(void) {return name;}

    tlScenegraphNode *Parent(void) { return parent; }
    void SetParent(tlScenegraphNode *newParent) { parent = newParent; }

    virtual tlScenegraphNode *Find(char *name);

    virtual tlDataChunk* Chunk16() = 0;

protected:
    char* name;
    tlScenegraphNode *parent;
};

//*****************************************************************************
// tlScenegraphBranch
//*****************************************************************************
class tlScenegraphBranch : public tlScenegraphNode
{
public:
    tlScenegraphBranch(void);
    virtual ~tlScenegraphBranch();

    virtual void SetChildCount(int n) { children.SetCount(n); }
    int          GetChildCount(void) { return children.Count(); }

    void SetChild(int n, tlScenegraphNode* node);
    tlScenegraphNode* GetChild(int n) { return children[n]; }

    void AppendChild(tlScenegraphNode* node);

    virtual tlScenegraphNode *Find(char *name);

    tlDataChunk* Chunk16();

protected:
    tlTable<tlScenegraphNode *> children;
};

//*****************************************************************************
// tlScenegraphTransform
//*****************************************************************************
class tlScenegraphTransform : public tlScenegraphBranch
{
public:
    tlScenegraphTransform(void) { transform.IdentityMatrix(); }

    const tlMatrix& GetTransform(void) { return transform;}
    void SetTransform(const tlMatrix& m) {transform = m;}

    void Scale(float s);

    tlDataChunk* Chunk16();

private:

    tlMatrix transform;
};

//*****************************************************************************
// tlScenegraphVisibility
//*****************************************************************************
class tlScenegraphVisibility : public tlScenegraphBranch
{
public:
    tlScenegraphVisibility(void) { isVisible = true; }

    bool IsVisible(void) { return isVisible;}
    void SetIsVisible(bool vis) {isVisible = vis;}

    tlDataChunk* Chunk16();

private:

    bool isVisible;
};

//*****************************************************************************
// tlScenegraphDrawable
//*****************************************************************************
class tlScenegraphDrawable : public tlScenegraphNode
{
public:
    tlScenegraphDrawable();
    virtual ~tlScenegraphDrawable();

    char* GetDrawable(void) { return objname;}
    void SetDrawable(const char*);

    void SetTranslucency(bool isTrans){isTranslucent = isTrans;}
    bool GetTranslucency(void){return(isTranslucent);}

    void SetSortOrder(float s) { sortOrder = s; }
    float GetSortOrder(float s) { return sortOrder; }
    tlDataChunk* Chunk16();

private:

    char* objname;
    bool isTranslucent;
    float sortOrder;
};

//*****************************************************************************
// tlScenegraphCamera
//*****************************************************************************
class tlScenegraphCamera : public tlScenegraphNode
{
public:
    tlScenegraphCamera();
    virtual ~tlScenegraphCamera();

    char* GetCamera(void) { return objname;}
    void SetCamera(const char*);

    tlDataChunk* Chunk16();

private:

    char* objname;
};

//*****************************************************************************
// tlScenegraphLightGroup
//*****************************************************************************
class tlScenegraphLightGroup : public tlScenegraphNode
{
public:
    tlScenegraphLightGroup();
    virtual ~tlScenegraphLightGroup();

    char* GetLightGroup(void) { return objname;}
    void SetLightGroup(const char*);

    tlDataChunk* Chunk16();

private:

    char* objname;
};

//*****************************************************************************
// tlScenegraphAttachment 
//*****************************************************************************
class tlScenegraphAttachment : public tlScenegraphBranch
{
public:
    tlScenegraphAttachment(void);
    virtual ~tlScenegraphAttachment();

    void  SetDrawablePoseName(const char *name);
    char *GetDrawablePoseName(void) { return poseName; }

    virtual void SetChildCount(int n) { children.SetCount(n); joints.SetCount(n); }

    void SetAttachment(int n, int j);
    int  GetAttachment(int n) {return joints[n];}

    tlDataChunk* Chunk16();

private:
    char* poseName;
    tlTable<int> joints;
    
};

//*****************************************************************************
// tlScenegraph 
//*****************************************************************************
class tlScenegraph : public tlEntity
{
public:

    tlScenegraph();
    tlScenegraph(tlDataChunk* ch);
    virtual ~tlScenegraph();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch)   { assert(0); }
    tlDataChunk* Chunk16()                  { assert(0); return NULL; }

    // accessors
    inline unsigned long    GetVersion() { return version; }
    void                    SetVersion(unsigned long);

    void              SetRoot(tlScenegraphNode *node) { root = node; }
    tlScenegraphNode* GetRoot(void) { return root; }

    bool AddNode(tlScenegraphNode *node, char *parent);
    bool AddNode(tlScenegraphNode *node, tlScenegraphBranch *parent);

    tlScenegraphNode *Find(char *nodename);

private:
    tlScenegraphNode* LoadNode(tlDataChunk* ch);
    unsigned long version;
    tlScenegraphNode* root;
};

//*****************************************************************************
// tlScenegraphLoader
//*****************************************************************************
class tlScenegraphLoader : public tlEntityLoader
{
public:
    tlScenegraphLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif

