/*===========================================================================
    File:: tlVertex.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLVERTEX_HPP
#define _TLVERTEX_HPP

#include "tlPoint.hpp"
#include "tlColour.hpp"
#include "tlUV.hpp"

class tlFile;

class tlVertex
{
public:
    tlVertex();
    tlVertex(const tlPoint& vert, const tlPoint& norm, const tlColour& col, const tlUV& uv0);
    tlVertex(const tlVertex& vertex);

    virtual ~tlVertex();

    enum {MAX_VERT_UV = 16, MAX_VERT_COLOUR = 7};

    virtual tlVertex* Clone() const;   // Returns a new copy of this vertex

    virtual tlVertex* Interpolate(const tlVertex* v, float t) const;

    virtual void Read(tlFile* f);
    virtual void Write(tlFile* f);
    virtual void Print(int index, int indent);
    virtual void PrintFormatted(int index, int indent);

    bool GetFieldValue(char*, int) const;
    static bool GetFieldUpdatable();
    bool SetFieldValue(const char*);

    void Init(unsigned int format);
    virtual bool operator==(const tlVertex& a);
    virtual int Compare(const tlVertex& a);     // returns -1, 0 or 1 (standard sort compare)
    virtual int CompareCoord(const tlVertex& a);     // returns -1, 0 or 1 (standard sort compare)
    
    inline const tlPoint&  GetCoord() const { return coord; }
    inline const tlUV& GetUV(int i) const { return uv[i]; }
    inline const tlPoint&  GetNormal() const { return normal; };
    const tlColour& GetColour(int i = 0) const { return colour[i]; }
    const tlPoint& GetBinormal() const { return binormal; }
    const tlPoint& GetTangent() const { return tangent; }
    int GetNumberColours() const; // Returns the number of 

    // Bug #236: Added by Bryan Ewert on 22 Apr 2002
    void                        SetVertexFormat( unsigned int vertexFormat );
    inline unsigned int         VertexFormat( void ) const { return mVertexFormat; }

    void ScaleCoord(float x, float y, float z);
    void TranslateCoord(float x, float y, float z);
    void TransformCoord(tlMatrix &m);
    void Transform(tlMatrix &m, bool renormalizeNormals = true);

    void FlipUVs();   // exchange U and V (for flipping textures on PS2)
    void FlipUV( int i );   // exchange U and V (for flipping textures on PS2)
    
    void SetCoord(const tlPoint& v);
    void SetNormal(const tlPoint& n);
    void SetTangent(const tlPoint& t);
    void SetBinormal(const tlPoint& b);
    void SetColour(const tlColour& c, int i = 0);
    void SetUV(int i, const tlUV& u);

private:
    tlPoint  coord;
    tlPoint  normal;
    tlPoint  tangent;
    tlPoint  binormal;

    // There are a total of MAX_VERT_COLOUR colours available in this
    // vertex data.  The number of colours used in the run-time is
    // determined by (see GetNumColours()):
    //   if (mVertexFormat & PDDI_V_COLOUR), use 1 CBV channel.
    //   else if (mVertexFormat & PDDI_V_COLOUR2), use n CBV channels where
    //       n = PddiNumColourSets(mVertexFormat)
    //   else use 0 CBV channels.
    tlColour colour[MAX_VERT_COLOUR];

    tlUV     uv[MAX_VERT_UV];

    // Bug #236: Added by Bryan Ewert on 22 Apr 2002
    unsigned int mVertexFormat;

};

#endif

