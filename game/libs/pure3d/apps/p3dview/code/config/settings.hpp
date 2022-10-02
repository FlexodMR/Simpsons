//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _SETTINGS_HPP_
#define _SETTINGS_HPP_

#include<utility/symboltable.hpp>
#include<p3d/p3dtypes.hpp>

class InText;
class OutText;

const int SETTINGS_MAX_FILES = 16;

class Settings
{
public:
    Settings();
    virtual ~Settings();

    const char*  Get(const char* name);
    const char*  Get(const char* section, const char* name);
    int          GetInt(const char* name) { return ToInt(Get(name)); }
    int          GetInt(const char* n1, const char* n2) { return ToInt(Get(n1,n2)); }
    bool         GetBool(const char* name) { return ToBool(Get(name)); }
    bool         GetBool(const char* n1, const char* n2) { return ToBool(Get(n1,n2)); }
    float        GetFloat(const char* name) { return ToFloat(Get(name)); }
    float        GetFloat(const char* n1, const char* n2) { return ToFloat(Get(n1,n2)); }
    tColour      GetColour(const char* name) { return ToColour(Get(name)); }
    tColour      GetColour(const char* n1, const char* n2) { return ToColour(Get(n1,n2)); }
    const rmt::Vector& GetVector(const char* name) { return ToVector(Get(name)); }
    const rmt::Vector& GetVector(const char* n1, const char* n2) { return ToVector(Get(n1,n2)); }

    void Set(const char* name, const char* value);
    void Set(const char* name, int value) { Set(name, ToString(value));}
    void Set(const char* name, bool value) { Set(name, ToString(value));}
    void Set(const char* name, float value) { Set(name, ToString(value));}
    void Set(const char* name, tColour value) { Set(name, ToString(value));}
    void Set(const char* name, const rmt::Vector& value) { Set(name, ToString(value));}

    void Bind(const char* name, char* value, int bufSize);
    void Bind(const char* name, int* value);
    void Bind(const char* name, unsigned* value) {Bind(name, (int*)value);}
    void Bind(const char* name, bool* value);
    void Bind(const char* name, float* value);
    void Bind(const char* name, tColour* value);
    void Bind(const char* name, rmt::Vector* value);

    void Unbind(const char* name);
    void UnbindAll(void);

    bool SectionExists(char*);

    void LoadFile(const char* filename, InText*);
    void OverlayFile(InText*);
    void SaveFile(const char* filename, OutText*);
    void UnloadFile(const char* filename);
    void UnloadAllFiles(void);

    void SetDominant(const char* filename);

    void SetString(const char* name, const char* value) {Set(name, value);}

    class Binding
    {
        public:
            virtual void Get(char*, unsigned size) = 0;
            virtual void Set(const char*) = 0;
    };

private:
    bool  ToBool(const char* string);
    int   ToInt(const char* string);
    float ToFloat(const char* string);
    tColour ToColour(const char* string);
    const rmt::Vector& ToVector(const char* string);
    const char* ToString(int value);
    const char* ToString(bool value);
    const char* ToString(float value);
    const char* ToString(tColour value);
    const char* ToString(const rmt::Vector& value);

    class Key
    {
        public:
            Key(const char*);
            char value[256];
            bool bound;
            bool dirty;
    };

    class Section
    {
        public:
            SymbolTable<Key> keys;
    };

    class File
    {
        public:
            SymbolTable<Section> sections;
    };

    SymbolTable<File> files;
    SymbolTable<Binding> bindings;

    void Create(const char* name, const char* value, bool forceBranch);
    void Parse(File* file, InText*);
    void SplitName(const char* name, char* section, char* key);
    Key* Find(const char* section, const char* key);
    Key* FindDominant(const char* section, const char* key);

    char* GetStringBuffer(void);
    char stringBuf[4][256];
    char curBuf;

    File* dominant;

};

#endif
