//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "p3dDecayRangeGL.hpp"

#include <maya/MMatrix.h>
#include <maya/MQuaternion.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnTransform.h>
#include <maya/MFnLight.h>
#include <maya/MPlug.h>
#include <maya/MPlugArray.h>

#include <gl/gl.h>
#include <math.h>

#include <bewert_debug.h>

bool getAttachedLight( const MDagPath& dag, MPoint& position, MColor& lightColor )
{
    bool                        bIsConnected = false;

    MDagPath                    shape( dag );
    shape.extendToShape();

    MStatus                     status = MS::kSuccess;

    MFnDependencyNode           fnDependNode( shape.node() );
    MPlug matrixPlug = fnDependNode.findPlug( "inWorldMatrix", &status );
    if ( status == MS::kSuccess )
    {
        MPlugArray              cc;
        if ( matrixPlug.connectedTo( cc, true /* asDst */, false, &status ) )
        {
            if ( cc[0].node().hasFn( MFn::kLight ) )
            {
                bIsConnected = true;

                MDagPath        lightDag;
                lightDag = MDagPath::getAPathTo( cc[0].node() );
                lightDag.pop();
                MFnTransform    fnTransform( lightDag );
                position = fnTransform.translation( MSpace::kWorld );

                // Get colour of light
                MFnLight        fnLight( cc[0].node() );
                lightColor = fnLight.color() * fnLight.intensity();
            }
        }
    }
    else CDEBUG << "No '.inWorldMatrix.'" << endl;

    return bIsConnected;
}

void drawCube( const MPoint& position, const MVector& bounds, const  MColor& colour, bool bCull, const MVector& view, const MMatrix& matrix )
{
    glColor4d( colour.r, colour.g, colour.b, colour.a );

    MVector rotView = view * matrix.inverse();

    glTranslated( position.x, position.y, position.z );

    glMatrixMode( GL_MODELVIEW );
    glPushMatrix();
    glMultMatrixd( (GLdouble*) matrix.matrix );

    if ( !bCull || ( ( rotView * MVector::zAxis ) < 0.0 ) )
    {
        glBegin( GL_LINE_LOOP );

            glVertex3d(  bounds.x,  bounds.y,  bounds.z );
            glVertex3d( -bounds.x,  bounds.y,  bounds.z );
            glVertex3d( -bounds.x, -bounds.y,  bounds.z );
            glVertex3d(  bounds.x, -bounds.y,  bounds.z );

        glEnd();
    }
    if ( !bCull || ( ( rotView * MVector::zNegAxis ) < 0.0 ) )
    {
        glBegin( GL_LINE_LOOP );

            glVertex3d(  bounds.x,  bounds.y,  -bounds.z );
            glVertex3d( -bounds.x,  bounds.y, -bounds.z );
            glVertex3d( -bounds.x, -bounds.y, -bounds.z );
            glVertex3d(  bounds.x, -bounds.y, -bounds.z );

        glEnd();
    }
    if ( !bCull || ( ( rotView * MVector::yAxis ) < 0.0 ) )
    {
        glBegin( GL_LINE_LOOP );

            glVertex3d(  bounds.x,  bounds.y,  bounds.z );
            glVertex3d( -bounds.x,  bounds.y,  bounds.z );
            glVertex3d( -bounds.x,  bounds.y, -bounds.z );
            glVertex3d(  bounds.x,  bounds.y, -bounds.z );

        glEnd();
    }
    if ( !bCull || ( ( rotView * MVector::yNegAxis ) < 0.0 ) )
    {
        glBegin( GL_LINE_LOOP );

            glVertex3d(  bounds.x, -bounds.y,  bounds.z );
            glVertex3d( -bounds.x, -bounds.y,  bounds.z );
            glVertex3d( -bounds.x, -bounds.y, -bounds.z );
            glVertex3d(  bounds.x, -bounds.y, -bounds.z );

        glEnd();
    }
    if ( !bCull || ( ( rotView * MVector::xAxis ) < 0.0 ) )
    {
        glBegin( GL_LINE_LOOP );

            glVertex3d(  bounds.x,  bounds.y,  bounds.z );
            glVertex3d(  bounds.x, -bounds.y,  bounds.z );
            glVertex3d(  bounds.x, -bounds.y, -bounds.z );
            glVertex3d(  bounds.x,  bounds.y, -bounds.z );

        glEnd();
    }
    if ( !bCull || ( ( rotView * MVector::xNegAxis ) < 0.0 ) )
    {
        glBegin( GL_LINE_LOOP );

            glVertex3d( -bounds.x,  bounds.y,  bounds.z );
            glVertex3d( -bounds.x, -bounds.y,  bounds.z );
            glVertex3d( -bounds.x, -bounds.y, -bounds.z );
            glVertex3d( -bounds.x,  bounds.y, -bounds.z );

        glEnd();    
    }

    glPopMatrix();

    glTranslated( -position.x, -position.y, -position.z );
}

