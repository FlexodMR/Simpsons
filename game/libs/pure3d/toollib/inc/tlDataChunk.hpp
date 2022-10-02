//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLDATACHUNK_HPP
#define _TLDATACHUNK_HPP


#include "tlTable.hpp"
#include "chunks.h"
#include "chunkids.hpp"
#include "tlentity.hpp"

class tlChunk16;
class tlReadChunk16;
class tlFile;
struct tlChunkHandler;

//: A base class for chunks containing chunks
class tlDataChunk : public tlEntity
{
public:
    //////////////////////////////////////////////////////////////////////////
    // tlEntity Hack
    //////////////////////////////////////////////////////////////////////////
    //const char* GetName() const { return name; }

    void        SetName(const char* n){assert(false);}

    //static TLUID   MakeUID(const char* s);  
    virtual TLUID          UID(){    return MakeUID(GetName()); }



    virtual void LoadFromChunk16(tlDataChunk *ch) {assert(false);}
    virtual tlDataChunk *Chunk16(void) {assert(false);return 0;}

    // This is the new interface, but until old code is updated, it just calls the old interface
    virtual tlDataChunk *Chunk(void) {assert(false);return 0;}

    // Connect up any references using the inventory
    //virtual void ResolveReferences(tlInventory* inv) {}

    // Tag this entity with a value 
    //void Mark(int m) { mark = m; }
    //int GetMark() const { return mark; }

    // Tag all of this entities references with a value
    //virtual void MarkReferences(int m) {}

    // If any of it's references have mark m, return true
    //virtual bool FindReferenceMark(int m) { return (m == mark); }
    
    //////////////////////////////////////////////////////////////////////////
    //tlEntity Hack Ends
    //////////////////////////////////////////////////////////////////////////

    tlDataChunk(unsigned int ID = Pure3D::DATA_FILE);     //: Create an empty chunk
    
    tlDataChunk(tlFile* f);                     //: Read a chunk from a file
    tlDataChunk(tlDataChunk* ch);              //: Copy this chunk
    virtual ~tlDataChunk();                    
    static void RegisterChunk(unsigned int id, tlDataChunk* (*fp)(tlReadChunk16*)); // Add a chunk type
    static void RegisterDefaultChunks();     //: calls RegisterChunk for top level P3D Chunks
    static tlDataChunk *Create(tlReadChunk16 *ch);
    virtual void Write(tlFile *f);             //: Write this chunk to a file
    virtual void WriteMemImage(tlFile *f);     //: Write the memory image from this chunk to a file
    virtual void Print(int indent = 0,
                             unsigned int depth = 0xffffffff,
                             unsigned int typemask = 0xffffffff);
                                                                    //: Print the contents of this chunk to stdout in a human readable format
    virtual void PrintFormatted(int indent = 0);//: Print the contents of this chunk to stdout in a
                                                                      // machine readable format                     

    virtual const char* GetType() const;                         //: Queries the chunk type name "tlDataChunk", etc.
    virtual int GetFieldCount() const;                           //: Queries # of data fields in chunk
    virtual bool GetFieldIsArray(int) const;                     //: Is field[idx] an array?
    virtual int GetFieldArrayCount(int) const;                   //: Length of array at field[idx]
    virtual const char* GetFieldType(int) const;                 //: Queries the type of field[idx]
    virtual const char* GetFieldName(int) const;                 //: Queries the name of field[idx]
    virtual bool GetFieldValue(int, char*, int) const;           //: Queries the value of field[idx]
                                                                                     //: - this value should be machine readable
    virtual bool GetFieldArrayValue(int, int, char*, int) const; //: Queries the value of field[idx] at the given array index
                                                                                     //: - this value should be machine readable
    virtual bool GetFieldUpdatable(int) const;                   //: Returns true if field[idx] is updatable
    virtual bool SetFieldValue(int, const char*);                //: Sets the value of field[idx]
    virtual bool SetFieldArrayValue(int, int, const char*);      //: Sets the value of field[idx] at the given array index

    virtual tlDataChunk* Copy();              // Return a copy of this chunk
    virtual bool operator==(const tlDataChunk& ch);
    virtual bool NameCompare(const tlDataChunk& ch);
    virtual long Size();                      //: The size in bytes of the chunk including headers
    virtual long DataSize();                  //: The size without the headers
    long OpaqueSize();                        //: The size of the opaque data
    long SubChunkSize();                      //: The size of all SubChunks
    
    // Changed by Bryan Ewert on 14 Jan 2002 - added 'const' qualifier.
    unsigned int ID() const;                     //: Return a reference to the Chunk's ID.
        // Since this is a reference, it can be used to set the ID as well:
        //
        //      myChunk.ID() = GEO_ANIM;
        //
        // ** No, please!  This completely disallows 'const' correct access!
        //
        //      const tlDataChunk* pMyChunk;
        //      ...
        //      int id = tlDataChunk->ID();
        //
        //    error C2662: 'ID' : cannot convert 'this' pointer from 'const class tlDataChunk' to 'class tlDataChunk &'
    void SetID(unsigned int id)                     { ident = id; }


