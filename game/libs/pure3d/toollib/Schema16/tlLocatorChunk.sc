#includehpp( tlPoint.hpp )

#declaretype( tlPoint )

chunk tlLocatorChunk :
    chunk_id( Pure3D::Locator::LOCATOR )  
{
    string  Name;
    ULONG  Version;
    tlPoint  Position;
}

