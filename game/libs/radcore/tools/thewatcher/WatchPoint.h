//=============================================================================
//
// File:        WatchPoint.h
//
// Subsystem:   Radical Foundation Technologies Watcher Server
//
// Description:	This file contains class definitions for the watcher server
//				watch points. 
//
// Revisions:	Jan 22, 2000
//
// Usage:       
//
//=============================================================================

#ifndef WATCHPOINT_H
#define WATCHPOINT_H

//=============================================================================
// Include Files
//=============================================================================

#include "watchview.h"
#include "mainFrm.h"
#include "..\\..\\src\\radprotocols\\DebugWatchProtocol.hpp"

//=============================================================================
// Class Declarations
//=============================================================================

//
// This is the base class for all of our data types.
//
class CWatchPoint
{
    public:

    //
    // Constructor receives pointer to the view.
    //        
    CWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, WPDataType dataType );
    virtual ~CWatchPoint( void );

    //
    // Members to update the value of the watch point.
    //
    virtual void SetValue( WCValue* pValue, class CEditBar* pBar ) = 0;    
    
    //
    // Member to populate the edit bar with data.
    //
    virtual void UpdateEditBar( class CEditBar* pBar ) = 0;

    //
    // Member to update the preset
    //
    virtual void UpdatePreset(  class CEditBar* pBar ) { };

    //
    // Validates the preset. Only used if the preset is an edit control.
    //
    virtual void PresetValidate( class CEditBar* m_EditBar ){ };
    //  
    // Member to write the value.
    //
    virtual void WriteValue( CMainFrame* pFrame ) { };

    virtual bool IsReadOnly( ) = 0;

    //
    // Static used to find a value.
    //
    static CWatchPoint* Find( void* key );

    //
    // Static to delete all and save all
    //
    static void DeleteAll( void );
    static void SaveAll( class CEditBar* pBar );

    virtual void Save( class CEditBar* pBar ) { };    

    //
    // This static is used to request the value of all active watchpoints.
    //
    static unsigned int RequestValues( CMainFrame* pFrame );

    protected:

    //
    // Helper to do the work.
    //
    bool  RequestValue( CMainFrame* pFrame );

    //
    // Maintains the view.
    //
    CWatchView*     m_pView;

    //
    // Maintains the key ( address to watch ).
    //
    void*           m_Key;
    
    //
    // These contain the optional notification function address and
    // user data. Simply passed back to game when write occurs.
    //
    void            (*m_Callback)( void* );
    void*           m_UserData;

    
    //
    // Used to maintain list of watchppoints
    //
    CWatchPoint*    m_Next;
    
    //
    // Contains the treeitem this point is mapped to.
    //
    HTREEITEM       m_TreeItem;

    //
    // Maintains the name of this watchpoint.
    //
    char            m_Name[ WP_MAX_NAMELENGTH ];

    //
    // Static to maintain list of watch points. Needed to clean up
    // if game vanishes.
    //
    static  CWatchPoint*    m_Head;    

    //
    // Boolean indicating if value is valid.
    //
    bool            m_ValueIsValid;

    //
    // Boolean indicating if preset is valid.
    //
    bool            m_PresetIsValid;

    //
    // Needed to simpfy packet building.

    WPDataType      m_DataType;

};

//
// Classs for the varios types.
//
class CUIntWatchPoint : public CWatchPoint
{
    public:
    CUIntWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, unsigned int max, unsigned int min, bool readOnly );
    void SetValue( WCValue* pValue, class CEditBar* pBar );
    void UpdateEditBar( class CEditBar* pBar );
    void UpdatePreset( class CEditBar* pBar );
    void PresetValidate( class CEditBar* m_EditBar );
    void WriteValue( CMainFrame* pFrame );
    void Save( class CEditBar* pBar );
    bool IsReadOnly( );
    private:
    
    unsigned int    m_Max;
    unsigned int    m_Min;
    unsigned int    m_Value;
    unsigned int    m_Preset;
    bool            m_ReadOnly;
};
  
class CIntWatchPoint : public CWatchPoint
{
    public:
    CIntWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, int max, int min, bool readOnly );
    void SetValue( WCValue* pValue, class CEditBar* pBar );
    void UpdateEditBar( class CEditBar* pBar );
    void UpdatePreset( class CEditBar* pBar );
    void PresetValidate( class CEditBar* m_EditBar );
    void WriteValue( CMainFrame* pFrame );
    void Save( class CEditBar* pBar );
    bool IsReadOnly( );

    private:
    
    int             m_Max;
    int             m_Min;
    int             m_Value;
    int             m_Preset;
    bool            m_ReadOnly;
};

class CUShortWatchPoint : public CWatchPoint
{
    public:
    CUShortWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, unsigned short max, unsigned short min, bool readOnly );
    void SetValue( WCValue* pValue, class CEditBar* pBar );
    void UpdateEditBar( class CEditBar* pBar );
    void UpdatePreset( class CEditBar* pBar );
    void PresetValidate( class CEditBar* m_EditBar );
    void WriteValue( CMainFrame* pFrame );
    void Save( class CEditBar* pBar );
    bool IsReadOnly( );

    private:
    
    unsigned short  m_Max;
    unsigned short  m_Min;
    unsigned short  m_Value;
    unsigned short  m_Preset;
    bool            m_ReadOnly;

};

class CShortWatchPoint : public CWatchPoint
{
    public:
    CShortWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, short max, short min, bool readOnly );
    void SetValue( WCValue* pValue, class CEditBar* pBar );
    void UpdateEditBar( class CEditBar* pBar );
    void UpdatePreset( class CEditBar* pBar );
    void PresetValidate( class CEditBar* m_EditBar );
    void WriteValue( CMainFrame* pFrame );
    void Save( class CEditBar* pBar );
    bool IsReadOnly( );

    private:
    
    short           m_Max;
    short           m_Min;
    short           m_Value;
    short           m_Preset;
    bool            m_ReadOnly;
};

