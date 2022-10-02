//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _WORLDSPACE_HPP_
#define _WORLDSPACE_HPP_

class tlTriMesh;
class tlScenegraph;
class tlInventory;

// why 15, who knows :-)
const int WORLDSPACE_MARK = 15;

// utility function to turn a scenegraph into a raw polygon soup
tlTriMesh* WorldspaceScenegraph(tlScenegraph* scene, tlInventory* meshInv);
void AddExemptNode(const char*);

#endif

