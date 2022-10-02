//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef STRING_HPP
#define STRING_HPP

#include "obClass.hpp"

class obStringClass : public obClass
{
    public:

	    obStringClass( obClass * pParent, const char * pName, const char * pDefaultValue );

        const char * GetDefaultValue( void );

        virtual obClassInstance * CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName );

    private:

	    obUtilString m_DefaultValue;
};

class obStringClassInstance : public obClassInstance
{
    public:

        obStringClassInstance(
            obStringClass * pobStringClass,
            obClassInstance * pObClassInstance_Parent,
            const char * pName );

        virtual obClassInstance * Clone( obClassInstance * pObClassInstance_Parent );
        virtual void WriteTextData( obTextStream & stream, unsigned int indent );
        virtual bool ReadTextData( obProject & project, obParser & parser, obUtilString * pErrorString );        
        
        const char * GetValue( void );
        void SetValue( const char * pValue );
        
        obStringClass * GetStringClass( void );
            

    private:

        obUtilString m_Value;
};

#endif // STRING_HPP