class CUCharWatchPoint : public CWatchPoint
{
    public:
    CUCharWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, unsigned char max, unsigned char min, bool readOnly );
    void SetValue( WCValue* pValue, class CEditBar* pBar );
    void UpdateEditBar( class CEditBar* pBar );
    void UpdatePreset( class CEditBar* pBar );
    void PresetValidate( class CEditBar* m_EditBar );
    void WriteValue( CMainFrame* pFrame );
    void Save( class CEditBar* pBar );
    bool IsReadOnly( );

    private:
    
    unsigned char   m_Max;
    unsigned char   m_Min;
    unsigned char   m_Value;
    unsigned char   m_Preset;
    bool            m_ReadOnly;
    
};

class CCharWatchPoint : public CWatchPoint
{
    public:
    CCharWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, char max, char min, bool readOnly );
    void SetValue( WCValue* pValue, class CEditBar* pBar );
    void UpdateEditBar( class CEditBar* pBar );
    void UpdatePreset( class CEditBar* pBar );
    void PresetValidate( class CEditBar* m_EditBar );
    void WriteValue( CMainFrame* pFrame );
    void Save( class CEditBar* pBar );
    bool IsReadOnly( );

    private:
    
    char            m_Max;
    char            m_Min;
    char            m_Value;
    char            m_Preset;
    bool            m_ReadOnly;
};

class CFloatWatchPoint : public CWatchPoint
{
    public:
    CFloatWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, float max, float min, bool readOnly );
    void SetValue( WCValue* pValue, class CEditBar* pBar );
    void UpdateEditBar( class CEditBar* pBar );
    void UpdatePreset( class CEditBar* pBar );
    void PresetValidate( class CEditBar* m_EditBar );
    void WriteValue( CMainFrame* pFrame );
    void Save( class CEditBar* pBar );
    bool IsReadOnly( );

    private:
    
    float           m_Max;
    float           m_Min;
    float           m_Value;
    float           m_Preset;
    bool            m_ReadOnly;

    //
    // This flag is a real hack. When we are dealling with floats, we get round off
    // errors. This prevents problems with the edit box and slider update.
    //
    bool            m_NoRecursion;

};

class CBoolWatchPoint : public CWatchPoint
{
    public:
    CBoolWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, bool readOnly );
    void SetValue( WCValue* pValue, class CEditBar* pBar );
    void UpdateEditBar( class CEditBar* pBar );
    void UpdatePreset( class CEditBar* pBar );
    void WriteValue( CMainFrame* pFrame );
    void Save( class CEditBar* pBar );
    bool IsReadOnly( );
  
    private:
    
    bool            m_Value;
    bool            m_Preset;
    bool            m_ReadOnly;

};

class CStringWatchPoint : public CWatchPoint
{
    public:
    CStringWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, unsigned int m_Length, bool readOnly );
    ~CStringWatchPoint( void );
    void SetValue( WCValue* pValue, class CEditBar* pBar );
    void UpdateEditBar( class CEditBar* pBar );
    void PresetValidate( class CEditBar* m_EditBar );
    void WriteValue( CMainFrame* pFrame );
    void Save( class CEditBar* pBar );
    bool IsReadOnly( );

    private:
    
    unsigned int    m_Length;
    char*           m_pValue;
    char*           m_pPreset;
    bool            m_ReadOnly;
};

class CEnumWatchPoint : public CWatchPoint
{
    public:
    CEnumWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, unsigned char* pEnumData, bool readOnly );
    ~CEnumWatchPoint( void );
    void SetValue( WCValue* pValue, class CEditBar* pBar );
    void UpdateEditBar( class CEditBar* pBar );
    void UpdatePreset( class CEditBar* pBar );
    void WriteValue( CMainFrame* pFrame );
    bool IsReadOnly( );

    private:
    
    unsigned int    m_EnumCount;

    struct EnumElement
    {
        char*   m_String;
        int     m_Value;
    };

    EnumElement*    m_pEnumArray;

    int             m_Value;
    int             m_Preset;
    bool            m_ReadOnly;
};


class CVectorWatchPoint : public CWatchPoint
{
    public:
    CVectorWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData, float max, float min, bool readOnly );
    void SetValue( WCValue* pValue, class CEditBar* pBar );
    void UpdateEditBar( class CEditBar* pBar );
    void UpdatePreset( class CEditBar* pBar );
    void PresetValidate( class CEditBar* m_EditBar );
    void WriteValue( CMainFrame* pFrame );
    bool IsReadOnly( );

    private:
    
    float           m_Max;
    float           m_Min;
    float           m_ValueX, m_ValueY, m_ValueZ;
    float           m_PresetX, m_PresetY, m_PresetZ;
    bool            m_ReadOnly;

    //
    // This flag is a real hack. When we are dealling with floats, we get round off
    // errors. This prevents problems with the edit box and slider update.
    //
    bool            m_NoRecursion;
};

//
// Function is not a watch point but it was an after addition and things work this way.
//
class CFunctionWatchPoint : public CWatchPoint
{
    public:
    CFunctionWatchPoint( CWatchView* pView, const char* pName, void* key, void (*callback)( void* ), void* userData );
    void UpdateEditBar( class CEditBar* pBar );
    void SetValue( WCValue* pValue, class CEditBar* pBar );
    void WriteValue( CMainFrame* pFrame );
    bool IsReadOnly( );
  
    private:
};

#endif
