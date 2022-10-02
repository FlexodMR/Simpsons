//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"settings.hpp"
#include<interface/io.hpp>
#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#include<assert.h>

class IntBinding : public Settings::Binding
{
public:
    int* val;

    IntBinding(int* i) { val = i;}

    void Get(char* s, unsigned size) 
    {
        sprintf(s, "%d", *val);
    }

    void Set(const char* s)
    {
        if(s[0] == 0) {*val = 0; return;}
        *val = atoi(s);
    }
};

class FloatBinding : public Settings::Binding
{
public:
    float* val;

    FloatBinding(float* i) { val = i;}

    void Get(char* s, unsigned size) 
    {
        sprintf(s, "%f", *val);
    }

    void Set(const char* s)
    {
        if(s[0] == 0) {*val = 0.0f; return;}
        *val = (float)atof(s);
    }
};

class BoolBinding : public Settings::Binding
{
public:
    bool* val;

    BoolBinding(bool* i) { val = i;}

    void Get(char* s, unsigned size) 
    {
        sprintf(s, "%d", (unsigned)*val);
    }

    void Set(const char* s)
    {
        if(s[0] == 0) {*val = false; return;}
        *val = atoi(s) != 0;
    }
};

class StringBinding : public Settings::Binding
{
public:
    char* val;

    StringBinding(char* i) { val = i;}

    void Get(char* s, unsigned size) 
    {
        strcpy(s, val);
    }

    void Set(const char* s)
    {
        strcpy(val,s);
    }
};

class ColourBinding : public Settings::Binding
{
public:
    tColour* val;

    ColourBinding(tColour* i) { val = i;}

    void Get(char* s, unsigned size) 
    {
        if(val->Alpha() == 255)
        {
            sprintf(s,"%u %u %u", val->Red(), val->Green(), val->Blue()); 
        }
        else
        {
            sprintf(s,"%u %u %u %u", val->Red(), val->Green(), val->Blue(), val->Alpha()); 
        }
    }

    void Set(const char* s)
    {
        if(s[0] == 0) {val->Set(255,255,255,255); return;}
        int d[4];
        d[3] = val->Alpha();
        sscanf(s,"%d %d %d %d", &d[0],&d[1], &d[2], &d[3]);
        val->Set(d[0], d[1], d[2], d[3]);
    }
};

class VectorBinding : public Settings::Binding
{
public:
    rmt::Vector* val;

    VectorBinding(rmt::Vector* i) { val = i;}

    void Get(char* s, unsigned size) 
    {
        sprintf(s,"%f %f %f", val->x, val->y, val->z);
    }

    void Set(const char* s)
    {
        if(s[0] == 0) {val->Set(0.0f,0.0f,0.0f); return;}
        sscanf(s,"%f %f %f",&val->x, &val->y, &val->z);
    }
};

 
Settings::Settings()
{
    curBuf = 0;
    dominant = NULL;

    files.Add("temp.ini", new File);
}

Settings::~Settings()
{
}

const char* Settings::Get(const char* section, const char* name)
{
    char n[128];
    strcpy(n, section);
    strcat(n, ".");
    strcat(n, name);
    return Get(n);
}

const char* Settings::Get(const char* name)
{
    char sectionName[128];
    char keyName[128];

    Binding* bind = bindings.Find(name);
    if(bind)
    {
        char* s = GetStringBuffer();
        bind->Get(s, 128);
        return s;
    }

    SplitName(name, sectionName, keyName);
    Key* k = Find(sectionName, keyName);

    if(k)
    {
        return k->value;
    }

    char* s = GetStringBuffer();
    strcpy(s, "");
    return s;
}

void Settings::Set(const char* name, const char* value)
{
    Binding* bind = bindings.Find(name);
    if(bind)
    {
        bind->Set(value);
        return;
    }

    Create(name, value, true);
}

