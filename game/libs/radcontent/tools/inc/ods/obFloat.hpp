//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef FLOAT_HPP
#define FLOAT_HPP

#include "obClass.hpp"

class obFloatClass : public obClass
{
    public:

	    obFloatClass( obClass * pParent, const char * pName, float minValue, float maxValue, float value );

        virtual obClassInstance * CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName );
       
        float GetDefaultValue( void ) { return m_DefaultValue; }
        float GetMinValue( void ) { return m_MinValue; }
        float GetMaxValue( void ) { return m_MaxValue; }

    private:       

	    float m_MinValue;
	    float m_MaxValue;
	    float m_DefaultValue;		
};

class obFloatClassInstance : public obClassInstance
{
    public:

        obFloatClassInstance( obFloatClass * pobFloatClass, obClassInstance * pObClassInstance_Parent, const char * pName );

        virtual obClassInstance * Clone( obClassInstance * pObClassInstance_Parent );
        virtual void WriteTextData( obTextStream & stream, unsigned int index );
        virtual bool ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString );

        float GetValue( void ) { return m_Value; }
        void SetValue( float value ) { m_Value = value; }

        obFloatClass * GetFloatClass( void ) { return (obFloatClass*) GetClass( ); }
        
        
    private:

        float m_Value;
};

#endif // FLOAT_HPP