//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#pragma once

#include "obCast.hpp"
#include "obComplex.hpp"
#include "obCollection.hpp"
#include "obInt.hpp"
#include "obBool.hpp"
#include "obReference.hpp"
#include "obFloat.hpp"
#include "obString.hpp"

class obVariant
{
	public:
	
		enum Type { Bool, Int, Float, String, Collection, Reference, Complex, Unknown };
		
		inline obVariant( void );
		inline obVariant( obClassInstance * pObClassInstance );
		inline Type GetType( void );
		inline const char * GetTypeName( void );
		inline bool IsTypeName( const char * pTypeName );
        inline obVariant GetParent( void );				
		inline bool IsNull( void );
		inline const char * GetName( void );
		inline void SetName( const char * pName );
		inline void GetFullName( char * pName, unsigned int chars );
		inline unsigned int GetNumReferences( );
		inline obReferenceClassInstance * GetReferenceAt( unsigned int i);
		
		
		inline bool  GetBoolVal( void );
		inline float GetFloatVal( void );
		inline const char * GetStringVal( void );
		inline int GetIntVal( void );
		inline void SetIntVal( int val );
		inline void SetFloatVal( float f );
		inline void SetStringVal( const char * pString );
		inline void SetBoolVal( bool b );
	
		inline obVariant GetAt( unsigned int i);
		inline unsigned int GetNumItems( void );
		inline void AddEnd( obVariant v );
		inline void Remove( obVariant v );
		inline obVariant FindItem( const char * pName );

        inline unsigned int GetNumAttributes( void );
        inline obVariant GetAttrAt( unsigned int i );
        inline const char * GetAttrNameAt( unsigned int i );        
		inline obVariant GetAttr( const char * pA );
		inline float GetFloatAttr( const char * pA );
		inline bool  GetBoolAttr( const char * pA );
		inline int   GetIntAttr( const char * pA );
		inline void  GetCollectionAttr( const char * pA );
		inline void SetIntAttr( const char * pA, int value );
		
		
		inline const char * GetStringAttr( const char * pA );
				
		inline obVariant DeRef( void );	
		
		inline obClassInstance *          GetInstance( void );
		inline obReferenceClassInstance * GetRef( void );
		inline obFloatClassInstance     * GetFloat( void );
		inline obBoolClassInstance      * GetBool( void );
		inline obCollectionClassInstance * GetCollection( void );
		inline obComplexClassInstance    * GetComplex( void ); 	 
		inline obIntClassInstance        * GetInt( void );
        inline obStringClassInstance     * GetString( void );
        
        inline bool operator==( obVariant & other );		
		
	private:
	
		obClassInstance * m_pObClassInstance;
		Type m_Type;
};

typedef obVariant oV;

inline obVariant::obVariant( obClassInstance * pObClassInstance )
	:
	m_pObClassInstance( pObClassInstance ),
	m_Type( Unknown )
{
}

inline obVariant::obVariant( void )
    :
    m_pObClassInstance( NULL ),
    m_Type( Unknown )
{
}

inline const char * obVariant::GetName( void )
{   
    if ( m_pObClassInstance != NULL )
    {
        return m_pObClassInstance->GetName( );
    }
    
    return NULL;
}

inline void obVariant::GetFullName( char * pName, unsigned int chars )
{
    if ( m_pObClassInstance != NULL )
    {
        m_pObClassInstance->GetFullName( pName, chars );
    }
    else
    {
        *pName = NULL;
    }
}
		
inline void obVariant::SetName( const char * pName )
{
    if ( m_pObClassInstance != NULL )
    {
        return m_pObClassInstance->SetName( pName );
    }    
}
		
inline obVariant::Type obVariant::GetType( void )
{
	if ( m_Type == Unknown )
	{
		if ( m_pObClassInstance )
		{
			if ( obSafeDynamicCast< obFloatClassInstance * >( m_pObClassInstance ) != NULL )
			{
				m_Type = Float;
			}
			else if ( obSafeDynamicCast< obIntClassInstance * >( m_pObClassInstance ) != NULL )
			{
				m_Type = Int;
			}
			else if ( obSafeDynamicCast< obStringClassInstance * >( m_pObClassInstance ) != NULL )
			{
				m_Type = String;
			}
			else if ( obSafeDynamicCast< obCollectionClassInstance * >( m_pObClassInstance ) != NULL )
			{
				m_Type = Collection;
			}
			else if ( obSafeDynamicCast< obReferenceClassInstance * >( m_pObClassInstance ) != NULL )
			{
				m_Type = Reference;
			}
			else if ( obSafeDynamicCast< obComplexClassInstance * >( m_pObClassInstance ) != NULL )
			{
				m_Type = Complex;
			}
		}
	}
	
	return m_Type;	
}

