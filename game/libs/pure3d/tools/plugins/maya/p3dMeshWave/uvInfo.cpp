//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "uvInfo.hpp"

#include <stdlib.h>

CUVInfo::CUVInfo( float value )
:   m_minU( value ),
    m_maxU( value ),
    m_minV( value ),
    m_maxV( value )
{
}

CUVInfo::CUVInfo( float minU, float maxU, float minV, float maxV )
:   m_minU( minU ),
    m_maxU( maxU ),
    m_minV( minV ),
    m_maxV( maxV )
{
}

CUVInfo::~CUVInfo()
{
}

void CUVInfo::Clear( float u, float v )
{
    m_minU = m_maxU = u;
    m_minV = m_maxV = v;
}

void CUVInfo::Add( float u, float v )
{
    m_minU = __min( m_minU, u );
    m_maxU = __max( m_maxU, u );
    m_minV = __min( m_minV, v );
    m_maxV = __max( m_maxV, v );
    
}

float CUVInfo::URange( void ) const
{
    return ( m_maxU - m_minU );
}

float CUVInfo::VRange( void ) const
{
    return ( m_maxV - m_minV );
}
