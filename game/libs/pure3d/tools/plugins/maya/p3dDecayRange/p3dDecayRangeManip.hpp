//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <maya/MPxManipContainer.h>
#include <maya/MDagPath.h>
#include <maya/MPoint.h>
#include <maya/MColor.h>
#include <maya/MMatrix.h>

class p3dDecayRangeManip : public MPxManipContainer
{
public:
    p3dDecayRangeManip();
    virtual ~p3dDecayRangeManip();
    
    static void*                creator();
    static MStatus              initialize();
    virtual MStatus             createChildren();
    virtual MStatus             connectToDependNode(const MObject &node);

    virtual void                draw( M3dView &view, 
                                      const MDagPath &path, 
                                      M3dView::DisplayStyle style, 
                                      M3dView::DisplayStatus status);

    void                        GetNormalX( M3dView& view, MVector& normalX );
    void                        GetNormalY( M3dView& view, MVector& normalY );
    void                        GetNormalZ( M3dView& view, MVector& normalZ );

//    MDagPath                    mInnerSphere;
//    MDagPath                    mOuterSphere;

    MDagPath                    mInnerManipX;
    MDagPath                    mInnerManipY;
    MDagPath                    mInnerManipZ;

    MDagPath                    mOuterManipX;
    MDagPath                    mOuterManipY;
    MDagPath                    mOuterManipZ;

    MDagPath                    mRotateYManip;

public:
    static MTypeId id;

protected:
    bool                        CalculateScaleFactor( M3dView& view );
    void                        CalculateMatrix( void );
    void                        AlignManipulators( M3dView& view );

private:
    double                      mUiScaleFactor;
    short                       mDecayMode;
    MPoint                      mStartPoint;
    MColor                      mLightColour;
    MDagPath                    mConnectedTo;
    MMatrix                     mRotateMatrix;
};