inline const char * obVariant::GetTypeName( void )
{
    if( m_pObClassInstance != NULL )
    {
        return m_pObClassInstance->GetClass( )->GetName( );
    }
    
    return "";
}

inline bool obVariant::IsTypeName( const char * pTypeName )
{
    if ( m_pObClassInstance == NULL )
    {
        return false;
    }
    
    return strcmp( m_pObClassInstance->GetClass( )->GetName( ), pTypeName ) == 0;
}
				
inline bool obVariant::IsNull( void )
{
	return m_pObClassInstance == NULL;
}

inline float obVariant::GetFloatAttr( const char * pA )
{
    obVariant complex( GetComplex( ) );
    
    obVariant attrib( complex.GetAttr( pA ) );
    
    return attrib.GetFloatVal( );
 }

inline bool  obVariant::GetBoolAttr( const char * pA )
{    
    obVariant attrib( GetAttr( pA ) );
    
    return attrib.GetBoolVal( );
    
}

inline int obVariant::GetIntAttr( const char * pA )
{
	obVariant attrib( GetAttr( pA ) );

	return attrib.GetIntVal( );
}
		
inline void obVariant::SetIntAttr( const char * pA, int i )
{
	obVariant attrib( GetAttr( pA ) );

	return attrib.SetIntVal( i );
}

inline const char * obVariant::GetStringAttr( const char * pA )
{
    obVariant attrib( GetAttr( pA ) );
    
    return attrib.GetStringVal( );
}

inline int   obVariant::GetIntVal( void )
{
    obIntClassInstance * pI = GetInt( );
    
    if ( pI != NULL )
    {
        return pI->GetValue( );
    }
    
    return 0;
}

inline float   obVariant::GetFloatVal( void )
{
    obFloatClassInstance * pF = GetFloat( );
    
    if ( pF != NULL )
    {
        return pF->GetValue( );
    }
    
    return 0.0f;
}

inline void obVariant::SetIntVal( int val )
{
    obIntClassInstance * pI = GetInt( );
    
    if ( pI != NULL )
    {
        pI->SetValue( val );
    }
}

inline void obVariant::SetFloatVal( float f )
{
    obFloatClassInstance * pF = GetFloat( );
    
    if ( pF != NULL )
    {
        pF->SetValue( f );
    }
}

inline void obVariant::SetStringVal( const char * pString )
{
    obStringClassInstance * pS = GetString( );
    
    if ( pS != NULL )
    {
        pS->SetValue( pString );        
    }
}

inline void obVariant::SetBoolVal( bool b )
{
    obBoolClassInstance * pB = GetBool( );
    
    if ( pB != NULL )
    {
        pB->SetValue( b );
    }
}
		
inline const char * obVariant::GetStringVal( void )
{
    obStringClassInstance * pS = GetString( );
    
    if ( pS != NULL )
    {
        return pS->GetValue( );
    }
    
    return NULL;
}

inline obVariant obVariant::GetAt( unsigned int i)
{
    obCollectionClassInstance * pC = GetCollection( );
    
    if ( pC != NULL )
    {
        return obVariant( pC->GetItemAt( i ) );
    }
    
    return obVariant( NULL );
}

inline void obVariant::AddEnd( obVariant v )
{
    if ( v.IsNull( ) == false )
    {
        obCollectionClassInstance * pC = GetCollection( );
        
        if ( pC != NULL )
        {
            pC->InsertItem( v.GetInstance( ) );
        }
    }
}

inline void obVariant::Remove( obVariant v )
{
    if ( v.IsNull( ) == false )
    {
        obCollectionClassInstance * pC = GetCollection( );
        
        if ( pC != NULL )
        {
            pC->RemoveItem( v.GetInstance( )  );
        }
    }
}

