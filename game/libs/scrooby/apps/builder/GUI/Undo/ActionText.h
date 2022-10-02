//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles Text actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONTEXT_H
#define __ACTIONTEXT_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "ActionBoxDrawingElement.h"
#include "..\..\FeData\Helpers\EnumConversion.h"
#include "..\..\FeData\Helpers\Color.h"
//=============================================================================
// Forward References
//=============================================================================

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles Text actions.
//
// Constraints: None
//
//=============================================================================

class ActionText : public ActionBoxDrawingElement  
{
    public:
        ActionText( FeData::Page* page, 
                      FeData::DrawingElement* drawingElement,
                      FeData::PageElement* parent,
                      int elementIndex,
                      ActionDrawingElementEnum type );
        virtual ~ActionText();

    protected:
        virtual void DoModify();
        virtual void UndoModify();

        virtual bool MakeNewDrawingElement( FeData::BaseFactory* objectFactory );

    private:
        // Create this methods as private so they can not be used
        ActionText(const ActionText &right);
        const ActionText & operator = (const ActionText &right);

        void GetOldTextSettings();
        void GetNewSettingsFromDialog();

        void Change( FeData::TextTypeEnum textType,
                     PascalCString& hardCodedString,
                     PascalCString& textBibleName,
                     PascalCString& textBibleStringName,
                     PascalCString& textStyleName,
                     bool ShadowEnabled,
                     int ShadowRed,
                     int ShadowGreen,
                     int ShadowBlue,
                     int ShadowAlpha,
                     int ShadowXOffset,
                     int ShadowYOffset );


        FeData::TextTypeEnum m_OldTextType;
        PascalCString m_OldHardCodedString;
        PascalCString m_OldTextBibleName;
        PascalCString m_OldTextBibleStringName;
        PascalCString m_OldTextStyleName;
        bool m_OldShadowEnabled;
        int m_OldShadowRed;
        int m_OldShadowGreen;
        int m_OldShadowBlue;
        int m_OldShadowAlpha;
        int m_OldXShadowOffset;
        int m_OldYShadowOffset;

        FeData::TextTypeEnum m_NewTextType;
        PascalCString m_NewHardCodedString;
        PascalCString m_NewTextBibleName;
        PascalCString m_NewTextBibleStringName;
        PascalCString m_NewTextStyleName;
        bool m_NewShadowEnabled;
        int m_NewShadowRed;
        int m_NewShadowGreen;
        int m_NewShadowBlue;
        int m_NewShadowAlpha;
        int m_NewXShadowOffset;
        int m_NewYShadowOffset;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
