//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OBBOOL_HPP
#define OBBOOL_HPP

#include "obClass.hpp"

class obBoolClass : public obClass
{
    public:

	    obBoolClass( obClass * pParent, const char * pName, bool value );

        virtual obClassInstance * CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName );

        bool GetDefaultValue( void );
        
    private:

	    bool m_DefaultValue;
};

class obBoolClassInstance : public obClassInstance
{
    public:

        obBoolClassInstance( obBoolClass * pobBoolClass, obClassInstance * pObClassInstance_Parent, const char * pName );

        virtual obClassInstance * Clone( obClassInstance * pObClassInstance_Parent );
        virtual void WriteTextData( obTextStream & stream, unsigned int indent );
        virtual bool ReadTextData( obProject & project, obParser & stream, obUtilString * pErrorString );

        bool GetValue( void );
        void SetValue( bool value );

        obBoolClass * GetBoolClass( void );
        
    private:

        bool m_Value;
};

#endif // BOOL_HPP