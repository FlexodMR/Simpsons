//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLSIMPLESHADER_HPP
#define _TLSIMPLESHADER_HPP

#include "tlEntity.hpp"
#include "tlShader.hpp"
#include "tlColour.hpp"

class tlDataChunk;

class tlSimpleShader : public tlShader
{
public:
    tlSimpleShader();
    ~tlSimpleShader();

    explicit tlSimpleShader(tlShader&);
    explicit tlSimpleShader(tlSimpleShader&);

    void            SetTexture(const char* n);
    const char*     GetTexture();
    void            SetUVMode( const int val );
    int             GetUVMode();
    void            SetFilterMode( const int val );
    int             GetFilterMode();
    void            SetShadeMode( const int val );
    int             GetShadeMode();
    void            SetIsLit( const bool val );
    bool            GetIsLit();
    void            SetAmbient( const tlColour& );
    tlColour        GetAmbient();
    void            SetDiffuse( const tlColour& );
    tlColour        GetDiffuse();
    void            SetEmissive( const tlColour& );
    tlColour        GetEmissive();
    void            SetSpecular( const tlColour& );
    tlColour        GetSpecular();
    void            SetShininess( const float val );
    float           GetShininess();
    void            SetBlendMode( const int val );
    int             GetBlendMode();
    void            SetAlphaTest( const bool val );
    bool            GetAlphaTest();
    void            SetAlphaCompare( const int val );
    int             GetAlphaCompare();
    void            SetAlphaCompareThreshold( const float val );
    float           GetAlphaCompareThreshold();

    // For Z-Test and Z-Write:
    //   0 = Use default (whatever state is current)
    //   1 = Force Off
    //   2 = Force On  (not initially (30 Aug 2002) supported)
    void            SetZTest( const int val );
    int             GetZTest( void );
    void            SetZWrite( const int val );
    int             GetZWrite( void );
};

#endif

// Local Variables: ***
// comment-column: 45 ***
// End: ***

