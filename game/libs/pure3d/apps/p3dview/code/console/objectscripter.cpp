//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"objectscripter.hpp"
#include<utility/symboltable.hpp>
#include"function.hpp"
#include"class.hpp"
#include"enum.hpp"
#include"types.hpp"
#include"shatter.hpp"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#include<p3d/memheap.hpp>

namespace Console
{

void Use(char* text, void* scr)
{
    ObjectScripter* scripter = (ObjectScripter*)scr;
    scripter->Use(text);
}

extern tMemHeap* consoleTypeHeap;
extern unsigned consoleTypeHeapRef;

class FunctionArguments
{
public:
    FunctionArguments() { current = data;}

    void* GetData(void) { return data; }
    void* GetOffset(void) { return current; }

    template <class T> void Add(T t) 
    { 
        assert((sizeof(T) + (current - data)) < 64);

        (*((T*)current)) = t; 
        current += sizeof(T);
    }

protected:
    char* current;
    char data[64];

};

ObjectScripter::ObjectScripter()
{
    if(consoleTypeHeapRef++ == 0)
        consoleTypeHeap = new tMemHeap;
    
    classes = new SymbolTable<Class>(256);
    enums   = new SymbolTable<Enum>(256);
    objects = new SymbolTable<Object>(1024);
    aliases = new SymbolTable<char>(256);

    scripterClass = new Class("ObjectScripter", sizeof(this), NULL, 256);
    scripterObject = new Object(scripterClass, this);

    classes->Add("ObjectScripter",scripterClass);
    objects->Add("scripter",scripterObject);

    used = NULL;

    InitBasicTypes(this);

    completingMode = NONE;
    completingObject = NULL;

    output = NULL;

    supressUnknown = false;
    aliasRecip = NULL;
}

ObjectScripter::~ObjectScripter()
{
    delete objects;
    delete enums;
    delete classes;
    delete aliases;

    if(--consoleTypeHeapRef == 0)
        delete consoleTypeHeap;
}

void  ObjectScripter::AddClass(Class* d)
{
    classes->Add(d->GetName(), d);
}

void  ObjectScripter::AddEnum(Enum* e)
{
    enums->Add(e->GetName(), e);
}


void  ObjectScripter::AddObject(char* className, char* name, void* object)
{
    Class* type = classes->Find(className);
    assert(type);

    if(objects->Find(name))
    {
        char buffer[128];
        sprintf(buffer, "Variable \"%s\" already exists!", name);
        Print(buffer);
        return;
    }

    objects->Add(name, new Object(type, object));
}

void  ObjectScripter::NewObject(char* className, char* name)
{
    Class* type = classes->Find(className);
    assert(type);
    objects->Add(name, new Object(type));
}

void ObjectScripter::Print(char*s)
{
    if(output) output->Echo(s);
}

void ObjectScripter::Use(char* c)
{
    if(c == NULL)
    {
        used = NULL;
        return;
    }

    used = objects->Find(c);
}

void ObjectScripter::Alias(char* name, char* function)
{
    char* alias = new char[strlen(function) + 1];
    char* old;
    strcpy(alias, function);
    if((old = aliases->Find(name)))
    {
        delete [] old;
        aliases->Replace(name, alias);
    }
    else
    {
        aliases->Add(name, alias);
    }
}

char buffers[8][256];
int currentBuffer = 0;

char* Buffer(char* in)
{
    strcpy(buffers[currentBuffer], in);
    char *tmp = buffers[currentBuffer];
    currentBuffer = (currentBuffer + 1) % 8;
    return tmp;
}

void ObjectScripter::SingleCommand(char* line)
{
    int currentToken = 0;
    char* token;

    ShatterParser parser(' ');

    parser.Parse(line);

    token = parser.GetFragment(currentToken++,"");


    char* alias;
    if((alias = aliases->Find(token)))
    {
        char command[512];
        char* args[8];

        for(int i = 0; i < 8; i++)
            args[i] = parser.GetFragment(currentToken++,"");

        char* c = command;

        while(*alias != 0)
        {
            while((*alias != 0) && (*alias != '%'))
                *c++ = *alias++;

            if(*alias == '%')
            {
                alias++;
                if(*alias == 'a')
                {
                    alias++;
                    *c++ = '\"';
                    for(int i = 0 ;i < 8; i++)
                    {
                        strcpy(c, args[i]);
                        while(*c) c++;
                        strcpy(c, " ");
                        while(*c) c++;
                    }
                    *c++ = '\"';
                }
                else
                {
                    unsigned num = *alias - '1';
                    alias++;
                    if(num < 8)
                    {
                        *c++ = '\"';
                        strcpy(c, args[num]);
                        while(*c) c++;
                        *c++ = '\"';
                    }
                }
            }
        }
        *c = 0;
        if(aliasRecip)
            aliasRecip->Command(command);
        else
            Command(command);
        return;
    }

    char buffer[256];
    FunctionArguments args;

    Object* currentObject;

    if(!used)
    {
        currentObject = objects->Find(token);
        if(currentObject == NULL)
        {
            currentObject = scripterObject;
        }
        else
        {
            if(currentToken == parser.GetNumFragments())
            {
                args.Add(buffer);
                currentObject->GetClass()->GetMethod("_get")->Dispatch(currentObject->GetObject(), args.GetData(), NULL);
                Print(buffer);
                return;
            }

            token = parser.GetFragment(currentToken++,"");
        }
    }
    else
    {
        currentObject = used;
    }
  
    Function* currentMethod = currentObject->GetClass()->GetMethod(token);

    if(currentMethod)
        token = parser.GetFragment(currentToken++,"");

    if((currentMethod == NULL) && (used))
    {
        currentObject = objects->Find(token);

        if(!currentObject)
            currentObject = scripterObject;
        else
            token = parser.GetFragment(currentToken++,"");

        currentMethod = currentObject->GetClass()->GetMethod(token); 

        if(currentMethod)
            token = parser.GetFragment(currentToken++,"");
    }

    if((currentMethod == NULL) && (currentObject == scripterObject) && !supressUnknown)
    {
        char buf[256];
        sprintf(buf, "Unrecognized object or method '%s'", token);
        Print(buf);
    }

    if(currentMethod == NULL)
    {
        currentMethod = currentObject->GetClass()->GetMethod("_set");

        if(currentMethod == NULL)
            return;
    }

    if((currentMethod->GetNumArgs() == 1) && (currentMethod->GetArgType(0) == argString))
    {
        char buf[256] = "";

        strcpy(buf, token);
        token = parser.GetFragment(currentToken++,"");

        while(token[0] != 0)
        {
            strcat(buf, " ");
            strcat(buf, token);
            token = parser.GetFragment(currentToken++,"");
        }

        args.Add(buf);
        currentMethod->Dispatch(currentObject ? currentObject->GetObject() : NULL, args.GetData(), NULL);
        return;
    }

    int nArgs = currentMethod->GetNumArgs();

    if(nArgs != (parser.GetNumFragments() - currentToken + 1))
    {
        char buffer[256];
        sprintf(buffer, "Bad number of arguments for function \"%s\"", currentMethod->GetName()); 
        Print(buffer);
    }

    int currentArg;
    for(currentArg = 0; (currentArg < nArgs); currentArg++)
    {
        switch(currentMethod->GetArgType(currentArg))
        {
            case argString :
            {
                args.Add(Buffer(token));
            }
            break;
            default:
                char buf[256];
                sprintf(buf, "Unrecognized argument type");
                Print(buf);

            case argInt :
            {
                Object* obj = objects->Find(token);
                if(obj)
                {
                    Function* function = obj->GetClass()->GetMethod("_as_int");
                    if(function)
                    {
                        int tmp;
                        function->Dispatch(obj->GetObject(), NULL, &tmp);
                        args.Add(tmp);
                    }
                    else
                    {
                        args.Add(atoi(token));
                    }

                }
                else
                {
                    args.Add(atoi(token));
                }
            }
            break;
            case argBool :
            {
                args.Add(atoi(token) != 0);
            }
            break;
            case argFloat :
            {
                args.Add((float)atof(token));
            }
            break;
            case argClass :
            {
                Object* object = objects->Find(token);
                assert(object);
                currentMethod->CheckClassType(currentArg, object->GetClass()->GetName());
                args.Add(object->GetObject());
            }
            break;
        }      
        token = parser.GetFragment(currentToken++,"");
    }
    currentMethod->Dispatch(currentObject->GetObject(), args.GetData(), NULL);
}

void ObjectScripter::Command(const char* line)
{
    ShatterParser parser(';');

    parser.Parse(line);

    for(int i = 0; i < parser.GetNumFragments(); i++)
    {
        SingleCommand(parser.GetFragment(i,""));
    }

}

void ObjectScripter::SetFunctionI(char* name, Function* function)
{
    scripterClass->AddMethodI(name, function);
}

Object* ObjectScripter::FindOrCreate(char* name, char* type)
{
    Object* object = objects->Find(name);

    if(!object)
    {
        object = objects->Add(name, new Object(classes->Find(type)));
    }
    else
    {
        if(object->GetClass() != classes->Find(type))
        {
            char buffer[128];
            sprintf(buffer, "Wrong class on direct access to var \"%s\"", name);
            Print(buffer);
            return NULL;
        }
    }

    return object;
}

Object* ObjectScripter::FindOnly(char* name, char* type)
{
    char buffer[128];
    Object* object = objects->Find(name);
    if(!object)
    {
        sprintf(buffer, "Could not find variable \"%s\"", name);
        Print(buffer);
        return NULL;
    }

    if(object->GetClass() != classes->Find(type))
    {
        sprintf(buffer, "Wrong class on direct access to variable \"%s\"", name);
        Print(buffer);
        return NULL;
    }

    return object;
}

void  ObjectScripter::SetFloat(char* name, float val)
{
    Object* object;
    if((object = FindOrCreate(name,"float")))
    {
        float* f = (float*)object->GetObject();
        *f = val;
    }
}

void  ObjectScripter::SetInt(char* name, int val)
{
    Object* object;
    if((object = FindOrCreate(name,"int")))
    {
        int* i = (int*)object->GetObject();
        *i = val;
    }
}

void  ObjectScripter::SetString(char* name, char* val)
{
    Object* object;
    if((object = FindOrCreate(name,"string")))
    {
        char* s = (char*)object->GetObject();
        strcpy(s,val);
    }
}

float ObjectScripter::GetFloat(char* name)
{
    Object* object;
    if((object = FindOnly(name,"float")))
    {
        float* f = (float*)object->GetObject();
        return *f;
    }
    return 0.0f;
}

int ObjectScripter::GetInt(char* name)
{
    Object* object;
    if((object = FindOnly(name,"int")))
    {
        int* i = (int*)object->GetObject();
        return *i;
    }
    return 0;
 }

char* ObjectScripter::GetString(char* name)
{
    Object* object;
    if((object = FindOnly(name,"string")))
    {
        char* s = (char*)object->GetObject();
        return(Buffer(s));
    }
    return Buffer("");
}

char* ObjectScripter::BeginCompletion(char* line)
{
    char* token;
    int currentToken = 0;

    ShatterParser parser(' ');

    parser.Parse(line);
    token = parser.GetFragment(currentToken++, "");

    strcpy(completingFormed, "");

    completingMode = NONE;
    completingCount = 0;

    if(used)
    {
        completingObject = used;
    }
    else
    {
        completingObject = objects->Find(token);
    }

    if(completingObject != NULL)
    {
            strcpy(completingFormed, token);
            strcat(completingFormed, " ");
            token = parser.GetFragment(currentToken++, "");
    }

    if((completingObject == NULL) && (parser.GetNumFragments() == 1))
    {
        completingMode = OBJECT_OR_METHOD;
        strcpy(completingFragment, token);
        strcpy(completingFormed, "");
        return NextCompletion();
    }

    if(completingObject == NULL)
    {
        completingObject = scripterObject;
    }

    Function* currentMethod = completingObject->GetClass()->GetMethod(token);

    if((currentMethod == NULL) && (used))
    {
        completingObject = scripterObject;
        currentMethod = completingObject->GetClass()->GetMethod(token); 
    }

    if(currentMethod == NULL)
    {
        completingMode = METHOD;
        strcpy(completingFragment, token);
        return NextCompletion();
    }
    else
    {
        strcat(completingFormed, token);
        strcat(completingFormed, " ");
        token = parser.GetFragment(currentToken++, "");
    }

    while(currentToken < (parser.GetNumFragments()))
    {
        strcat(completingFormed, token);
        strcat(completingFormed, " ");
        token = parser.GetFragment(currentToken++, "");
    }

    strcpy(completingFragment, token);
    completingMode = OBJECT;
    return NextCompletion();
}

int PartialMatch(const char* bigger, const char* smaller)
{
    while(*smaller)
    {
        if(*smaller++ != *bigger++)
            return 0;
    }
    return 1;
}


char buffer[256];

char* ObjectScripter::NextCompletion(void)
{
    char match[64];
    int matchNumber = -1;
    int i;

    strcpy(match, completingFragment);

    switch(completingMode)
    {
        case OBJECT_OR_METHOD :
         {
            for(i = 0; i < objects->NumSymbols(); i++)
            {
                if(PartialMatch(objects->GetName(i), completingFragment))
                    matchNumber++;

                if(matchNumber == completingCount)
                {
                    strcpy(match, objects->GetName(i));
                    break;
                }
            }

            if(matchNumber != completingCount)
            {
                SymbolTable<Function>* functions = scripterClass->GetFunctionTable();
                for(i = 0; i < functions->NumSymbols(); i++)
                {
                    if(PartialMatch(functions->GetName(i), completingFragment))
                        matchNumber++;

                    if(matchNumber == completingCount)
                    {
                        strcpy(match, functions->GetName(i));
                        break;
                    }
                }
            }

            if((matchNumber) < completingCount)
            {
                completingCount = -1;
                break;
            }
         }
         break;

        case OBJECT :
            for(i = 0; i < objects->NumSymbols(); i++)
            {
                if(PartialMatch(objects->GetName(i), completingFragment))
                    matchNumber++;

                if(matchNumber == completingCount)
                {
                    strcpy(match, objects->GetName(i));
                    break;
                }
            }

            if((matchNumber) < completingCount)
            {
                completingCount = -1;
                break;
            }
            break;
        case METHOD:
            {
                SymbolTable<Function>* functions = 
                      completingObject->GetClass()->GetFunctionTable();
                for(i = 0; i < functions->NumSymbols(); i++)
                {
                    if(PartialMatch(functions->GetName(i), completingFragment))
                        matchNumber++;

                    if(matchNumber == completingCount)
                    {
                        strcpy(match, functions->GetName(i));
                        break;
                    }
                }

                if((matchNumber) < completingCount)
                {
                    completingCount = -1;
                    break;
                }
            }
            break;
        default:
            break;

    }

    completingCount++;

    strcpy(buffer, completingFormed);
    strcat(buffer, match);
    return buffer;
}

}