    int SubChunkCount() const;                      //: How many SubChunks are in this chunk?
    
    tlDataChunk*& GetSubChunk(int index) const;     //: Return the SubChunk at index
    tlDataChunk*& operator[](int index) const;      //: Return the SubChunk at index

    void InsertSubChunk(tlDataChunk* ch, int index, int Destroy = 1);
                                                                    //: Adds ch to the SubChunk list at index
    void RemoveSubChunk(int index);           //: Removes the chunk at index from the SubChunk list

    void AppendSubChunk(tlDataChunk* ch, int Destroy = 1);
                                                                    //: Adds ch to the end of the SubChunk list
    void AppendSubChunks(tlDataChunk* ch, int Destroy = 1);
                                                                    //: Adds subchunks of ch to the end of the SubChunk list
    void TransferSubChunks(tlDataChunk* ch);  //: Transfers all subchunks to specified chunk (which now owns them)

    void SortSubChunks();                       //: Sorts chunks by dependancy priority
    virtual int SortPriority() {return tlDataChunk::sortPriority;}  //: By default, unknown chunks sort last
    

    // update the chunk prority list
    // example :
    //     tlDataChunk::AddChunkPriority(MyGame::MyChunkID, tlDataChunk::PRIORITY_AFTER, Pure3D::Mesh::MESH)
    //
    // this would add a new chunk to be sorted after Pure3D meshes
    //
    enum ChunkPriorityPosition
    {
        PRIORITY_BEGINNING,
        PRIORITY_BEFORE,
        PRIORITY_AFTER,
        PRIORITY_END
    };
    static void AddChunkPriority(unsigned addID, ChunkPriorityPosition position, unsigned otherID = 0);

    void* GetData();                          //: The opaque chunk data
    void  SetData(void* d, int size);         //: Sets the opaque chunk data to a copy of d

    inline void SetDataPtr(void *d, int size)
        {
            if(opaque) free(opaque);
            opaque = d; opaquesize = size;
        }
    
    void* GetMemImage();                      //: The memory image data
    int   GetMemImageSize();                  //: Size of the memory image data
    void  SetMemImage(void* d, int size);     //: Sets the memory image data to a copy of d

    static tlDataChunk* LoadChunk(tlFile* f);  //: Reads a chunk from a file.
                                                            // This function may return subclasses of tlDataChunk
    inline int Offset() { return FilePosition; }     //: Returns the offset of this chunk into a file.

    virtual const char* GetName(void);

protected:


    unsigned int   ident;                     //: Chunk ID
    int            subcount;                  //: Number of subchunks
    int            ArraySize;                 //: Number of spaces allocate for subchunks
    void*          opaque;                    //: Opaque chunk data - unknow data in the chunk
    int            opaquesize;                //: How big is data
    void*          memoryimage;               //: PSX Memory image  
    int            imagesize;                 //: How big is PSX memory image
    int            FilePosition;              //: Where was this chunk in the file
    void           GrowArray(int newsize);    //: Makes sure we can handle at least newsize SubChunks

    static int     sortPriority;
    static int     FindPriority(unsigned int id);

    class tlChunkHandlerCleaner               //: Class to clean up the chunkhandler table
    {
    public:

        ~tlChunkHandlerCleaner();

        tlTable<tlChunkHandler*> chunkHandler; //: array of registered chunk handlers
    };

    static tlChunkHandlerCleaner chunkHC;

private:
    tlDataChunk(const tlDataChunk&);
    tlDataChunk& operator=(const tlDataChunk&);

    struct SubChunk {
        tlDataChunk* chunk;
        int          destroy;
    };

    SubChunk*      SubChunkArray;             //: Array of subchunks

    friend int PriorityCompare ( const void *elem1, const void *elem2 );
};





// this class is need by the p3dalign tool to stick some of these
// type of chunks into the output tlDataChunk in front of PSX_TEXTURE
// chunks

class tlDataChunkAligned : public tlDataChunk
{
public:
    tlDataChunkAligned(unsigned int ID = P3D_ALIGN);     //: Create an empty chunk
    
    tlDataChunkAligned(tlFile* f);                     //: Read a chunk from a file
    virtual ~tlDataChunkAligned();                    
    
    static tlDataChunk *Create(tlReadChunk16 *ch);


    virtual void Write(tlFile *f);             //: Write this chunk to a file
    virtual void Print(int indent = 0,        //: Print the contents of this chunk to stdout in a human readable format
                             unsigned int depth = 0xffffffff,
                             unsigned int typemask = 0xffffffff); 
};


#endif

// Local Variables: ***
// comment-column: 45 ***
// End: ***

