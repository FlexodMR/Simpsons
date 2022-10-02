//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef SCHEMAPARSE_HPP_
#define SCHEMAPARSE_HPP_

#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include<assert.h>
#include<string.h>
#include<map>
#include<string>

using namespace std;

namespace SchemaParser
{

template <class T> class Array
{
public:
    // construct an empty array
    Array(unsigned s) : allocSize(s), usedElem(0), data(new T*[allocSize]) {  /* */ }

    // construct from a standard C array and size
    Array(unsigned s, T** d) : allocSize(s), usedElem(s). data(new T*[size]) 
    { 
        for(unsigned i = 0; i < allocSize; i++)
            data[i] = d[i];
    }

    // destruct
    ~Array() 
    { 
        delete [] data;
    }

    // get the size
    unsigned Count(void) 
    { 
        return usedElem; 
    }

    // get the indexed element
    T* operator[](unsigned i) 
    { 
        assert(i < usedElem);
        return data[i]; 
    }

    // get the indexed by name
    T* operator[](const char* i) 
    { 
        for(unsinged i = 0; i < usedElem; i++)
        {
            if(strcmp(i, data[i]->name) == 0)
            {
                return data[i];
            }
        }
        return NULL; 
    }

    void Shrink(unsigned newSize)
    {
        if(allocSize > newSize)
        {
            Resize(newSize);
        }
    }

    void Grow(unsigned newSize)
    {
        if(allocSize < newSize)
        {
            Resize(newSize);
        }
    }

    void Resize(unsigned newSize)
    {
        T** newData = new T*[newSize];
        unsigned amountToCopy = (newSize > allocSize) ? allocSize : newSize;
        
        for(unsigned i = 0; i < amountToCopy; i++)
        {
            newData[i] = data[i];
        }
        delete [] data;
        data = newData;
        allocSize = newSize;
    }

    // add element to end of array and resize if neccesary
    // returns position in array of added element
    unsigned Append(T* t)
    {
        if(usedElem == allocSize)
        {
            Grow(allocSize*2);
        }
        data[usedElem] = t;
        return usedElem++;
    }

protected:
   unsigned allocSize;
   unsigned usedElem;
   T** data;
};

//---------------------------------------
class Parameter
{
public:
    Parameter(const char* t) : text(t) {}

    const char* text;
};

//---------------------------------------
class Property
{
public:
    Property(const char* n, unsigned p) :name(n), params(p) {};
    bool IsType( const char * propName ){
        return( strcmp( propName, name ) == 0 );
    }

    const char * GetParam( int i )
    {  
        if( i >= params.Count( ) ) 
            return NULL;
        else
            return params[ i ]->text;
    }

    int GetParamNum( ){ return params.Count( ); }
    const char* name;
    Array<Parameter> params;
};


//---------------------------------------
class Member
{
public:
    Member(const char* n, const Property* t, int p) : name(n), type(t), properties(p) {}

    bool IsType( const char * typen) { 
        char buffer1[ 1024 ];
        char buffer2[ 1024 ];
        
        strcpy( buffer1, typen );
        strcpy( buffer2, type->name );

        _strupr( buffer1 );
        _strupr( buffer2 );

        return strcmp( buffer1, buffer2 ) == 0 ; 
    }

    bool IsArrayType( const char * typen ) {
        if( !IsType( "array" ) )
            return false;

        char buffer1[ 1024 ];
        char buffer2[ 1024 ];
        
        strcpy( buffer1, typen );
        strcpy( buffer2, ((Property *)type)->GetParam( 0 ) );

        _strupr( buffer1 );
        _strupr( buffer2 );

        return strcmp( buffer1, buffer2 ) == 0 ; 
    }


    //return parameter of the type 
    const char * GetTypeParam( int i ) { return ((Property *)type)->GetParam( i ); }

    //return the type name
    const char * GetTypeName( ){ return type->name; }

    void GetTypeString( char * buffer, std::map<string, string> * typemap = NULL ){
 

        if( IsType( "array" ) ){     // array type should be processed differently

            Property * p = ( Property *)type;
            const char * arraytype = p->GetParam( 0 );       //first


            if( typemap && typemap->find( type->name ) != typemap->end( ) ){
                strcpy( buffer, (*typemap)[ arraytype ].c_str( ) );
                strcat( buffer, " *" );
            }
            else{
                strcpy( buffer, arraytype );
                strcat( buffer, " *" );
            }
        }
        else{
            if( typemap && typemap->find( type->name ) != typemap->end( ) ){
                strcpy( buffer, (*typemap)[ type->name ].c_str( ) );
            }
            else{
                strcpy( buffer, type->name );
            }           
        }
    }
    const char* name;
    const Property* type;
    Array<Property> properties;
};

//---------------------------------------
class Object
{
public:
    Object(const char* n, const char* c, unsigned m, unsigned p) : name(n), className(c), members(m), properties(p) {}
    
    const char* name;
    const char* className;

    int MembersCount( ){ return members.Count( ); }
    int PropertiesCount( ){ return properties.Count( ); }
    bool IsType( const char * type ) { return strcmp( className, type ) == 0 ; }
    bool MatchName( const char * objName ) { return strcmp( name, objName ) == 0 ; }

