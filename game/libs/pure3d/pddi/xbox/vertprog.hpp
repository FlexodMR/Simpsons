//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VERTPROG_HPP_
#define _VERTPROG_HPP_

#include "../pddienum.hpp"

class d3dContext;
class d3dShader;

const int maxPrograms = 32;
const int maxTemplates = 16;

class d3dVertexProgram
{
public:
    unsigned GetStride(void) { return stride; }
    unsigned GetFormat(void) { return vertexFormat; }
    unsigned GetAuxFormat(void) { return vertexFormatAux; }
    pddiPrimType GetPrimType(void) { return primType; }

    unsigned GetD3DVS(void) { return vertexShader; }

    virtual void Setup(d3dContext*, d3dShader*) {};

protected:
    friend class d3dVertexProgramManager;

    void SetData(pddiPrimType pr, unsigned vf, unsigned vfa, unsigned s, unsigned sh)
    { 
        primType = pr;
        vertexFormat = vf;
        vertexFormatAux = vfa;
        stride = s;
        vertexShader = sh;
    }

    pddiPrimType primType;

    unsigned vertexFormat;
    unsigned vertexFormatAux;
    unsigned stride;

    unsigned vertexShader;

};

class d3dVertexProgramManager
{
public:
    d3dVertexProgramManager(d3dContext* c);
    ~d3dVertexProgramManager();

    void AddVertexProgram( const char* name, void* tokens );
    d3dVertexProgram* GetVertexProgram(const char* name, pddiPrimType primType, unsigned format, unsigned aux);
    void Reset(void);

protected:
    d3dContext* context;

    unsigned nTemplates;

    struct Template
    {
        unsigned name;
        void* tokens;
        int nPrograms;
        d3dVertexProgram programs[maxPrograms];
    } templates[maxTemplates];
};

#endif
