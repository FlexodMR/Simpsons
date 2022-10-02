//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder GUI
//
// Description: This contains the NameManager class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __NAMEMANAGER_H
#define __NAMEMANAGER_H

//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class Group;
    class Page;
    class PageElement;
    class Screen;
    class DrawingElement;
    class Resource;
}

class PascalCString;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

enum DrawingElementsEnum
{
    DRAWING_ELEMENT_GROUP,
    DRAWING_ELEMENT_POLYGON,
    DRAWING_ELEMENT_SPRITE,
    DRAWING_ELEMENT_MULTI_SPRITE,
    DRAWING_ELEMENT_TEXT,
    DRAWING_ELEMENT_MULTI_TEXT,
    DRAWING_ELEMENT_MOVIE,
    DRAWING_ELEMENT_PURE3DOBJECT,
    DRAWING_ELEMENT_INVALID
};

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end NameManager resource.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class NameManager
    {
        public:
            NameManager();
            virtual ~NameManager();

            DrawingElementsEnum GetDrawingElementsType( DrawingElement* drawingElement );

            bool GenerateUniqueLayerName( PascalCString& string, Page* page );
            bool GenerateUniqueGroupName( PascalCString& string, Page* page );
            bool GenerateUniqueSpriteName( PascalCString& string, Page* page );
            bool GenerateUniqueMultiSpriteName( PascalCString& string, Page* page );
            bool GenerateUniqueTextName( PascalCString& string, Page* page );
            bool GenerateUniqueMultiTextName( PascalCString& string, Page* page );
            bool GenerateUniquePolygonName( PascalCString& string, Page* page );
            bool GenerateUniqueMovieName( PascalCString& string, Page* page );
            bool GenerateUniquePure3dObjectName( PascalCString& string, Page* page );

            bool MakeSureImageNameIsUnique( PascalCString& string, Page* page );
            bool MakeSureMovieClipNameIsUnique( PascalCString& string, Page* page );
            bool MakeSurePure3dFileNameIsUnique( PascalCString& string, Page* page );
            bool MakeSureTextBibleNameIsUnique( PascalCString& string, Page* page );
            bool MakeSureTextStyleNameIsUnique( PascalCString& string, Page* page );

            bool GenerateUniqueDrawingElementCopyName( DrawingElement* elementToCopy,
                                                       PascalCString& string,
                                                       Page* page );
            bool IsLayerNameUnique( PascalCString& name, Page* page );
            bool IsPageElementNameUnique( PageElement* elementType, 
                                          PascalCString& name );
            bool IsPageNameUnique( PascalCString& name, Screen* screen );

            bool IsResourceNameUnique( Resource* resourceType, 
                                       PascalCString& name,
                                       Page* page );


            bool IsDrawingElementNameUniqueInPage( DrawingElementsEnum elementType, 
                                                   PascalCString& name, 
                                                   Page* page );
            
            bool IsDrawingElementNameUniqueInGroup( DrawingElementsEnum elementType, 
                                                    PascalCString& name, 
                                                    Group* group );
            
            bool IsNameValid( PascalCString& name );

        protected:

        private:
            // Create this methods as private so they can not be used
            NameManager(const NameManager &right);
            const NameManager & operator = (const NameManager &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