    bool HasMemberType( const char * type ){
        for( int i = 0; i < members.Count( ); ++i ){
            if( members[ i ]->IsType( type) )
                return true;            
        }

        return false;
    }

    bool HasProperty( const char * propertyName ){
        for( int i = 0; i < properties.Count( ); ++i ){
            if( strcmp( properties[ i ]->name, propertyName ) == 0 )
                return true;            
        }

        return false;
    }

    bool HasProperty( const char * propertyName, const char * propertyContent ){
        for( int i = 0; i < properties.Count( ); ++i ){
            if( strcmp( properties[ i ]->name, propertyName ) == 0 &&
                strcmp( properties[ i ]->GetParam( 0 ), propertyContent ) == 0 )
                return true;            
        }

        return false;
    }

    int MaxMemberTypeLength( std::map<string, string> * typemap = NULL ){
        int len = 0;
        char buffer[ 1024 ];
        for( int i = 0; i < members.Count( ); ++i ){
            members[ i ]->GetTypeString( buffer, typemap );

            len = strlen( buffer ) > len ? strlen( buffer ) : len;
            
        }

        return len;
    }

    int MaxMemberNameLength( ){
        int len = 0;
        for( int i = 0; i < members.Count( ); ++i ){            

            len = strlen( members[ i ]->name ) > len ? strlen( members[ i ]->name ) : len;
            
        }

        return len;
    }
    
    const char * GetPropertyParam( const char * propname, int paramidx = 0 ){
        for( int i = 0; i < properties.Count( ); ++i ){
            if( strcmp( properties[ i ]->name, propname ) == 0 )
                return properties[ i]->GetParam( paramidx );
        }

        return NULL;
    }
       
    int GetPropertyParamNum( const char * propname ){
        for( int i = 0; i < properties.Count( ); ++i ){
            if( strcmp( properties[ i ]->name, propname ) == 0 )
                return properties[ i]->GetParamNum( );
        }

        return 0;
    }
    const char * GetProperty( const char * propname ){
        return GetPropertyParam( propname, 0 );
    }

    bool GetProperty( const char * propname, char * prop ){
        if( HasProperty( propname ) ){
            strcpy( prop, GetProperty( propname ) );
            return true;
        }
        else
            return false;
    }
    Array<Member> members;
    Array<Property> properties;
};

//---------------------------------------
// object list, the root class of the bastract syntax tree, contains the list of all objects in a parse
class ObjectList
{
public:
    ObjectList(unsigned n, unsigned p) : objects(n), properties(p) {}
    
    int ObjectsCount( ){ return objects.Count( ); }
    int PropertiesCount( ){ return properties.Count( ); }

    const char * GetObjectProperty( const char * objType, const char * objName, const char * propName )
    {        
        for( int i = 0; i < ObjectsCount( ); ++i ){
            Object *o = objects[ i ];

            if( objType && objName ){
                if( o->MatchName( objName ) && o->IsType( objType ) )
                    return o->GetProperty( propName );
            }
            else if( ( objType && o->IsType( objType ) ) || ( objName && o->MatchName( objName ) ) ){
                    return o->GetProperty( propName );
            }            
        }

        return NULL;
    }            

    bool HasProperty( const char * propertyName, const char * propertyContent ){
        for( int i = 0; i < ObjectsCount( ); ++i ){
            Object * o = objects[ i ];

            if( o->HasProperty( propertyName, propertyContent ) )
                return true;
        }

        return false;
    }

    bool HasObjectType( const char * typeName ){
       for( int i = 0; i < ObjectsCount( ); ++i ){
            Object * o = objects[ i ];

            if( o->IsType( typeName) )
                return true;
        }

        return false;
    }

    bool HasProperty( const char * propertyName ){
        for( int i = 0; i < properties.Count( ); ++i ){
            if( strcmp( properties[ i ]->name, propertyName ) == 0 )
                return true;            
        }

        return false;
    }

    const char * GetPropertyParam( const char * propname, int paramidx = 0 ){
        for( int i = 0; i < properties.Count( ); ++i ){
            if( strcmp( properties[ i ]->name, propname ) == 0 )
                return properties[ i]->GetParam( paramidx );
        }

        return NULL;
    }
       
    int GetPropertyParamNum( const char * propname ){
        for( int i = 0; i < properties.Count( ); ++i ){
            if( strcmp( properties[ i ]->name, propname ) == 0 )
                return properties[ i]->GetParamNum( );
        }

        return 0;
    }
    const char * GetProperty( const char * propname ){
        return GetPropertyParam( propname, 0 );
    }

    bool GetProperty( const char * propname, char * prop ){
        if( HasProperty( propname ) ){
            strcpy( prop, GetProperty( propname ) );
            return true;
        }
        else
            return false;
    }

    Array<Object> objects;
    Array<Property> properties;
};

//---------------------------------------
// main parsing function, turns a block of schema text into an object list
ObjectList* Parse(const char* text, bool bReset = false );

}

#endif