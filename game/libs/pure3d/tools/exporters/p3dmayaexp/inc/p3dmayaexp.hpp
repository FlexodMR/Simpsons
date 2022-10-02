/*===========================================================================
    p3dmayaexp.hpp
    created: Jan 5, 2000
    Greg Mayer

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _P3DMAYAEXP_HPP
#define _P3DMAYAEXP_HPP

// maya includes
#include <maya/MFnDagNode.h>
#include <maya/MStatus.h>
#include <maya/MPxFileTranslator.h>
#include <maya/MString.h>

// toollib includes
#include "tlInventory.hpp"

// project includes
#include "materialgui.hpp"
#include "transformgui.hpp"
#include "exporteroptions.hpp"
#include "exportFunctions.hpp"
#include "p3dEventAnim.h"
#include "p3dEventKey.h"
#include "ExportLog.h"

template<class Type> 
void ChunkInventoryType(tlDataChunk *outchunk, tlInventory *inventory, bool show_output);

class p3dMayaExp: public MPxFileTranslator
{
public:
    p3dMayaExp();
    virtual ~p3dMayaExp();

    static void*                creator();

    // this method is only defined so that we can print out and return an error
    // if it is called this method is what the p3dMayaImp would override.
    MStatus                     reader( const MFileObject& file,
                                        const MString& optionsString,
                                        FileAccessMode mode );

    MStatus                     writer( const MFileObject& file,
                                        const MString& optionsString,
                                        FileAccessMode mode );
    bool                        haveReadMethod() const;
    bool                        haveWriteMethod() const;
    MString                     defaultExtension() const;
    MFileKind                   identifyFile(   const MFileObject& fileName,
                                                const char* buffer,
                                                short size) const;
    bool                        canBeOpened() const;

    // Sets up Maya Callbacks.
    materialGUI                 matGUI;
    transformGUI                transGUI;

protected:
    void                        ClearCache( void ) const;

private:
    CExportLog                  mExportLog;
};



#endif // _P3DMAYAEXP_HPP

