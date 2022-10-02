//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "schemaparse.hpp"
#include <assert.h>
#include <stdio.h>
#include <string.h>

extern "C" int yydebug;


namespace SchemaParser
{

template <class T, unsigned MAX> class Stack
{
public:
    Stack() : top(0) {}
    ~Stack() { assert(top == 0); }

    void Push(T t)
    {
       assert(top < MAX);
       data[top++] = t;
    }

    T Pop(void)
    {
        assert(top > 0);
        top--;
        return data[top];
    }

protected:
    T data[MAX];
    unsigned top;
};

int nFileProperties = 0;
Stack<Parameter*, 256> params;
Stack<Property*, 256> properties;
Stack<int, 256> propertyBlocks;
Stack<Member*, 256> members;
Stack<Object*, 256> objects;
static ObjectList* objectList = NULL;

static char* DuplicateString(char* c)
{
    return strdup(c);
}

#define PopInverted(T, stack, dest, n) \
{ \
    if(n == 0) \
        return; \
\
    T* tmp[1024]; \
    assert(n < 1024); \
\
    unsigned i; \
\
    for(i = n; i > 0; i--) \
        tmp[i-1] = stack.Pop(); \
\
    for(i = 0; i < n; i++) \
        dest.Append(tmp[i]); \
}; \

extern "C" void ConstructParam(char* c)
{
    params.Push(new Parameter(DuplicateString(c)));
}

extern "C" void ConstructProperty(char * name, unsigned nParams)
{
    Property* prop = new Property(name, nParams);
    properties.Push(prop);

    PopInverted(Parameter, params, prop->params, nParams);
}

extern "C" void ConstructPropertyBlock(unsigned nProperty)
{
    propertyBlocks.Push(nProperty);
}

extern "C" void ConstructFilePropertyBlock(unsigned nProperty)
{
    nFileProperties = nProperty;
}

extern "C" void ConstructMember(char* name, int hasProperties)
{
    unsigned nProp = 0;
    if(hasProperties)
    {
        nProp = propertyBlocks.Pop();
    }

    Member* member = new Member(name, properties.Pop(), nProp);
    members.Push(member);

    PopInverted(Property, properties, member->properties, nProp);
}

extern "C" void ConstructObject(char* type, char* name, unsigned nMembers, unsigned hasProperties)
{
    unsigned nProp = 0;
    if(hasProperties)
    {
        nProp = propertyBlocks.Pop();
    }

    Object* object = new Object(name, type, nMembers, nProp);
    objects.Push(object);

    if( nMembers ){
        PopInverted(Member, members, object->members, nMembers);
    }

    if( nProp ){
        PopInverted(Property, properties, object->properties, nProp);
    }
}

extern "C" void ConstructObjectList(unsigned nObjects)
{
    assert(!objectList);
    objectList = new ObjectList(nObjects, nFileProperties);

    PopInverted(Object, objects, objectList->objects, nObjects);

    if( nFileProperties ){
        PopInverted(Property, properties, objectList->properties, nFileProperties);
    }
}

extern "C" void yysetbuf(char* buf);
extern "C" void yyreset( );
extern "C" int yyparse(void);

ObjectList* Parse( const char* text, bool bReset )
{    
    nFileProperties = 0;
    yydebug = 0;

    yysetbuf(const_cast<char*>(text));  
    yyparse();
  
    if( bReset )
        yyreset( );
    ObjectList* o = objectList;
    objectList = NULL;    
    return o;
}
}

/*
// test code

using namespace SchemaParser;

#include <fstream.h>
#include <memory.h>
#include <conio.h>


void Dump(ObjectList* ol)
{
    for(unsigned i = 0; i < ol->objects.Count(); i++)
    {
        Object* o = ol->objects[i];

        printf("object %s (%s) : \n", o->name, o->className);

        for(unsigned i = 0; i < o->members.Count(); i++)
        {
            Member* m = o->members[i];
            printf("  member %s (%s) : \n", m->name, m->type->name);
        }

        for(unsigned j = 0; j < o->properties.Count(); j++)
        {
            Property* p = o->properties[j];
            printf("  property %s : \n", p->name);
        }
    }
}

int main(int argc, char* argv[])
{
    char buf[65536];
    memset(buf, 0, sizeof(buf));

    ifstream in(argv[1]);
    in.read(buf, 65536);

    ObjectList* o = Parse(buf);

    if(o)
    {
        Dump(o);
    }

    getch();
    return 0;
}
*/