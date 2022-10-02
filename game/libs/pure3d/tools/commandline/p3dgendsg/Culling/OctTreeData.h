#ifndef __OCT_TREE_DATA_H__
#define __OCT_TREE_DATA_H__

//
// This is a Data Declaration file.
//
// Containing:
//    -Includes for the Data relevant to the persistence of the 
//     OctTree as a whole
//    -NOT the data relevant to the persistence of the components 
//       which make up an OctTree.
//    -NOR the data solely salient to the individual processes that
//       might be run on the OctTree.
//    (ie, it's expected that only one OctTreeData instance exist )
//    (for every OctTree, which is managed by an OctTreeManager   )
//    (and consists of a series of linked OctTreeNode's           ) 
//
// Useful to:
//    -OctTreeNode
//    -OctTreeManager
//

#include "OctTreeConst.h"
#include "OctTreeParams.h"
#include "CoordSubList.h"



#endif