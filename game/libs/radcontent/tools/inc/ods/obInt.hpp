//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef INT_HPP
#define INT_HPP

#include "obClass.hpp"

class obIntClass : public obClass
{
    public:

	    obIntClass( obClass * pParent, const char * pName, int min, int max, int value );

        int GetMinValue( void ) { return m_MinValue; }
        int GetMaxValue( void ) { return m_MaxValue; }
        int GetDefaultValue( void ) { return m_Value; }

        virtual obClassInstance * CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName );

    private:

        int m_MinValue;
        int m_MaxValue;
	    int m_Value;
};

class obIntClassInstance : public obClassInstance
{
    public:

        obIntClassInstance( obIntClass * pobIntClass, obClassInstance * pObClassInstance_Parent, const char * pName );
        int GetValue( void ) { return m_Value; }
        void SetValue( int value ) { m_Value = value; }
        
        obIntClass * GetIntClass( void ) { return (obIntClass*) GetClass( ); }

        virtual obClassInstance * Clone( obClassInstance * pObClassInstance_Parent );
        virtual void WriteTextData( obTextStream & stream, unsigned int indent );
        virtual bool ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString );

    private:

        int m_Value;
};

#endif INT_HPP