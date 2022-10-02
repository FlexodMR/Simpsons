/*===========================================================================
    File: main.cpp 

    This tool optimizes road data


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include <list>

#include "Param.hpp"

#include "../../../../../code/constants/srrchunks.h"

Parameters* Param;

char separator = '_';

bool MainMode();
bool CrossCheck();
void OptimizeRoads();
void RenameIntersections( const char* prepend );

std::list< tlRoadSegmentDataChunk* > segDataInventory;
std::list< tlRoadSegmentChunk* > segInventory;
std::list< tlRoadChunk* > roadInventory;
std::list< tlIntersectionChunk* > intersectionInventory;
std::list< tlRoadSegmentDataChunk* > sdi;

int main(int argc, char* argv[])
{
    int returnVal = 0;

    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

    if ( Param->CrossCheck )
    {
        if ( !CrossCheck() )
        {
            returnVal = 1;
        }
    }
    else
    {
        if ( !MainMode() )
        {
            returnVal = 1;
        }
    }

    // Cleanup

    delete Param;
    return returnVal;
}

bool CrossCheck()
{
    tlDataChunk** inchunks = new tlDataChunk*[ Param->Files.Count() ];

    unsigned int i;

    //Get all the files as inchunks.
    for ( i = 0; i < Param->Files.Count(); ++i )
    {
        if ( Param->Verbosity > 0 )
        {
            printf("Processing file '%s'\n", Param->Files[ i ]);
        }
        // open next file into a tlFile object
        tlFile input(new tlFileByteStream(Param->Files[ i ],omREAD), tlFile::FROMFILE);
        if(!input.IsOpen()) 
        {
            printf("Could not open %s\n", Param->Files[ i ]);
            return false;
        }

        // make a tlDataChunk from the file
        // this is the wrapper chunk for the input
        inchunks[i] = new tlDataChunk(&input);

        // we don't need the tlFile anymore
        // this cleans up the tlFile object including the
        // tlFileByteStream
        input.Close();

        if(Param->Verbosity>6)
        {
            inchunks[i]->Print();
        }
    }


    //Now let's test each intersection against all the others and rename them if they match.
    //This is wasteful as some will be renamed several times to the same name.  Optimize later if
    //it becomes a problem.
    for ( i = 0; (i < Param->Files.Count() - 1) || (Param->Number != 0 && i < Param->Number) ; ++i )  //Don't do the last one.
    {
        //Find an intersection in file i
        tlDataChunk* subi = NULL;
        int chi;
        for ( chi = 0; chi < inchunks[i]->SubChunkCount(); ++chi )
        {
            subi = inchunks[i]->GetSubChunk(chi);

            if ( subi->ID() == SRR2::ChunkID::INTERSECTION )
            {
                tlIntersectionChunk* intersectioni = dynamic_cast<tlIntersectionChunk*>(subi);

                //Test against all other intersections.
                //This assumes that there are none in the current file...
                roadInventory.clear();
                
                unsigned int j;
                for ( j = i + 1; j < Param->Files.Count(); ++j)
                {
                    tlDataChunk* subj = NULL;
                    int chj;
                    //First find all the roads.
                    for ( chj = 0; chj < inchunks[j]->SubChunkCount(); ++chj )
                    {
                        subj = inchunks[j]->GetSubChunk(chj);

                        if ( subj->ID() == SRR2::ChunkID::ROAD )
                        {
                            roadInventory.push_back( dynamic_cast< tlRoadChunk* >(subj) );
                        }
                    }

                    for ( chj = 0; chj < inchunks[j]->SubChunkCount(); ++chj )
                    {
                        subj = inchunks[j]->GetSubChunk(chj);

                        if ( subj->ID() == SRR2::ChunkID::INTERSECTION )
                        {
                            tlIntersectionChunk* intersectionj = dynamic_cast<tlIntersectionChunk*>(subj);

                            //These two are both intersections.  Are they near eachother?
                            float tol = Param->Tolerance;

                            tlPoint centrei = intersectioni->GetCentre();
                            float radiusi = intersectioni->GetRadius();
                            tlPoint centrej = intersectionj->GetCentre();
                            float radiusj = intersectionj->GetRadius();

                            tlPoint diff = centrei;
                            diff.Sub( centrej );

                            if ( diff.Magnitude() <= tol )
                            {
                                //These are the same...
                                //Find all roads that use intersection j's name
                                std::list< tlRoadChunk* >::iterator roadIt;
                                for( roadIt = roadInventory.begin(); roadIt != roadInventory.end(); roadIt++ )
                                {
                                    tlRoadChunk* road = *roadIt;

                                    if ( strcmp( road->GetStartIntersection(), intersectionj->GetName() ) == 0 )
                                    {
//                                        if ( Param->Verbosity )
                                        {
                                            printf( "Setting Road: %s START from %s to %s\n", road->GetName(), intersectionj->GetName(), intersectioni->GetName() );
                                        }
                                        road->SetStartIntersection( intersectioni->GetName() );
                                    }
                                    else if ( strcmp( road->GetEndIntersection(), intersectionj->GetName() ) == 0 )
                                    {
//                                        if ( Param->Verbosity )
                                        {
                                            printf( "Setting Road: %s END from %s to %s\n", road->GetName(), intersectionj->GetName(), intersectioni->GetName() );
                                        }
                                        road->SetEndIntersection( intersectioni->GetName() );
                                    }
                                }

                                intersectionj->SetName( intersectioni->GetName() );  //Give them the same name.
                            }
                        }
                    }
                }
            }
        }
    }

    for ( i = 0; i < Param->Files.Count(); ++i )
    {
        // create the new output file
        tlFile output(new tlFileByteStream(Param->Files[i], omWRITE), tlFile::CHUNK32);

        if(!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", Param->Files[i]);
            delete inchunks[i];
            inchunks[i] = NULL;

            continue;
        }

        // get the output wrapper chunk to write its data out
        // to the file
        inchunks[i]->SortSubChunks();
        inchunks[i]->Write(&output);

        delete inchunks[i];
        inchunks[i] = NULL;
    }

    delete[] inchunks;

    return true;
}

bool MainMode()
{
    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        char prepend[128];
        strcpy( prepend, Param->Files[i] );
        char* sep = strchr( prepend, separator );
        if ( !sep )
        {
            printf("Could not get prepend string!\n");
            exit(-1);
        }

        *sep = '\0';

        if ( Param->Verbosity > 0 )
        {
            printf("Processing file '%s'\n", Param->Files[ i ]);
        }
        // open next file into a tlFile object
        tlFile input(new tlFileByteStream(Param->Files[ i ],omREAD), tlFile::FROMFILE);
        if(!input.IsOpen()) 
        {
            printf("Could not open %s\n", Param->Files[ i ]);
            return false;
        }

        // make a tlDataChunk from the file
        // this is the wrapper chunk for the input
        tlDataChunk* inchunk = new tlDataChunk(&input);

        // we don't need the tlFile anymore
        // this cleans up the tlFile object including the
        // tlFileByteStream
        input.Close();

        if(Param->Verbosity>6)
        {
            inchunk->Print();
        }

        // build an output chunk
        tlDataChunk* outchunk = new tlDataChunk;
        if(Param->WriteHistory)
        {
            // put a history chunk in the output
            // a history chunk shows what version of the tool
            // was run on the file with what command-line 
            // parameters
            outchunk->AppendSubChunk(Param->HistoryChunk());
        }

        int ch;
        // go through all the sub-chunks of the input and
        // process the ones you care about
        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            switch(sub->ID())
            {
                //
                case SRR2::ChunkID::ROAD_SEGMENT_DATA:
                {
                    tlRoadSegmentDataChunk* rsd1 = dynamic_cast<tlRoadSegmentDataChunk*>( sub );
                    char newName[256];
                    strcpy( newName, prepend );
                    strcat( newName, rsd1->GetName() );
                    rsd1->SetName( newName );
                    segDataInventory.push_back( rsd1 );

                    break;
                }
                case SRR2::ChunkID::ROAD:
                {
                    unsigned int count = sub->SubChunkCount();

                    unsigned int i;
                    for ( i = 0; i < count; ++i )
                    {
                        tlRoadSegmentChunk* rs = dynamic_cast<tlRoadSegmentChunk*>(sub->GetSubChunk( i ));
                        char newName[256];
                        strcpy( newName, prepend );
                        strcat( newName, rs->GetName() );
                        rs->SetName( newName );

                        //Make sure to prepend to the rsd too!
                        strcpy( newName, prepend );
                        strcat( newName, rs->GetRoadSegmentData() );
                        rs->SetRoadSegmentData( newName );

                        segInventory.push_back( rs );
                    }

                    tlRoadChunk* road = dynamic_cast<tlRoadChunk*>(sub);
                    char newName[256];
                    strcpy( newName, prepend );
                    strcat( newName, road->GetName() );
                    road->SetName( newName );

                    //And the intersections.
                    strcpy( newName, prepend );
                    strcat( newName, road->GetStartIntersection() );
                    road->SetStartIntersection( newName );

                    strcpy( newName, prepend );
                    strcat( newName, road->GetEndIntersection() );
                    road->SetEndIntersection( newName );

                    roadInventory.push_back( road );
                    break;
                }
                case SRR2::ChunkID::INTERSECTION:
                {
                    tlIntersectionChunk* intersection = dynamic_cast<tlIntersectionChunk*>(sub);

                    intersectionInventory.push_back( intersection );
                    break;
                }
                default:

                    // this is not a chunk that we care about
                    // so simply copy it to the output wrapper chunk
                    // the optional parameter to AppendSubChunk
                    // indicates that we have merely copied a pointer
                    // so the destructor of outchunk should not
                    // destroy this sub-chunk as that duty will be
                    // taken care of by the destructor of inchunk
                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
            }
        }

            
        //Let's process the segs and data now.
        std::list< tlRoadSegmentDataChunk* >::iterator ri;
        std::list< tlRoadSegmentDataChunk* >::iterator rj;

        unsigned int type = 0;

        for ( ri = segDataInventory.begin(); ri != segDataInventory.end(); ri++ )
        {
            bool found = false;

            for ( rj = sdi.begin(); rj != sdi.end(); rj++ )
            {
                if ( (*ri)->NumLanes() == (*rj)->NumLanes() &&
                     (*ri)->HasShoulder() == (*rj)->HasShoulder() &&
                     (*ri)->Direction() == (*rj)->Direction() &&
                     (*ri)->Top() == (*rj)->Top() &&
                     (*ri)->Bottom() == (*rj)->Bottom() 
                   )
                {
                    //We already got this one!

                    //Let's replace the data from it's namesake seg.
                    std::list< tlRoadSegmentChunk* >::iterator rk;
                    for ( rk = segInventory.begin(); rk != segInventory.end(); rk++ )
                    {
                        if ( strcmp( (*rk)->Name(), (*ri)->Name() ) == 0 )
                        {
                            //This is the guy...
//                            if ( Param->Verbosity )
                            {
                                printf( "Reusing data:%s for Road Segment:%s\n", (*rj)->Name(), (*rk)->Name() );
                            }
                            (*rk)->SetRoadSegmentData( (*rj)->Name() );
                            break;
                        }
                    }

                    found = true;
                    break;
                }
            }

            if ( !found )
            {
                (*ri)->SetType( type );
                ++type;

                sdi.push_front( (*ri) );
            }
        }

        //Output the remaining stuff.
        for ( ri = sdi.begin(); ri != sdi.end(); ri++ )
        {
            outchunk->AppendSubChunk( (*ri), FALSE );
        }

        OptimizeRoads();

        //Rename the Intersections;
        RenameIntersections( prepend );

        std::list< tlIntersectionChunk* >::iterator intersect;
        for ( intersect = intersectionInventory.begin(); intersect != intersectionInventory.end(); intersect++ )
        {
            outchunk->AppendSubChunk( (*intersect), FALSE );
        }

        std::list< tlRoadChunk* >::iterator r;
        for( r = roadInventory.begin(); r != roadInventory.end(); r++ )
        {
            outchunk->AppendSubChunk( (*r), FALSE );
        }

        if(Param->Verbosity>5)
        {
            outchunk->Print();
        }

        char buf[P3DMAXNAME];
        if(Param->OutputFile)
        {
            strcpy(buf,Param->OutputFile);
        } else {
            strcpy(buf,Param->Files[i]);
        }

        // create the new output file
        tlFile output(new tlFileByteStream(buf, omWRITE), tlFile::CHUNK32);

        if(!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", buf);
            delete inchunk;
            delete outchunk;

            return false;
        }

        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->SortSubChunks();
        outchunk->Write(&output);

        // cleanup the no-longer-needed wrapper chunks
        delete inchunk;
        delete outchunk;
    
    } // end of main for loop

    return true;
}


void OptimizeRoads()
{
    //This is where road segments will bo joined to create larger road segments.

    std::list< tlRoadChunk* >::iterator roadIt;

    std::list< tlRoadSegmentChunk* > coPlanar;
    std::list< tlRoadSegmentChunk* > other;
    std::list< tlRoadSegmentChunk* > fresh;

    for ( roadIt = roadInventory.begin(); roadIt != roadInventory.end(); roadIt++ )
    {
        tlRoadChunk* road = *roadIt;

        coPlanar.clear();
        other.clear();
        fresh.clear();

        unsigned int i;
        for ( i = 0; i < road->SubChunkCount(); ++i )
        {
            fresh.push_back( dynamic_cast<tlRoadSegmentChunk*>(road->GetSubChunk(i)) );
        }

        while ( !fresh.empty() )
        {
            //TODO
            break;
        }
    }
}

void RenameIntersections( const char* prepend )
{
   std::list< tlIntersectionChunk* >::iterator intersectionIt;

   for ( intersectionIt = intersectionInventory.begin(); intersectionIt != intersectionInventory.end(); intersectionIt++ )
   {
        tlIntersectionChunk* intersection = *intersectionIt;

        //Make a new name
        char newName[256];
        strcpy( newName, prepend );
        strcat( newName, intersection->GetName() );

        //Find all the roads that use the old name.
        std::list< tlRoadChunk* >::iterator roadIt;
        for ( roadIt = roadInventory.begin(); roadIt != roadInventory.end(); roadIt++ )
        {
            tlRoadChunk* road = *roadIt;

            if ( strcmp( road->GetEndIntersection(), intersection->GetName() ) == 0 )
            {
                road->SetEndIntersection( newName );
            }
            else if( strcmp( road->GetStartIntersection(), intersection->GetName() ) == 0 )
            {
                road->SetStartIntersection( newName );
            }
        }

        intersection->SetName( newName );
   }
}