inline obVariant obVariant::FindItem( const char * pName )
{
    obCollectionClassInstance * pC = GetCollection( );
    
    if ( pC != NULL )
    {
        return obVariant( pC->FindItem( pName ) );
    }
    
    return obVariant( NULL );    
}
			
inline unsigned int obVariant::GetNumItems( void )
{
    obCollectionClassInstance * pC = GetCollection( );
    
    if ( pC != NULL )
    {
        return pC->GetNumItems( );
    }
    
    return 0;
}

inline obVariant obVariant::GetAttr( const char * pA )
{
    obComplexClassInstance * pC = GetComplex( );
    
    if ( pC != NULL )
    {
        return obVariant( GetComplex( )->FindAttribute( pA ) );
    }
    
    return obVariant( NULL );
}

inline unsigned int obVariant::GetNumAttributes( void )
{
    obComplexClassInstance * pC = GetComplex( );
    
    if ( pC != NULL )
    {
        return pC->GetComplexClass( )->GetNumAttributes( );
    }
    
    return 0;
}

inline obVariant obVariant::GetAttrAt( unsigned int i )
{
    obComplexClassInstance * pC = GetComplex( );
    
    if ( pC != NULL )
    {
        return obVariant( pC->GetAttributeAt( i ) );
    }
    
    return obVariant( NULL );   
}

inline const char * obVariant::GetAttrNameAt( unsigned int i )
{
    obComplexClassInstance * pC = GetComplex( );
    
    if ( pC != NULL )
    {
        return pC->GetComplexClass( )->GetAttributeAt( i )->GetName( );
    }
    
    return NULL;
}

inline obVariant obVariant::DeRef( void )
{
    return obVariant( GetRef( )->GetValue( ) );
}

inline obReferenceClassInstance * obVariant::GetRef( void )
{
    if ( GetType( ) == Reference )
    {
        return static_cast< obReferenceClassInstance * >( m_pObClassInstance );
    }
    
    return NULL;
}

inline obClassInstance * obVariant::GetInstance( void )
{
    return m_pObClassInstance;
}
		
inline obIntClassInstance * obVariant::GetInt( void )
{
	if ( GetType( ) == Int )
	{
        return static_cast< obIntClassInstance * >( m_pObClassInstance );
	}
	
	return NULL;
}

inline obFloatClassInstance * obVariant::GetFloat( void )
{
	if ( GetType( ) == Float )
	{
        return static_cast< obFloatClassInstance * >( m_pObClassInstance );
	}
	
	return NULL;
}

inline obComplexClassInstance * obVariant::GetComplex( void )
{
	if ( GetType( ) == Complex )
	{
        return static_cast< obComplexClassInstance * >( m_pObClassInstance );
	}
	
	return NULL;
}

inline obBoolClassInstance      * obVariant::GetBool( void )
{
    if ( GetType( ) == Bool )
    {
        return static_cast< obBoolClassInstance * >( m_pObClassInstance );
    }
    
    return NULL;
}

inline obCollectionClassInstance * obVariant::GetCollection( void )
{
    if ( GetType( ) == Collection )
    {
        return static_cast< obCollectionClassInstance * >( m_pObClassInstance );
    }
    
    return NULL;
}

inline obStringClassInstance * obVariant::GetString( void )
{
    if ( GetType( ) == String )
    {
        return static_cast< obStringClassInstance * >( m_pObClassInstance );
    }
    
    return NULL;
}

inline bool obVariant::operator==( obVariant & other )
{
    return m_pObClassInstance == other.m_pObClassInstance;
}

inline obVariant obVariant::GetParent( void )
{
    if ( m_pObClassInstance != NULL )
    {
        return obVariant( m_pObClassInstance->GetParent( ) );
    }
    
    return obVariant( NULL );
}

inline unsigned int obVariant::GetNumReferences( )
{
    if ( m_pObClassInstance != NULL )
    {
        return m_pObClassInstance->GetNumReferences( );
    }
    
    return 0;
}

inline obReferenceClassInstance * obVariant::GetReferenceAt( unsigned int i)
{
    if ( m_pObClassInstance != NULL )
    {
        return m_pObClassInstance->GetReferenceAt( i );
    }
    
    return NULL;
}