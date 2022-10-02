//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the BaseFactory class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __BASEFACTORY_H
#define __BASEFACTORY_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class Project;
    class Screen;
    class Page;
    class Layer;
    class Group;

    class Movie;
    class MultiSprite;
    class MultiText;
    class Polygon;
    class Pure3dObject;
    class Sprite;
    class Text;
    class Vertex;

    class Image;
    class MovieClip;
    class Pure3dFile;
    class TextBible;
    class TextStyle;

    class ImageFile;
    class MovieClipFile;
    class Pure3dFileFile;
    class TextBibleFile;
    class TextStyleFile;
    class PageFile;
    class ScreenFile;

    class FileName;
}


//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end multi sprite.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class BaseFactory
    {
        public:
            BaseFactory();
            virtual ~BaseFactory();

            //IAN IMPROVE: all these should be const - there are no data members in this class!
            virtual Project*        NewProject() const;
            virtual Screen*         NewScreen() const;
            virtual Page*           NewPage() const;
            virtual Layer*          NewLayer() const;

            virtual Group*          NewGroup() const;
            virtual MultiSprite*    NewMultiSprite() const = 0;
            virtual MultiText*      NewMultiText() const = 0;
            virtual Movie*          NewMovie() const = 0;
            virtual Polygon*        NewPolygon() const = 0;
            virtual Pure3dObject*   NewPure3dObject() const = 0;
            virtual Sprite*         NewSprite() const = 0;
            virtual Text*           NewText() const = 0;
            
            virtual Vertex*         NewVertex() const;

            virtual Image*          NewImage() const;
            virtual MovieClip*      NewMovieClip() const;
            virtual Pure3dFile*     NewPure3dFile() const;
            virtual TextBible*      NewTextBible() const;
            virtual TextStyle*      NewTextStyle() const;

            virtual ImageFile*      NewImageFile( FileName& fileName ) const;
            virtual MovieClipFile*  NewMovieClipFile( FileName& fileName ) const;
            virtual Pure3dFileFile* NewPure3dFileFile( FileName& fileName ) const;
            virtual TextBibleFile*  NewTextBibleFile( FileName& fileName ) const;
            virtual TextStyleFile*  NewTextStyleFile( FileName& fileName ) const;
            virtual PageFile*       NewPageFile( FileName& fileName ) const;
            virtual ScreenFile*     NewScreenFile( FileName& fileName ) const;

        protected:

        private:
            // Create this methods as private so they can not be used
            BaseFactory(const BaseFactory &right);
            const BaseFactory & operator = (const BaseFactory &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