void Settings::Create(const char* name, const char* value, bool forceBranch)
{
    char sectionName[256];
    char keyName[256];

    SplitName(name, sectionName, keyName);

    if(!forceBranch || ! dominant)
    {
        Key* k;
        if((k = Find(sectionName, keyName)))
        {
            strcpy(k->value, value);
            return;
        }
    }
    else
    {
        Key* k;
        if((k = Find(sectionName,keyName)))
        {
            if(strcmp(k->value, value) == 0)
                return;

        }
        if((k = FindDominant(sectionName, keyName)))
        {
            strcpy(k->value, value);
            return;
        }
    }

    File* file;
    Section* section = NULL;
    Key* k = new Key(value);

    if(dominant)
    {  
        file = dominant;
        section = dominant->sections.Find(sectionName);
    }
    else
    {
        int i = 0; 
        while(files.Get(i))
            i++;

        i--;
        int maxFile = i;

        file = files.Get(i);

        while((!section) && (i >= 0))
        {
            section = files.Get(i)->sections.Find(sectionName);
            i--;
        }
    }

    if(!section)
    {
        section = new Section;
        file->sections.Add(sectionName,section);
    }

    section->keys.Add(keyName, k);
    strcpy(k->value, value);
}

void Settings::Bind(const char* name, char* value, int bufSize)
{
    strcpy(value, Get(name));
    Create(name, Get(name), false);
    bindings.Add(name, new StringBinding(value));
}

void Settings::Bind(const char* name, int* value)
{
    bool useVar = Get(name)[0] == 0;

    if(!useVar) *value = GetInt(name);

    Create(name, Get(name), false);
    bindings.Add(name, new IntBinding(value));

    if(useVar) Set(name, *value);
}

void Settings::Bind(const char* name, bool* value)
{
    bool useVar = Get(name)[0] == 0;

    if(!useVar) *value = GetBool(name);

    Create(name, Get(name), false);
    bindings.Add(name, new BoolBinding(value));

    if(useVar) Set(name, *value);
}

void Settings::Bind(const char* name, tColour* value)
{
    bool useVar = Get(name)[0] == 0;

    if(!useVar) *value = GetColour(name);
    Create(name, Get(name), false);
    bindings.Add(name, new ColourBinding(value));

    if(useVar) Set(name, *value);
}

void Settings::Bind(const char* name, rmt::Vector* value)
{
    bool useVar = Get(name)[0] == 0;

    if(!useVar) *value = GetVector(name);

    Create(name, Get(name), false);
    bindings.Add(name, new VectorBinding(value));

    if(useVar) Set(name, *value);
}

void Settings::Bind(const char* name, float* value)
{
    bool useVar = Get(name)[0] == 0;

    if(!useVar) *value = GetFloat(name);

    Create(name, Get(name), false);
    bindings.Add(name, new FloatBinding(value));

    if(useVar) Set(name, *value);
}

void Settings::Unbind(const char* name)
{
    char tmp[256];
    Binding* bind = bindings.Find(name);
    bind->Get(tmp, 256);
    bindings.Remove(name);
    Set(name, tmp);
}

void Settings::UnbindAll(void)
{
    char tmp[256];
    char name[256];

    for(int i = bindings.NumSymbols() - 1; i >= 0 ; i--)
    {
        bindings.Get(i)->Get(tmp, 256);
        strcpy(name,bindings.GetName(i));
        bindings.Remove(name);
        Set(name, tmp);
    }
}

bool Settings::SectionExists(char* name)
{
    unsigned i = 0;
    File* file;

    while((file = files.Get(i)))
    {
        if(file->sections.Find(name))
        {
            return true;
        }
        i++;
    }
    return false;
}

void Settings::LoadFile(const char* filename, InText* in)
{
    if(!in)
        return;

    File* file = new File;
    Parse(file, in);
    files.Add(filename, file);
}

void Settings::OverlayFile(InText* in)
{
    File* file = dominant;

    if(!file)
    {
        file = files.Get(0);
    }

    if(!file)
    {
        // TODO :warn
        return;
    }

    Parse(file, in);
}

void Settings::SaveFile(const char* name, OutText* out)
{
    File* file = files.Find(name);

    if(!file)
        return;

    Section* section;
    Key* key;

    int i = 0;
    while((section = file->sections.Get(i)))
    {
        char buf[256];
        sprintf(buf, "[%s]", file->sections.GetName(i));
        out->PutLine(buf);
        int j = 0;
        while((key = section->keys.Get(j)))
        {
            char buf[256];
            sprintf(buf, "%s = %s", section->keys.GetName(j), key->value);
            out->PutLine(buf);
            key->dirty = false;
            j++;
        }

        out->PutLine("");
        i++;
    }
}

void Settings::UnloadFile(const char* name)
{
    files.Remove(name);
}

