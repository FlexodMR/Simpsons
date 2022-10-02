//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OBCLASS_HPP
#define OBCLASS_HPP

#include "obObject.hpp"
#include "obUtilString.hpp"
#include "obTextStream.hpp"
#include "obParser.hpp"
#include "obVector.hpp"

class obClassInstance;
class obProject;
class obReferenceClassInstance;

class obClass : public obObject
{
    public:

        obClass( obClass * pBase, obClass * pParent, const char * pName );
        virtual ~obClass( void );
        
        obClass * GetBase( void );
        obClass * GetParent( void );
        const char * GetName( void );        
        void GetFullName( char * pBuffer, unsigned int chars );
        
        bool IsType( obClass * pObClass );       

        virtual obClassInstance * CreateInstance( obClassInstance * pParent, const char * pName ) = 0;
                
    private:
        
        obClass * m_pBase;    
        obClass * m_pParent;
        
        obUtilString m_Name;
};

class obClassInstance : public obObject
{
    public:

        obClassInstance( obClass * pClass, obClassInstance * pParent, const char * pName );
        virtual ~obClassInstance( void );
        obClass * GetClass( void );

        const char * GetName( void ); 
        void SetName( const char * pName );
                
        obClassInstance * GetParent( void );
        obClassInstance * FindChild( const char * pName );
        
        void GetFullName( char * pName, unsigned int chars );

        virtual unsigned int GetNumChildren( void ) { return 0; }
        virtual obClassInstance * GetChildAt( unsigned int i ) { return NULL; }
                
        virtual void WriteTextData( obTextStream & stream, unsigned int indent ) = 0;
        virtual bool ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString ) = 0;

        virtual obClassInstance * Clone( obClassInstance * pParent ) = 0;
        
        void AddRef( obReferenceClassInstance * pObClassInstance );
        void RemoveRef( obReferenceClassInstance * pObClassInstance );
        unsigned int GetNumReferences( void );
        obReferenceClassInstance * GetReferenceAt( unsigned int i );
        
                                     
    private:

        obClass * m_pClass;
        obClassInstance * m_pParent;
        obUtilString m_Name;
        obVector< obReferenceClassInstance * > m_ObVector_References;
};

#endif // obClass_HPP