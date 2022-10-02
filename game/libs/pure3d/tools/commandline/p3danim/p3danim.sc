tool p3danim :
    description( "This tool processes animations in P3D files" )
{
}

parameter AppendAnimTypePrefix :
    long( "animPrefix" ),
    description( "Append the animation type as a prefix to all animations" ),
    type( BOOL )
{
}

parameter AppendAnimTypeSuffix :
    long( "animSuffix" ),
    description( "Append the animation type as a suffix to all animations" ),
    type( BOOL )
{
}

parameter AnimPatterns :
    short( a ),
    long( "animation" ),
    arg ( Pattern ),
    description( "Only process animations/effects which match Pattern (eg. Run*)" ),
    type( Pattern )
{
}

parameter IgnoreAnimTypes :
    short( i ),
    long( "ignoreType" ),
    arg ( Pattern ),
    description( "Don't process these animation types (using fourcc codes)" ),
    type( Pattern )
{
}

parameter Start :
    long( "start" ),
    arg ( value ),
    default( 0 ),
    description( "Remove all keys from animation that are before the start frame" ),
    type( int )
{
}

parameter End :
    long( "end" ),
    arg ( value ),
    default( 0 ),
    description( "Remove all keys from animation that are after the end frame" ),
    type( int )
{
}

parameter Scale :
    short( S ),
    long( "scale" ),
    arg ( value ),
    default( 1.0f ),
    description( "Scale the time of the animation by Scale" ),
    type( float )
{
}

parameter Shift :
    short( s ),
    long( "shift" ),
    arg ( frame ),
    default( 0 ),
    description( "Shift all time indices by shift value" ),
    type( int )
{
}

parameter LoopKeys :
    short( l ),
    long( "loop-keys" ),
    description( "Loops animation values (first and last key are equal)" ),
    type( BOOL )
{
}

parameter CompressRot :
    short( C ),
    long( "compress-rotation" ),
    description( "Compress quaternions into 1.15 format" ),
    type( BOOL )
{
}

parameter RemoveRot :
    short( r ),
    long( "delete-rotation" ),
    description( "Remove rotation information" ),
    type( BOOL )
{
}

parameter RemoveTrans :
    short( t ),
    long( "delete-translation" ),
    description( "Remove translation information" ),
    type( BOOL )
{
}

parameter StaticTranslationPats :
    long( "static-translation" ),
    arg ( Pattern ),
    description( "Force translation joints matching Pattern to be static " ),
    type( Pattern )
{
}

parameter StaticRotationPats :
    long( "static-rotation" ),
    arg ( Pattern ),
    description( "Force rotation joints matching Pattern to be static" ),
    type( Pattern )
{
}

parameter DeleteXTrans :
    short( x ),
    long( "delete-x-trans" ),
    arg ( Pattern ),
    description( "Remove X translation from joints matching Pattern" ),
    type( Pattern )
{
}

parameter DeleteYTrans :
    short( y ),
    long( "delete-y-trans" ),
    arg ( Pattern ),
    description( "Remove Y translation from joints matching Pattern" ),
    type( Pattern )
{
}

parameter DeleteZTrans :
    short( z ),
    long( "delete-z-trans" ),
    arg ( Pattern ),
    description( "Remove Z translation from joints matching Pattern" ),
    type( Pattern )
{
}

parameter KeepJointPats :
    short( k ),
    long( "keep-joint" ),
    arg ( Pattern ),
    description( "Keep rot/trans keys for joints matching Pattern" ),
    type( Pattern )
{
}

parameter Optimize :
    short( O ),
    long( "optimize" ),
    description( "Optimize, remove unneeded keyframes" ),
    type( BOOL )
{
}

parameter ForceStatic :
    long( "force-static" ),
    description( "Force all channels to be static" ),
    type( BOOL )
{
}

parameter RemoveStatic :
    long( "remove-static" ),
    description( "Remove all static channels, groups and animations" ),
    type( BOOL )
{
}

parameter Float1Tolerance :
    long( "float1-tolerance" ),
    arg ( value ),
    default( 0.0f ),
    description( "Distance tolerance value for optimizing one float channels" ),
    type( float )
{
}

parameter Float2Tolerance :
    long( "float2-tolerance" ),
    arg ( value ),
    default( 0.0f ),
    description( "Distance tolerance value for optimizing two float channels" ),
    type( float )
{
}

parameter VectorTolerance :
    long( "vector-tolerance" ),
    arg ( value ),
    default( 0.0f ),
    description( "Distance tolerance value for optimizing vector channels" ),
    type( float )
{
}

parameter QuaternionTolerance :
    long( "quaternion-tolerance" ),
    arg ( value ),
    default( 0.0f ),
    description( "Angle tolerance value from 0 to 360 for optimizing quaternion channels" ),
    type( float )
{
}

parameter ColourTolerance :
    long( "colour-tolerance" ),
    arg ( value ),
    default( 0.0f ),
    description( "Tolerance value from 0 to 255 for optimizing colour channels" ),
    type( float )
{
}

parameter OutputName :
    short( o ),
    long( "output-file" ),
    arg ( name ),
    description( "Specify output file name" ),
    type( string )
{
}

parameter Stats :
    long( "stats" ),
    description( "Give animation memory stats for all platforms" ),
    type( BOOL )
{
}
