//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef COMPLEX_HPP
#define COMPLEX_HPP

#include "obClass.hpp"
#include "obVector.hpp"

class obComplexClass : public obClass
{
    public:

        obComplexClass( obClass * pObParent, const char * pName, obComplexClass * pBaseClass );
        virtual ~obComplexClass( void );
       
        virtual obClassInstance * CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName );

	    void AddAttribute( obClassInstance * pObClassInstance );
        unsigned int GetNumAttributes( void );
        obClassInstance *  GetAttributeAt( unsigned int index );    
        void RemoveAllAttributes( void );
                       
    private:

        obVector< obClassInstance * > m_ObVector_Attributes;
};

class obComplexClassInstance: public obClassInstance
{
    public:

        obComplexClassInstance( obComplexClass * pobComplexClass, obClassInstance * pObClassInstance_Parent, const char * pName );
        obComplexClassInstance( obComplexClassInstance * pClone, obClassInstance * pObClassInstance_Parent );
        
         ~obComplexClassInstance( void );
        obComplexClass * GetComplexClass( void ) { return (obComplexClass*) GetClass( ); }

        virtual obClassInstance * Clone( obClassInstance * pObClassInstance_Parent );
        
        obClassInstance * GetAttributeAt ( unsigned int index );
        obClassInstance * FindAttribute( const char * pName );

        obClassInstance * GetBaseClassInstance( void );
        
        virtual void WriteTextData( obTextStream & stream, unsigned int indent );
        virtual bool ReadTextData( obProject & project, obParser & stream, obUtilString * pErrorString );

        virtual unsigned int GetNumChildren( void );
        virtual obClassInstance * GetChildAt( unsigned int i );
                
    private:
    
        obVector< obClassInstance * > m_ObVector_AttributeInstances;

        obComplexClassInstance * m_pObComplexClassInstance_Base;
};

#endif