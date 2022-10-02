//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef REFERENCE_HPP
#define REFERENCE_HPP

#include "obClass.hpp"

class obReferenceClass : public obClass
{
    public:

        obReferenceClass( obClass * pObClassParent, const char * pName, obClass * pClass, bool canBeNull );

        ~obReferenceClass( void );

        obClass * GetReferenceType( void ) { return m_pObClass; }
        bool NullOk( void ) { return m_CanBeNull; }
        virtual obClassInstance * CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName );

    private:

        obClass * m_pObClass;
        bool m_CanBeNull;
};

class obReferenceClassInstance : public obClassInstance
{
    public:

        obReferenceClassInstance( obReferenceClass * pobReferenceClass, obClassInstance * pObClassInstance_Parent, const char * pName );
        virtual ~obReferenceClassInstance( );
        
        virtual obClassInstance * Clone( obClassInstance * pObClassInstance_Parent );
        
        obReferenceClass * GetReferenceClass( void );
        void SetValue( obClassInstance * pValue );
        obClassInstance * GetValue( void );
        
        virtual void WriteTextData( obTextStream & stream, unsigned int indent );
        virtual bool ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString );        
        

    private:

        obClassInstance * m_pValue;
};


#endif // REFERENCE_HPP