void fillCube( const MPoint& position, const MVector& bounds, const  MColor& colour, bool bCull, const MVector& view, const MMatrix& matrix )
{
    glTranslated( position.x, position.y, position.z );

    MVector rotView = view * matrix.inverse();

    // Since the cube overdraws itself at least once (due to additive effect)
    // reduce the colour intensity so that final colour is similar to disc.
    MColor                      iColour( colour * 0.667f );
    iColour.a = colour.a;   // restore alpha

    glMatrixMode( GL_MODELVIEW );
    glPushMatrix();
    glMultMatrixd( (GLdouble*) matrix.matrix );

    glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );

    if ( !bCull || ( ( rotView * MVector::zAxis ) < 0.0 ) )
    {
        glBegin( GL_POLYGON );

            glVertex3d(  bounds.x,  bounds.y,  bounds.z );
            glVertex3d( -bounds.x,  bounds.y,  bounds.z );
            glVertex3d( -bounds.x, -bounds.y,  bounds.z );
            glVertex3d(  bounds.x, -bounds.y,  bounds.z );

        glEnd();
    }
    if ( !bCull || ( ( rotView * MVector::zNegAxis ) < 0.0 ) )
    {
        glBegin( GL_POLYGON );

            glVertex3d(  bounds.x,  bounds.y,  -bounds.z );
            glVertex3d( -bounds.x,  bounds.y, -bounds.z );
            glVertex3d( -bounds.x, -bounds.y, -bounds.z );
            glVertex3d(  bounds.x, -bounds.y, -bounds.z );

        glEnd();
    }
    if ( !bCull || ( ( rotView * MVector::yAxis ) < 0.0 ) )
    {
        glBegin( GL_POLYGON );

            glVertex3d(  bounds.x,  bounds.y,  bounds.z );
            glVertex3d( -bounds.x,  bounds.y,  bounds.z );
            glVertex3d( -bounds.x,  bounds.y, -bounds.z );
            glVertex3d(  bounds.x,  bounds.y, -bounds.z );

        glEnd();
    }
    if ( !bCull || ( ( rotView * MVector::yNegAxis ) < 0.0 ) )
    {
        glBegin( GL_POLYGON );

            glVertex3d(  bounds.x, -bounds.y,  bounds.z );
            glVertex3d( -bounds.x, -bounds.y,  bounds.z );
            glVertex3d( -bounds.x, -bounds.y, -bounds.z );
            glVertex3d(  bounds.x, -bounds.y, -bounds.z );

        glEnd();
    }
    if ( !bCull || ( ( rotView * MVector::xAxis ) < 0.0 ) )
    {
        glBegin( GL_POLYGON );

            glVertex3d(  bounds.x,  bounds.y,  bounds.z );
            glVertex3d(  bounds.x, -bounds.y,  bounds.z );
            glVertex3d(  bounds.x, -bounds.y, -bounds.z );
            glVertex3d(  bounds.x,  bounds.y, -bounds.z );

        glEnd();
    }
    if ( !bCull || ( ( rotView * MVector::xNegAxis ) < 0.0 ) )
    {
        glBegin( GL_POLYGON );

            glVertex3d( -bounds.x,  bounds.y,  bounds.z );
            glVertex3d( -bounds.x, -bounds.y,  bounds.z );
            glVertex3d( -bounds.x, -bounds.y, -bounds.z );
            glVertex3d( -bounds.x,  bounds.y, -bounds.z );

        glEnd();    
    }

    glPopMatrix();

    glTranslated( -position.x, -position.y, -position.z );
}

