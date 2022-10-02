//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef ENUM_HPP
#define ENUM_HPP

#include "obClass.hpp"
#include "obVector.hpp"
#include "obUtilString.hpp"

class obEnumClass : public obClass
{
    public:

	    obEnumClass( obClass * pParent, const char * pName );

        void AddValue( const char * pValue );
        unsigned int GetNumValues( void );
        const char * GetValueAt( unsigned int i );
        bool ValueToInt( const char * pValue, int * pInt );

        virtual obClassInstance * CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName );
        
    private:

	    obVector< obUtilString > m_ObVector_Strings;
};

class obEnumClassInstance : public obClassInstance
{
    public:

        obEnumClassInstance( obEnumClass * pobEnumClass, obClassInstance * pObClassInstance_Parent, const char * pName );
        int GetValue( void ) { return m_Value; }
        void SetValue( int value ) { m_Value = value; }
        
        obEnumClass * GetEnumClass( void ) { return (obEnumClass*) GetClass( ); }

        virtual obClassInstance * Clone( obClassInstance * pObClassInstance_Parent );
        virtual void WriteTextData( obTextStream & stream, unsigned int indent );
        virtual bool ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString );

    private:

        int m_Value;
};

#endif ENUM_HPP