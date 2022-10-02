//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles MultiText actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONMULTITEXT_H
#define __ACTIONMULTITEXT_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "ActionBoxDrawingElement.h"
#include "..\..\FeData\Helpers\EnumConversion.h"
#include "..\..\FeData\Helpers\TextList.h"

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
// Description: This handles MultiText actions.
//
// Constraints: None
//
//=============================================================================

class ActionMultiText : public ActionBoxDrawingElement  
{
    public:
        ActionMultiText( FeData::Page* page, 
                         FeData::DrawingElement* drawingElement,
                         FeData::PageElement* parent,
                         int elementIndex,
                         ActionDrawingElementEnum type );
        virtual ~ActionMultiText();

    protected:
        virtual void DoModify();
        virtual void UndoModify();

        virtual bool MakeNewDrawingElement( FeData::BaseFactory* objectFactory );

    private:
        // Create this methods as private so they can not be used
        ActionMultiText(const ActionMultiText &right);
        const ActionMultiText & operator = (const ActionMultiText &right);

        void GetOldMultiTextSettings();
        void GetNewSettingsFromDialog();

        void Change( PascalCString& textStyleName,
                     FeData::TextList& textList,
                     int selection,
                     bool ShadowEnabled,
                     int ShadowRed,
                     int ShadowGreen,
                     int ShadowBlue,
                     int ShadowAlpha,
                     int ShadowXOffset,
                     int ShadowYOffset );


        PascalCString m_OldTextStyleName;
        FeData::TextList m_OldTextList;
        int m_OldSelection;
        bool m_OldShadowEnabled;
        int m_OldShadowRed;
        int m_OldShadowGreen;
        int m_OldShadowBlue;
        int m_OldShadowAlpha;
        int m_OldXShadowOffset;
        int m_OldYShadowOffset;


        PascalCString m_NewTextStyleName;
        FeData::TextList m_NewTextList;
        int m_NewSelection;
        bool m_NewShadowEnabled;
        int m_NewShadowRed;
        int m_NewShadowGreen;
        int m_NewShadowBlue;
        int m_NewShadowAlpha;
        int m_NewXShadowOffset;
        int m_NewYShadowOffset;

        bool m_TextListChanged;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