void fillCube( const MPoint& position, const MVector& innerBounds, const MVector& outerBounds, const MColor& innerColour, const MColor& outerColour, bool bCull, const MVector& view, const MMatrix& matrix )
{
    glTranslated( position.x, position.y, position.z );

    double dot;

    MVector     line;

    MVector rotView = view * matrix.inverse();

    // normalView is used to obtain the dot product for the view normal.
    // The dot is used to fade out each segment as it rotates away from the camera.
    MVector normalView = rotView.normal();

    // We need the normals for each side of the cube
    MVector normalX, normalY, normalZ;

    normalX.x = matrix[0][0];
    normalX.y = matrix[0][1];
    normalX.z = matrix[0][2];

    normalY.x = matrix[1][0];
    normalY.y = matrix[1][1];
    normalY.z = matrix[1][2];

    normalZ.x = matrix[2][0];
    normalZ.y = matrix[2][1];
    normalZ.z = matrix[2][2];

    MColor                      iColour;
    MColor                      oColour;

    glMatrixMode( GL_MODELVIEW );
    glPushMatrix();
    glMultMatrixd( (GLdouble*) matrix.matrix );

    dot = ( normalView * MVector::zAxis );
    if ( !bCull || ( ( view * normalZ ) < 0.0 ) )
    {
        iColour = innerColour * -(static_cast<float>(dot));
        oColour = outerColour * -(static_cast<float>(dot));

        glBegin( GL_QUADS );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x,  outerBounds.y,  outerBounds.z );
            glVertex3d(  outerBounds.x, -outerBounds.y,  outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d(  innerBounds.x, -innerBounds.y,  innerBounds.z );
            glVertex3d(  innerBounds.x,  innerBounds.y,  innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x,  outerBounds.y,  outerBounds.z );
            glVertex3d( -outerBounds.x,  outerBounds.y,  outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x,  innerBounds.y,  innerBounds.z );
            glVertex3d(  innerBounds.x,  innerBounds.y,  innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d( -outerBounds.x,  outerBounds.y,  outerBounds.z );
            glVertex3d( -outerBounds.x, -outerBounds.y,  outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x, -innerBounds.y,  innerBounds.z );
            glVertex3d( -innerBounds.x,  innerBounds.y,  innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x, -outerBounds.y,  outerBounds.z );
            glVertex3d( -outerBounds.x, -outerBounds.y,  outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x, -innerBounds.y,  innerBounds.z );
            glVertex3d(  innerBounds.x, -innerBounds.y,  innerBounds.z );

        glEnd();
    }

    dot = ( normalView * MVector::zNegAxis );
    if ( !bCull || ( ( view * -normalZ ) < 0.0 ) )
    {
        iColour = innerColour * -(static_cast<float>(dot));
        oColour = outerColour * -(static_cast<float>(dot));

        glBegin( GL_QUADS );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x,  outerBounds.y, -outerBounds.z );
            glVertex3d(  outerBounds.x, -outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d(  innerBounds.x, -innerBounds.y, -innerBounds.z );
            glVertex3d(  innerBounds.x,  innerBounds.y, -innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x,  outerBounds.y, -outerBounds.z );
            glVertex3d( -outerBounds.x,  outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x,  innerBounds.y, -innerBounds.z );
            glVertex3d(  innerBounds.x,  innerBounds.y, -innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d( -outerBounds.x,  outerBounds.y, -outerBounds.z );
            glVertex3d( -outerBounds.x, -outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x, -innerBounds.y, -innerBounds.z );
            glVertex3d( -innerBounds.x,  innerBounds.y, -innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x, -outerBounds.y, -outerBounds.z );
            glVertex3d( -outerBounds.x, -outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x, -innerBounds.y, -innerBounds.z );
            glVertex3d(  innerBounds.x, -innerBounds.y, -innerBounds.z );

        glEnd();
    }

    dot = ( normalView * MVector::yAxis );
    if ( !bCull || ( ( view * normalY ) < 0.0 ) )
    {
        iColour = innerColour * -(static_cast<float>(dot));
        oColour = outerColour * -(static_cast<float>(dot));

        glBegin( GL_QUADS );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x,  outerBounds.y,  outerBounds.z );
            glVertex3d(  outerBounds.x,  outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d(  innerBounds.x,  innerBounds.y, -innerBounds.z );
            glVertex3d(  innerBounds.x,  innerBounds.y,  innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d( -outerBounds.x,  outerBounds.y,  outerBounds.z );
            glVertex3d( -outerBounds.x,  outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x,  innerBounds.y, -innerBounds.z );
            glVertex3d( -innerBounds.x,  innerBounds.y,  innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x,  outerBounds.y, -outerBounds.z );
            glVertex3d( -outerBounds.x,  outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x,  innerBounds.y, -innerBounds.z );
            glVertex3d(  innerBounds.x,  innerBounds.y, -innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x,  outerBounds.y,  outerBounds.z );
            glVertex3d( -outerBounds.x,  outerBounds.y,  outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x,  innerBounds.y,  innerBounds.z );
            glVertex3d(  innerBounds.x,  innerBounds.y,  innerBounds.z );

        glEnd();
    }

    dot = ( normalView * MVector::yNegAxis );
    if ( !bCull || ( ( view * -normalY ) < 0.0 ) )
    {
        iColour = innerColour * -(static_cast<float>(dot));
        oColour = outerColour * -(static_cast<float>(dot));

        glBegin( GL_QUADS );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x, -outerBounds.y,  outerBounds.z );
            glVertex3d(  outerBounds.x, -outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d(  innerBounds.x, -innerBounds.y, -innerBounds.z );
            glVertex3d(  innerBounds.x, -innerBounds.y,  innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d( -outerBounds.x, -outerBounds.y,  outerBounds.z );
            glVertex3d( -outerBounds.x, -outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x, -innerBounds.y, -innerBounds.z );
            glVertex3d( -innerBounds.x, -innerBounds.y,  innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x, -outerBounds.y, -outerBounds.z );
            glVertex3d( -outerBounds.x, -outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x, -innerBounds.y, -innerBounds.z );
            glVertex3d(  innerBounds.x, -innerBounds.y, -innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x, -outerBounds.y,  outerBounds.z );
            glVertex3d( -outerBounds.x, -outerBounds.y,  outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x, -innerBounds.y,  innerBounds.z );
            glVertex3d(  innerBounds.x, -innerBounds.y,  innerBounds.z );

        glEnd();
    }

    dot = ( normalView * MVector::xAxis );
    if ( !bCull || ( ( view * normalX ) < 0.0 ) )
    {
        iColour = innerColour * -(static_cast<float>(dot));
        oColour = outerColour * -(static_cast<float>(dot));

        glBegin( GL_QUADS );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x, -outerBounds.y,  outerBounds.z );
            glVertex3d(  outerBounds.x, -outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d(  innerBounds.x, -innerBounds.y, -innerBounds.z );
            glVertex3d(  innerBounds.x, -innerBounds.y,  innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x,  outerBounds.y,  outerBounds.z );
            glVertex3d(  outerBounds.x,  outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d(  innerBounds.x,  innerBounds.y, -innerBounds.z );
            glVertex3d(  innerBounds.x,  innerBounds.y,  innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x,  outerBounds.y, -outerBounds.z );
            glVertex3d(  outerBounds.x, -outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d(  innerBounds.x, -innerBounds.y, -innerBounds.z );
            glVertex3d(  innerBounds.x,  innerBounds.y, -innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d(  outerBounds.x,  outerBounds.y,  outerBounds.z );
            glVertex3d(  outerBounds.x, -outerBounds.y,  outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d(  innerBounds.x, -innerBounds.y,  innerBounds.z );
            glVertex3d(  innerBounds.x,  innerBounds.y,  innerBounds.z );

        glEnd();
    }

    dot = ( normalView * MVector::xNegAxis );
    if ( !bCull || ( ( view * -normalX ) < 0.0 ) )
    {
        iColour = innerColour * -(static_cast<float>(dot));
        oColour = outerColour * -(static_cast<float>(dot));

        glBegin( GL_QUADS );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d( -outerBounds.x, -outerBounds.y,  outerBounds.z );
            glVertex3d( -outerBounds.x, -outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x, -innerBounds.y, -innerBounds.z );
            glVertex3d( -innerBounds.x, -innerBounds.y,  innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d( -outerBounds.x,  outerBounds.y,  outerBounds.z );
            glVertex3d( -outerBounds.x,  outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x,  innerBounds.y, -innerBounds.z );
            glVertex3d( -innerBounds.x,  innerBounds.y,  innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d( -outerBounds.x,  outerBounds.y, -outerBounds.z );
            glVertex3d( -outerBounds.x, -outerBounds.y, -outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x, -innerBounds.y, -innerBounds.z );
            glVertex3d( -innerBounds.x,  innerBounds.y, -innerBounds.z );

            glColor4d( oColour.r, oColour.g, oColour.b, oColour.a );
            glVertex3d( -outerBounds.x,  outerBounds.y,  outerBounds.z );
            glVertex3d( -outerBounds.x, -outerBounds.y,  outerBounds.z );
            glColor4d( iColour.r, iColour.g, iColour.b, iColour.a );
            glVertex3d( -innerBounds.x, -innerBounds.y,  innerBounds.z );
            glVertex3d( -innerBounds.x,  innerBounds.y,  innerBounds.z );

        glEnd();
    }

    glPopMatrix();

    glTranslated( -position.x, -position.y, -position.z );
}

void drawDisc( double radius, const MPoint& position, const MVector& normal, size_t res, const MColor& colour )
{
    glColor4d( colour.r, colour.g, colour.b, colour.a );

    glTranslated( position.x, position.y, position.z );

    // Calculate transformation matrix
    MMatrix                     tMatrix;    // initializes to identity
    double                      x, y;

    MVector     trulyNormal( normal.normal() );

    if ( !trulyNormal.isEquivalent( MVector::zAxis, 0.001 ) )
    {
        MQuaternion             quat( MVector::zNegAxis, trulyNormal );
        tMatrix = quat.asMatrix();
    }

    glBegin( GL_LINE_LOOP );

    int v = res;
    while ( v-- )
    {
        double ratio = v / static_cast<double>(res);

        x = cos( kTwoPi * ratio );
        y = sin( kTwoPi * ratio );

        MVector disc( x, y, 0.0 );
        disc *= tMatrix;
        disc *= radius;

        glVertex3d( disc.x, disc.y, disc.z );
    }

    glEnd();

    glTranslated( -position.x, -position.y, -position.z );
}

void fillDisc( double radius, const MPoint& position, const MVector& normal, size_t res, const MColor& colour )
{
    glColor4d( colour.r, colour.g, colour.b, colour.a );

    glTranslated( position.x, position.y, position.z );

    // Calculate transformation matrix
    MMatrix                     tMatrix;    // initializes to identity
    double                      x, y;

    MVector     trulyNormal( normal.normal() );

    if ( !trulyNormal.isEquivalent( MVector::zAxis, 0.001 ) )
    {
        MQuaternion             quat( MVector::zNegAxis, trulyNormal );
        tMatrix = quat.asMatrix();
    }

    glBegin( GL_POLYGON );

    int v = res;
    while ( v-- )
    {
        double ratio = v / static_cast<double>(res);

        x = cos( kTwoPi * ratio );
        y = sin( kTwoPi * ratio );

        MVector disc( x, y, 0.0 );
        disc *= tMatrix;
        disc *= radius;

        glVertex3d( disc.x, disc.y, disc.z );
    }

    glEnd();

    glTranslated( -position.x, -position.y, -position.z );
}

void fillDisc( double innerRadius, double outerRadius, const MPoint& position, const MVector& normal, size_t res, const MColor& innerColour, const MColor& outerColour )
{
    glTranslated( position.x, position.y, position.z );

    // Calculate transformation matrix
    MMatrix                     tMatrix;    // initializes to identity
    double                      x0, y0, x1, y1;

    MVector     trulyNormal( normal.normal() );

    if ( !trulyNormal.isEquivalent( MVector::zAxis, 0.001 ) )
    {
        MQuaternion             quat( MVector::zNegAxis, trulyNormal );
        tMatrix = quat.asMatrix();
    }

    glBegin( GL_TRIANGLES );

    int v = res;
    while ( v-- )
    {
        double ratio1 = (v+1) / static_cast<double>(res);
        double ratio0 = v     / static_cast<double>(res);

        x0 = cos( kTwoPi * ratio0 );
        y0 = sin( kTwoPi * ratio0 );
        x1 = cos( kTwoPi * ratio1 );
        y1 = sin( kTwoPi * ratio1 );

        MVector disc0( x0, y0, 0.0 );
        MVector disc1( x1, y1, 0.0 );
        disc0 *= tMatrix;
        disc1 *= tMatrix;

        MVector inner0( disc0 * innerRadius );
        MVector inner1( disc1 * innerRadius );
        MVector outer0( disc0 * outerRadius );
        MVector outer1( disc1 * outerRadius );

        glColor4d( innerColour.r, innerColour.g, innerColour.b, innerColour.a );
        glVertex3d( inner0.x, inner0.y, inner0.z );
        glVertex3d( inner1.x, inner1.y, inner1.z );
        glColor4d( outerColour.r, outerColour.g, outerColour.b, outerColour.a );
        glVertex3d( outer1.x, outer1.y, outer1.z );

        glVertex3d( outer1.x, outer1.y, outer1.z );
        glVertex3d( outer0.x, outer0.y, outer0.z );
        glColor4d( innerColour.r, innerColour.g, innerColour.b, innerColour.a );
        glVertex3d( inner0.x, inner0.y, inner0.z );
    }

    glEnd();

    glTranslated( -position.x, -position.y, -position.z );
}

void fillCyl( double radius, double height, const MPoint& position, const MVector& normal, size_t res, const MColor& colour )
{
    glColor4d( colour.r, colour.g, colour.b, colour.a );

    glTranslated( position.x, position.y, position.z );

    // Calculate transformation matrix
    MMatrix                     tMatrix;    // initializes to identity
    double                      x0, y0, x1, y1;

    MVector     trulyNormal( normal.normal() );
    if ( !trulyNormal.isEquivalent( MVector::zAxis, 0.001 ) )
    {
        MQuaternion             quat( MVector::zAxis, trulyNormal );
        tMatrix = quat.asMatrix();
    }

    glBegin( GL_QUADS );

    int v = res;
    while ( v-- )
    {
        double ratio0 = v / static_cast<double>(res);
        double ratio1 = (v+1) / static_cast<double>(res);

        x0 = cos( kTwoPi * ratio0 ) * radius;
        y0 = sin( kTwoPi * ratio0 ) * radius;
        x1 = cos( kTwoPi * ratio1 ) * radius;
        y1 = sin( kTwoPi * ratio1 ) * radius;

        MVector xy0( x0, y0, 0.0 );
        MVector xyh0( x0, y0, height );
        MVector xy1( x1, y1, 0.0 );
        MVector xyh1( x1, y1, height );
        xy0 *= tMatrix;
        xyh0 *= tMatrix;
        xy1 *= tMatrix;
        xyh1 *= tMatrix;

        glVertex3d( xy0.x, xy0.y, xy0.z );
        glVertex3d( xyh0.x, xyh0.y, xyh0.z );
        glVertex3d( xyh1.x, xyh1.y, xyh1.z );
        glVertex3d( xy1.x, xy1.y, xy1.z );
    }

    glEnd();

    glTranslated( -position.x, -position.y, -position.z );

    fillDisc( radius, position, normal, res, colour );
    MPoint ph( position );
    ph += normal * height;
    fillDisc( radius, ph, normal, res, colour );
}

void fillCone( double radius, double height, const MPoint& position, const MVector& normal, size_t res, const MColor& colour )
{
    glColor4d( colour.r, colour.g, colour.b, colour.a );

    glTranslated( position.x, position.y, position.z );

    // Calculate transformation matrix
    MMatrix                     tMatrix;    // initializes to identity
    double                      x0, y0, x1, y1;

    MVector     trulyNormal( normal.normal() );
    if ( !trulyNormal.isEquivalent( MVector::zAxis, 0.001 ) )
    {
        MQuaternion             quat( MVector::zAxis, trulyNormal );
        tMatrix = quat.asMatrix();
    }

    glBegin( GL_TRIANGLES );

    int v = res;
    while ( v-- )
    {
        double ratio0 = v / static_cast<double>(res);
        double ratio1 = (v+1) / static_cast<double>(res);

        x0 = cos( kTwoPi * ratio0 ) * radius;
        y0 = sin( kTwoPi * ratio0 ) * radius;
        x1 = cos( kTwoPi * ratio1 ) * radius;
        y1 = sin( kTwoPi * ratio1 ) * radius;

        MVector xy0( x0, y0, -height );
        MVector xy1( x1, y1, -height );
        MVector h( 0.0, 0.0, 0.0 );
        xy0 *= tMatrix;
        xy1 *= tMatrix;
        h   *= tMatrix;

        glVertex3d( xy0.x, xy0.y, xy0.z );
        glVertex3d( xy1.x, xy1.y, xy1.z );
        glVertex3d( h.x, h.y, h.z );
    }

    glEnd();

    glTranslated( -position.x, -position.y, -position.z );

    MPoint ph( position );
    ph -= normal * height;
    fillDisc( radius, ph, normal, res, colour );
}

