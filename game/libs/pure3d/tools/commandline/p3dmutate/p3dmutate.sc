tool p3dmutate :
    description( "Provides a generic way to modify chunk fields" )
{
}

parameter Query :
    short( q ),
    long( "query" ),
    default( FALSE ),
    description( "Queries field values rather than updating them" ),
    type( BOOL )
{
}

parameter Edit :
    short( e ),
    long( "edit" ),
    default( FALSE ),
    description( "Updates field values (default behaviour)" ),
    type( BOOL )
{
}

parameter Delete :
    short( d ),
    long( "delete" ),
    default( FALSE ),
    description( "Deletes chunks rather than updating them" ),
    type( BOOL )
{
}

parameter ChunkID :
    short( i ),
    long( "chunk-id" ),
    arg ( List ),
    description( "Specify list of chunk IDs to filter (eg. 0x3050-0x3058,0x305A)" ),
    type( string )
{
}

parameter NewChunkID :
    short( N ),
    long( "new-chunk-id" ),
    arg ( List ),
    description( "Convert chunks specified in ChunkID to these new IDs" ),
    type( string )
{
}

parameter ChunkName :
    short( m ),
    long( "chunk-name" ),
    arg ( Name ),
    description( "Specify chunk name filter (wildcards allowed, eg. Bone*)" ),
    type( Pattern )
{
}

parameter ParentName :
    short( r ),
    long( "parent-name" ),
    arg ( Name ),
    description( "Specify parent chunk name filter (wildcards allowed, eg. Skel*)" ),
    type( Pattern )
{
}

parameter TopParentName :
    short( p ),
    long( "top-parent-name" ),
    arg ( Name ),
    description( "Specify top-level parent chunk name filter (wildcards allowed)" ),
    type( Pattern )
{
}

parameter FieldName :
    short( f ),
    long( "field-name" ),
    arg ( Name ),
    description( "Specify chunk field name filter (wildcards allowed, eg. *Name)" ),
    type( Pattern )
{
}

parameter FieldType :
    short( t ),
    long( "field-type" ),
    arg ( Type ),
    description( "Specify chunk field type filter (wildcards allowed, eg. *WORD)" ),
    type( Pattern )
{
}

parameter ArrayIndex :
    short( x ),
    long( "array-index" ),
    arg ( List ),
    description( "Specify list of array indices to filter (eg. 10-20,23)" ),
    type( string )
{
}

parameter CurrentValue :
    short( c ),
    long( "current-value" ),
    arg ( Value ),
    description( "Modify field only if current value matches filter (wildcards allowed)" ),
    type( Pattern )
{
}

parameter NewValue :
    short( a ),
    long( "new-value" ),
    arg ( Value ),
    description( "Specify new value for chunk field(s)" ),
    type( string )
{
}

parameter PrefixFileName :
    short( F ),
    long( "prefix-filename" ),
    arg ( Value ),
    default( FALSE ),
    description( "Prefix new value for chunk field(s) with current filename" ),
    type( BOOL )
{
}

parameter MaxCount :
    short( k ),
    long( "max-count" ),
    arg ( Value ),
    default( -1 ),
    description( "Limit number of fields updated/queried or number of chunks deleted to Value" ),
    type( int )
{
}

parameter AppendOnly :
    short( A ),
    long( "Append" ),
    arg( Value ),
    description ( "Append new value not replace with." ),
    type( BOOL )
{
}

parameter OutputFile :
    short( o ),
    long( "output-file" ),
    arg ( Name ),
    description( "Specify output file name" ),
    type( string )
{
}

parameter IgnoreFieldFilter :
    short( I ),
    long( "ignore-field-filter" ),
    default( FALSE ),
    description( "Continue processing even if no field name filter is specified (normally this is an error)" ),
    type( BOOL )
{
}

