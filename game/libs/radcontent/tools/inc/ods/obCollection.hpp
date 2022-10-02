//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef COLLECTION_HPP
#define COLLECTION_HPP

#include "obClass.hpp"
#include "obVector.hpp"

class obCollectionClass : public obClass
{
    public:

	    obCollectionClass( obClass * pParent, const char * pName, obClass * pClassType, int minElements, int maxElements );
        ~obCollectionClass( void );

        virtual obClassInstance * CreateInstance( obClassInstance * pObClassInstance_Parent, const char * pName );

        unsigned int GetMinElements( void );
        unsigned int GetMaxElements( void );
        obClass * GetCollectionType( void );
        
    private:

        obClass * m_pObClass;
        unsigned int m_MinElements;
        unsigned int m_MaxElements;
};

class obCollectionClassInstance : public obClassInstance
{
    public:

        obCollectionClassInstance( obCollectionClass * pobCollectionClass, obClassInstance * pObClassInstance_Parent, const char * pName );
        virtual ~obCollectionClassInstance( );
        
        virtual obClassInstance * Clone( obClassInstance * pObClassInstance_Parent );
        virtual unsigned int GetNumChildren( void );
        virtual obClassInstance * GetChildAt( unsigned int i );             
        virtual void WriteTextData( obTextStream & stream, unsigned int indent );
        virtual bool ReadTextData( obProject & project, obParser & stream, obUtilString * pErrorString );      



        obCollectionClass * GetCollectionClass( void );
                
        unsigned int GetNumItems( void );
        obClassInstance * GetItemAt( unsigned int i );
        obClassInstance * FindItem( const char * pName );
        void              RemoveItem( obClassInstance * pObClassInstance );                
        void              InsertItem( obClassInstance * pObClassInstance  );
        
        void RemoveAll( void );

       
    private:
        
        obVector< obClassInstance * > m_ObVector_Items;
};

#endif // COLLECTION_HPP