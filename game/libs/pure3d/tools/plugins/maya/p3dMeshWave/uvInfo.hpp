//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


class CUVInfo
{
public:
    CUVInfo( float value = 0.0F );
    CUVInfo( float minU, float maxU, float minV, float maxV );
    ~CUVInfo();

    void        Clear( float u = 0.0F, float v = 0.0F );
    void        Add( float u, float v );

    float       URange( void ) const;
    float       VRange( void ) const;

public:
    float       m_minU;
    float       m_maxU;
    float       m_minV;
    float       m_maxV;
};
