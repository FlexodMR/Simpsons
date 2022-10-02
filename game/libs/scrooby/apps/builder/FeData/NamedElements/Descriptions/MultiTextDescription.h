//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiTextDescription class which represents a 
//              MultiTextDescription.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MULTITEXTDESCRIPTION_H
#define __MULTITEXTDESCRIPTION_H

//===========================================================================
// Nested Includes
//===========================================================================

#include "BoxDrawingElementDescription.h"
#include "..\..\Helpers\ElementList.h"
#include "..\..\Helpers\EnumConversion.h"

#include "Strings\PCString.h"


//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_MultiTextDescriptionHeader = "<MultiText>";
const char* const g_MultiTextDescriptionFooter = "</MultiText>";
    
namespace FeData
{
    struct TextDescription
    {
        TextTypeEnum  m_TextType;
        PascalCString m_TextBibleName;
        PascalCString m_TextBibleFileName;
        PascalCString m_TextBibleStringName;
        PascalCString m_HardCodedString;
    };
}

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end multi Text.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class MultiTextDescription : public BoxDrawingElementDescription
    {
        public:
            MultiTextDescription();
            virtual ~MultiTextDescription();
            
            virtual bool AddToTokenList( TokenList& tokenList );
            virtual bool SetFromTokenList( TokenList& tokenList );

            virtual DrawingElement* CreateHierarchyElement( Page* page );

            bool AddTextDescription( TextTypeEnum  textType,
                                     PascalCString& textBibleName,
                                     PascalCString& textBibleFileName,
                                     PascalCString& textBibleStringName,
                                     PascalCString& hardCodedString );

            int GetCurrentText();
            void SetCurrentText( int index );

            int GetNumberOfTexts();
            bool GetTextDescription( int index, 
                                     TextTypeEnum&  textType,
                                     PascalCString& textBibleName,
                                     PascalCString& textBibleFileName,
                                     PascalCString& textBibleStringName,
                                     PascalCString& hardCodedString );

            bool SetTextStyleDescription( PascalCString& textStyleName,
                                          PascalCString& textStyleFileName );
            bool GetTextStyleDescription( PascalCString& textStyleName,
                                          PascalCString& textStyleFileName );

        protected:

        private:
            // Create this methods as private so they can not be used
            MultiTextDescription(const MultiTextDescription &right);
            const MultiTextDescription & operator = (const MultiTextDescription &right);

            // Data members
            ElementList< TextDescription > m_TextList;
            int m_CurrentText;

            PascalCString m_TextStyleName;
            PascalCString m_TextStyleFileName;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