void Settings::UnloadAllFiles(void)
{
    for(int i = 0; i < files.NumSymbols(); i++)
    {
        UnloadFile(files.GetName(i));
    }
}

void Settings::SetDominant(const char* filename)
{
    File* file = files.Find(filename);
    dominant = file;
}

void Settings::SplitName(const char* name, char* section, char* key)
{
    strcpy(section, name);
    char* walk = &section[strlen(section)-1];
    while(*walk != '.')
        walk--;

    strcpy(key, walk+1);
    *walk = 0;
}

Settings::Key* Settings::Find(const char* sectionName, const char* keyName)
{
    File* file;
    Section* section;
    Key* key;

    if((key = FindDominant(sectionName, keyName)))
        return key;

    int i = 0;
    while((file = files.Get(i)))
    {
        if((section = file->sections.Find(sectionName)))
        {
            if((key = section->keys.Find(keyName)))
            {
                return key;
            }
        }
        i++;
    }
    return NULL;
}

Settings::Key* Settings::FindDominant(const char* sectionName, const char* keyName)
{
    if(!dominant)
        return NULL;

    Section* section;
    Key* key;

    if((section = dominant->sections.Find(sectionName)))
    {
        if((key = section->keys.Find(keyName)))
        {
            return key;
        }
    }
    return NULL;
}
    

bool  Settings::ToBool(const char* string)
{
    return atoi(string) != 0;
}

int   Settings::ToInt(const char* string)
{
    return atoi(string);
}

float Settings::ToFloat(const char* string)
{
    return (float)atof(string);
}

tColour Settings::ToColour(const char* string)
{
    tColour tmp(255,255,255,255);
    ColourBinding c(&tmp);
    c.Set(string);
    return *c.val;
}

const rmt::Vector& Settings::ToVector(const char* string)
{
    rmt::Vector tmp;
    VectorBinding c(&tmp);
    c.Set(string);
    return *c.val;
}

const char* Settings::ToString(int value)
{
    char* s = GetStringBuffer();
    sprintf(s, "%d", value);
    return s;
}

const char* Settings::ToString(bool value)
{
    char* s = GetStringBuffer();
    sprintf(s, "%d", (int)value);
    return s;
}

const char* Settings::ToString(float value)
{
    char* s = GetStringBuffer();
    sprintf(s, "%f", value);
    return s;
}

const char* Settings::ToString(tColour value)
{
    char* s = GetStringBuffer();

    tColour tmp;
    ColourBinding c(&tmp);
    *c.val = value;
    c.Get(s, 256);
    return s;
}

const char* Settings::ToString(const rmt::Vector& value)
{
    char* s = GetStringBuffer();

    rmt::Vector tmp;
    VectorBinding c(&tmp);
    *c.val = value;
    c.Get(s, 256);
    return s;
}

char* Settings::GetStringBuffer(void)
{
    curBuf = (curBuf + 1) % 4;
    return stringBuf[curBuf];
}

Settings::Key::Key(const char* v)
{
    strcpy(value, v);
}

void Settings::Parse(File* file, InText* in)
{
    Section* section = NULL;

    char line[512];
    while(!in->Done())
    {
        in->GetLine(line,512);

        if(line[0] == 0)
            continue;

        if((line[0] == '#') || (line[0] == '/'))
            continue;

        char* end = &line[strlen(line) - 1];

        while((*end == ' ') && (end <= line))
            end--;

        if(end < line)
            continue;

        *(end+1) = 0;

        if(line[0] == '[')
        {
            char sectionName[256];
            char* walk = &line[1];
            char* s = sectionName;

            while(*walk != ']')
            {
                *s++ = *walk++;
                assert(*walk != 0);
            }
            *s = 0;
        
            section = file->sections.Find(sectionName);

            if(!section)
            {
                section = new Section;
                file->sections.Add(sectionName, section);
            }
        }
        else
        {
            char key[256];
            char* walk = line;
            char* k = key;

            while(*walk == ' ')
                walk++;

            while(*walk != '=')
            {
                *k++ = *walk++;
                assert(*walk != 0);
            }

            k--;
            walk++;

            while(*walk == ' ')
                walk++;

            while(*k == ' ')
                k--;

            *(k+1) = 0;

            Key* foundKey;
            if((foundKey = section->keys.Find(key)))
            {
                strcpy(foundKey->value, walk);
            }
            else
            {
                section->keys.Add(key, new Key(walk));
            }

        }

    }
}

