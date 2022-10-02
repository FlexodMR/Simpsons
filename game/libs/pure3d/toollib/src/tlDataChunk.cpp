//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <memory.h>
#include "tlFile.hpp"
#include "ChunkManip.hpp"
#include "tlChunk16.hpp"
#include "tlString.hpp"

int tlDataChunk::sortPriority = 0x7fffffff;

struct tlChunkHandler
{
    // Chunk ID
    unsigned int ChunkId;
    // Chunk handler function
    // reads chunk of type ChunkId from tlReadChunk
    tlDataChunk* (*fp)(tlReadChunk16 *ch);
};

tlDataChunk::tlChunkHandlerCleaner::~tlChunkHandlerCleaner()
{
    for (int i = 0; i < chunkHandler.Count(); ++i)
    {
        delete chunkHandler[i];
    }
}

tlDataChunk::tlChunkHandlerCleaner tlDataChunk::chunkHC;


tlDataChunk::tlDataChunk( unsigned int ID )
{
    ident = ID;
    subcount = 0;
    SubChunkArray = NULL;
    ArraySize = -1;
    opaque = NULL;
    opaquesize = 0;
    memoryimage = NULL;
    imagesize = 0;
    FilePosition = 0;
}

tlDataChunk::tlDataChunk(tlFile* f)
{
    subcount = 0;
    SubChunkArray = NULL;
    ArraySize = -1;
    opaque = NULL;
    opaquesize = 0;
    memoryimage = NULL;
    imagesize = 0;
    FilePosition = 0;

    tlReadChunk16  ch(f);
    ch.Read();
    ident = ch.GetID();

    while (!ch.EndOfChunk()){
        AppendSubChunk(LoadChunk(f));
    }
}

tlDataChunk::tlDataChunk(tlDataChunk* ch)
{
    subcount = 0;
    SubChunkArray = NULL;
    ArraySize = -1;

    opaquesize = ch->opaquesize;
    if(ch->opaque)
    {
        opaque = (void*) malloc(opaquesize);
        memcpy(opaque,ch->opaque,opaquesize);
    } else {
        opaque = NULL;
    }

    imagesize = ch->imagesize;
    if(ch->memoryimage)
    {
        memoryimage = (void*) malloc(imagesize);
        memcpy(memoryimage,ch->memoryimage,imagesize);
    } else {
        memoryimage = NULL;
    }
        
    FilePosition = ch->FilePosition;

    ident = ch->ident;

    for(int subch = 0; subch < ch->SubChunkCount(); subch++)
    {
        AppendSubChunk(ch->GetSubChunk(subch)->Copy());
    }
}

tlDataChunk*
tlDataChunk::Copy()
{
    return new tlDataChunk(this);
}

bool
tlDataChunk::operator==(const tlDataChunk& a)
{
    if(ident != a.ident)
    {
        return false;
    }

    if(opaquesize != a.opaquesize)
    {
        return false;
    }
    
    if(memcmp(opaque, a.opaque, opaquesize) != 0)
    {
        return false;
    }

    // check the subchunks
    if(subcount != a.subcount)
    {
        return false;
    }

    for(int subch = 0; subch < subcount; subch++)
    {
        if(!((*GetSubChunk(subch)) == (*a.GetSubChunk(subch))))
        {
            return false;
        }
    }
    return true;
}

bool
tlDataChunk::NameCompare(const tlDataChunk& a)
{
    // This chunk has no name, so we must compare the bits
    return operator==(a);
}

tlDataChunk::~tlDataChunk()
{
    if(subcount)
    {
        for(int i=0;i<subcount;i++)
        {
            if(SubChunkArray[i].destroy)
            {
                delete SubChunkArray[i].chunk;
            }
        }
    }
    if(SubChunkArray)
    {
        delete[] SubChunkArray;
    }
    if(opaque)
    {
        free(opaque);
    }
    if(memoryimage)
    {
        free(memoryimage);
    }
}

tlDataChunk *
tlDataChunk::Create(tlReadChunk16 *ch) 
{
    tlDataChunk* dch = new tlDataChunk(ch->GetID());
    tlFile* f = ch->GetFile();
    int size = ch->GetContentSize() - ch->GetHeaderSize();
    if(size)
    {
        char* buf = new char[size];
        f->GetBytes(buf, size);
        dch->SetData(buf, size);
        delete buf;
    }
    while (!ch->EndOfChunk())
    {
        dch->AppendSubChunk(LoadChunk(f));
    }
    return dch;
}

void
tlDataChunk::GrowArray(int newsize)
{
    if( ArraySize > newsize )
    {
        return;
    }

    // Resize the array.
    // If we have a long way to go, just make it bigger
    // otherwise, double the array size

    if(ArraySize * 2 < newsize)
    {
        ArraySize = newsize;
    }else{
        ArraySize = ArraySize * 2;
    }

    SubChunk* tmp = new SubChunk[ArraySize];

    // Copy the old one
    if(SubChunkArray)
    {
        for(int i=0;i<subcount;i++)
        {
            tmp[i] = SubChunkArray[i];
        }
        delete[] SubChunkArray;
    }
    SubChunkArray = tmp;
}

void
tlDataChunk::Write(tlFile* f)
{
    tlWriteChunk16 ch(f, ident);
    if(opaquesize){
        f->PutBytes(opaque,opaquesize);
    }
    ch.ContentFinish();
    if(subcount)
    {
        for(int i=0;i<subcount;i++)
        {
            GetSubChunk(i)->Write(f);
        }
    }
}

void
tlDataChunk::WriteMemImage(tlFile* f)
{
    f->PutBytes(GetMemImage(),GetMemImageSize());
    if(subcount){
        for(int i=0;i<subcount;i++)
        {
            GetSubChunk(i)->WriteMemImage(f);
        }
    }
}


void
tlDataChunk::Print(int indent, unsigned int depth, unsigned int typemask)
{

    if ( depth == 0 )
    {
        return;
    }
    
    printf("%*sChunk ID %04x FileOffset = %6x\n",indent,"",(int) ident, FilePosition);
    
    if(opaquesize){
        printf("%*s  Opaque Data Size: %d\n",indent,"",opaquesize);
    }
    if(subcount){
        printf("%*s  SubChunks (%d):\n",indent,"",subcount);
        for(int i=0;i<subcount;i++){
            GetSubChunk(i)->Print(indent+4, depth - 1, typemask);
        }
    }
}

void
tlDataChunk::PrintFormatted(int indent)
{

    printf("%*schunk 0x%04x\n",indent,"",(int) ident);
    
    if(opaquesize){
        printf("%*s  repeat 1 byte  # unknown chunk\n",indent,"");
        for(int i = 0; i < opaquesize ; i++)
        {
            printf("%*s    0x%02x\n",indent,"",((char*)opaque)[i]);
        }
        printf("%*s  endrepeat\n",indent,"");
    }
    if(subcount){
        for(int i=0;i<subcount;i++){
            GetSubChunk(i)->PrintFormatted(indent+2);
        }
    }
    printf("%*sendchunk\n",indent,"");
}

const char* tlDataChunk::GetType() const
{
    return "tlDataChunk";
}

int tlDataChunk::GetFieldCount() const
{
    return 0;
}

bool tlDataChunk::GetFieldIsArray(int) const
{
    return false;
}

int tlDataChunk::GetFieldArrayCount(int) const
{
    return 0;
}

const char* tlDataChunk::GetFieldType(int) const
{
    return 0;
}

const char* tlDataChunk::GetFieldName(int) const
{
    return 0;
}

bool tlDataChunk::GetFieldValue(int, char*, int) const
{
    return false;
}

bool tlDataChunk::GetFieldArrayValue(int, int, char*, int) const
{
    return false;
}

bool tlDataChunk::GetFieldUpdatable(int) const
{
    return false;
}

bool tlDataChunk::SetFieldValue(int, const char*)
{
    return false;
}

bool tlDataChunk::SetFieldArrayValue(int, int, const char*)
{
    return false;
}

long
tlDataChunk::Size()
{
    // This is ugly.  We really should have a struct to for the header so we can
    // use sizeof(tlChunkHeader)
    return sizeof(ident) + sizeof(long) + DataSize();
}

long
tlDataChunk::DataSize()
{
    return opaquesize + SubChunkSize();
}

long
tlDataChunk::OpaqueSize()
{
    return opaquesize;
}

long
tlDataChunk::SubChunkSize()
{
    int size = 0;
    for(int i=0;i<subcount;i++){
        size += GetSubChunk(i)->Size();
    }
    return size;
}

// Changed by Bryan Ewert on 14 Jan 2002 - added 'const' qualifier.
unsigned int
tlDataChunk::ID() const
{
    return ident;
}

int
tlDataChunk::SubChunkCount() const 
{
    return subcount;
}

tlDataChunk*&
tlDataChunk::GetSubChunk(int index) const
{
    assert(index<subcount);
    return SubChunkArray[index].chunk;
}

tlDataChunk*&
tlDataChunk::operator[](int index) const
{
    return GetSubChunk(index);
}

void
tlDataChunk::InsertSubChunk(tlDataChunk* ch, int index, int Destroy)
{
    assert(index<subcount+1);
    GrowArray(subcount+1);

    // Shift up the contents
    for(int i=subcount;i>index;i--)
    {
        SubChunkArray[i]=SubChunkArray[i-1];
    }

    SubChunkArray[index].chunk = ch;
    SubChunkArray[index].destroy = Destroy;
    subcount++;
}

void
tlDataChunk::RemoveSubChunk(int index)
{
    assert(index<subcount);

    // Shift down the contents
    for(int i=index;i<subcount-1;i++){
        SubChunkArray[i]=SubChunkArray[i+1];
    }
    subcount--;
}
    
void
tlDataChunk::AppendSubChunk(tlDataChunk* ch, int Destroy)
{
    if (ch)
    {
        GrowArray(subcount+1);

        SubChunkArray[subcount].chunk = ch;
        SubChunkArray[subcount].destroy = Destroy;
        subcount++;
    }
}

void
tlDataChunk::AppendSubChunks(tlDataChunk* ch, int Destroy)
{
    GrowArray(subcount+ch->SubChunkCount());

    for(int i=0;i<ch->SubChunkCount();i++){
        SubChunkArray[subcount].chunk = ch->GetSubChunk(i);
        SubChunkArray[subcount].destroy = Destroy;
        subcount++;
    }
}

void
tlDataChunk::TransferSubChunks(tlDataChunk* ch)
{
    ch->AppendSubChunks(this, 1);
    subcount = 0;
}


int
PriorityCompare( const void *elem1, const void *elem2 )
{
    tlDataChunk* ch1 = ((tlDataChunk::SubChunk*)elem1)->chunk;
    tlDataChunk* ch2 = ((tlDataChunk::SubChunk*)elem2)->chunk;

    return ch1->SortPriority() - ch2->SortPriority();
}

// HMM, This doesn't handle the DestroyArray!  Need to fix that ASAP.

void
tlDataChunk::SortSubChunks()
{
    qsort(SubChunkArray, subcount, sizeof(SubChunk), PriorityCompare);
}



void*
tlDataChunk::GetData()
{
    return opaque;
}
    
void
tlDataChunk::SetData(void* d, int size)
{
    char *tmp = (char*) malloc(size);
    memcpy(tmp,d,size);
    opaquesize = size;
    opaque = tmp;
}

void*
tlDataChunk::GetMemImage()
{
    return memoryimage;
}

int
tlDataChunk::GetMemImageSize()
{
    return imagesize;
}

void
tlDataChunk::SetMemImage(void* d, int size)
{
    char *tmp = (char*) malloc(size);
    memcpy(tmp,d,size);
    imagesize = size;
    memoryimage = tmp;
}

tlDataChunk*
tlDataChunk::LoadChunk(tlFile* f)
{
    tlDataChunk *dch;
    tlReadChunk16  ch(f);
    int position = f->GetPosition();
    ch.ReadNext();
    unsigned int id = ch.GetID();
    bool chunkRegisterd = false;         
    // check does chunk has a registered chunk handler
    // if it does use it to read a chunk from a file
    for( int i = 0; i < chunkHC.chunkHandler.Count() && !chunkRegisterd; i++ )
    {
        if (chunkHC.chunkHandler[i]->ChunkId == id)
        {
            dch = chunkHC.chunkHandler[i]->fp(&ch);
            chunkRegisterd = true;
        }
    }
    // Not registered, so we treat it as opaque
    if (!chunkRegisterd)
    {       
        dch = Create(&ch);
    }

    ch.Skip();
    dch->FilePosition = position;
    return dch;
}

void
tlDataChunk::RegisterChunk(unsigned int id, tlDataChunk* (*fp)(tlReadChunk16*))
{
    tlChunkHandler *ch = new tlChunkHandler;
    ch->ChunkId = id;
    ch->fp = fp;
    chunkHC.chunkHandler.Append(ch);
}

extern void RegisterExtraChunks(void);

static const unsigned int initialChunkPriorities[] =
{
    P3D_HISTORY,
    P3D_EXPORT_INFO,
    Pure3D::Texture::IMAGE,
    Pure3D::Texture::TEXTURE,
    Pure3D::Shader::SHADER,
    Pure3D::Font::TEXTURE_FONT,
    Pure3D::Font::IMAGE_FONT,
    Pure3D::Texture::SPRITE,
    Pure3D::Animation::VertexAnim::KEY,
    Pure3D::Animation::AnimationData::ANIMATION,
    Pure3D::Light::LIGHT,
    P3D_LIGHT_GROUP,
    Pure3D::Light::PHOTON_MAP,
    P3D_CAMERA,
    P3D_SKELETON,
    Pure3D::OpticEffect::LENS_FLARE_GROUP,
    Pure3D::ParticleSystem::SYSTEM_FACTORY,
    Pure3D::ParticleSystem::SYSTEM,
    Pure3D::BillboardObject::QUAD,
    Pure3D::BillboardObject::QUAD_GROUP,
    Pure3D::Mesh::MESH,
    Pure3D::Mesh::SKIN,
    Pure3D::Expression::VERTEX_EXPRESSION_GROUP,
    Pure3D::Expression::VERTEX_EXPRESSION_MIXER,
    P3D_COMPOSITE_DRAWABLE,
    Pure3D::AnimatedObject::FACTORY,
    Pure3D::AnimatedObject::OBJECT,
    Pure3D::SceneGraph::SCENEGRAPH,
    Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER,
    P3D_MULTI_CONTROLLER,
    Pure3D::Locator::LOCATOR,
    Pure3D::GameAttr::GAME_ATTR,
    SmartProp::SMARTPROP,
	StateProp::STATEPROP

};


void
tlDataChunk::RegisterDefaultChunks()
{

    RegisterChunk(Pure3D::Animation::AnimationData::ANIMATION, &tlAnimationChunk::Create);
    RegisterChunk(Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER, &tlFrameControllerChunk::Create);
    RegisterChunk(Pure3D::AnimatedObject::FACTORY, &tlAnimatedObjectFactoryChunk::Create);
    RegisterChunk(Pure3D::AnimatedObject::OBJECT, &tlAnimatedObjectChunk::Create);
    RegisterChunk(Pure3D::Animation::VertexAnim::KEY, &tlVertexAnimKeyChunk::Create);

	RegisterChunk(StateProp::STATEPROP, &tlStatePropChunk::Create);
    RegisterChunk(Pure3D::Mesh::MESH, &tlMeshChunk::Create);
    RegisterChunk(Pure3D::Mesh::SKIN, &tlSkinChunk::Create);
    RegisterChunk(Pure3D::Mesh::SHADOWMESH, &tlShadowMeshChunk::Create);
    RegisterChunk(Pure3D::Mesh::SHADOWSKIN, &tlShadowSkinChunk::Create);
    RegisterChunk(Pure3D::Mesh::EXPRESSIONOFFSETS, &tlExpressionOffsetsChunk::Create);

    RegisterChunk(Pure3D::Expression::VERTEX_EXPRESSION_GROUP, &tlExpressionGroupChunk::Create);
    RegisterChunk(Pure3D::Expression::VERTEX_EXPRESSION_MIXER, &tlExpressionMixerChunk::Create);

    RegisterChunk(Pure3D::Texture::IMAGE, &tlImageChunk::Create);
    RegisterChunk(Pure3D::Texture::TEXTURE, &tlTextureChunk::Create);
    RegisterChunk(Pure3D::Texture::SPRITE, &tlSpriteChunk::Create);
    RegisterChunk(Pure3D::Shader::SHADER, &tlShaderChunk::Create);
    RegisterChunk(Pure3D::SceneGraph::SCENEGRAPH, &tlScenegraphChunk::Create);
    RegisterChunk(Pure3D::Light::LIGHT, &tlLightChunk::Create);  
    RegisterChunk(Pure3D::Light::PHOTON_MAP, &tlPhotonMapChunk::Create);
    RegisterChunk(Pure3D::Light::DECAY_RANGE, &tlLightDecayRangeChunk::Create);
    RegisterChunk(Pure3D::Light::DECAY_RANGE_ROTATION_Y, &tlLightDecayRangeRotationYChunk::Create);
    RegisterChunk(Pure3D::GameAttr::GAME_ATTR, &tlGameAttrChunk::Create);
    RegisterChunk(Pure3D::Locator::LOCATOR, &tlLocatorChunk::Create);
    RegisterChunk(Pure3D::ParticleSystem::SYSTEM_FACTORY, &tlParticleSystemFactoryChunk::Create);
    RegisterChunk(Pure3D::ParticleSystem::SYSTEM, &tlParticleSystemChunk::Create);
    RegisterChunk(Pure3D::OpticEffect::LENS_FLARE_GROUP, &tlLensFlareGroupChunk::Create);
    RegisterChunk(Pure3D::BillboardObject::QUAD_GROUP, &tlBillboardQuadGroupChunk::Create);
    RegisterChunk(Pure3D::Scrooby::PROJECT, &tlScroobyProjectChunk::Create);
    RegisterChunk(Pure3D::Scrooby::SCREEN, &tlScroobyScreenChunk::Create);
    RegisterChunk(Pure3D::Scrooby::TEXTBIBLE, &tlScroobyTextBibleChunk::Create );
    RegisterChunk(Pure3D::Scrooby::LANGUAGE, &tlScroobyLanguageChunk::Create );

    RegisterChunk(Pure3D::Font::TEXTURE_FONT, &tlTextureFontChunk::Create);
    RegisterChunk(Pure3D::Font::IMAGE_FONT, &tlImageFontChunk::Create);
    
    RegisterChunk(Simulation::Collision::OBJECT,    &tlCollisionObjectChunk::Create);
    RegisterChunk(Simulation::Physics::OBJECT,      &tlPhysicsObjectChunk::Create);
    RegisterChunk(Simulation::Flexible::OBJECT,     &tlFlexibleObjectChunk::Create);
    RegisterChunk(Simulation::Flexible::JOINT,      &tlFlexibleJointChunk::Create);

    // Old 16 bit chunks
    RegisterChunk(P3D_ALIGN, &tlDataChunkAligned::Create);

    RegisterChunk(Pure3D::BillboardObject::QUAD_V14, &tlBillboardQuadV14Chunk::Create);    
    RegisterChunk(P3D_POSE_ANIM, &tlPoseAnimChunk16::Create);
    RegisterChunk(P3D_CAMERA, &tlCameraChunk16::Create);
    RegisterChunk(P3D_HISTORY, &tlHistoryChunk16::Create);
    RegisterChunk(P3D_EXPORT_INFO, &tlExportInfoChunk16::Create);
    RegisterChunk(P3D_VISIBILITY_ANIM, &tlVisibilityAnimChunk16::Create);
    RegisterChunk(P3D_VISIBILITY_ANIM_CHANNEL, &tlVisibilityAnimChannelChunk16::Create);
    RegisterChunk(P3D_TEXTURE_ANIM, &tlTextureAnimChunk16::Create);
  
    RegisterChunk(P3D_SKELETON, &tlSkeletonChunk16::Create);   
    
    RegisterChunk(P3D_COMPOSITE_DRAWABLE,           &tlCompositeDrawableChunk16::Create);
    RegisterChunk(P3D_COMPOSITE_DRAWABLE_SKIN_LIST, &tlCompositeDrawableSkinListChunk16::Create);
    RegisterChunk(P3D_COMPOSITE_DRAWABLE_PROP_LIST, &tlCompositeDrawablePropListChunk16::Create);
    RegisterChunk(P3D_COMPOSITE_DRAWABLE_SKIN,      &tlCompositeDrawableSkinChunk16::Create);
    RegisterChunk(P3D_COMPOSITE_DRAWABLE_PROP,      &tlCompositeDrawablePropChunk16::Create);

    RegisterChunk(P3D_CAMERA_ANIM,              &tlCameraAnimChunk16::Create);
    RegisterChunk(P3D_CAMERA_ANIM_CHANNEL,      &tlCameraAnimChannelChunk16::Create);
    RegisterChunk(P3D_CAMERA_ANIM_POS_CHANNEL,  &tlCameraAnimPosChannelChunk16::Create);
    RegisterChunk(P3D_CAMERA_ANIM_LOOK_CHANNEL, &tlCameraAnimLookChannelChunk16::Create);
    RegisterChunk(P3D_CAMERA_ANIM_UP_CHANNEL,   &tlCameraAnimUpChannelChunk16::Create);
    RegisterChunk(P3D_CAMERA_ANIM_FOV_CHANNEL,  &tlCameraAnimFOVChannelChunk16::Create);

    RegisterChunk(P3D_LIGHT_ANIM,                &tlLightAnimChunk16::Create);
    RegisterChunk(P3D_LIGHT_ANIM_CHANNEL,        &tlLightAnimChannelChunk16::Create);
    RegisterChunk(P3D_LIGHT_ANIM_COLOUR_CHANNEL, &tlLightAnimColourChannelChunk16::Create);
    RegisterChunk(P3D_LIGHT_ANIM_PARAM_CHANNEL,  &tlLightAnimParamChannelChunk16::Create);
    RegisterChunk(P3D_LIGHT_ANIM_ENABLE_CHANNEL, &tlLightAnimEnableChannelChunk16::Create);

    RegisterChunk(P3D_LIGHT_GROUP,               &tlLightGroupChunk16::Create);

    RegisterChunk(P3D_FRAME_CONTROLLER,          &tlFrameControllerChunk16::Create);
    RegisterChunk(P3D_MULTI_CONTROLLER,          &tlMultiControllerChunk16::Create);

    RegisterChunk(P3D_SG_TRANSFORM_ANIM, &tlScenegraphTransformAnimChunk16::Create);

    RegisterChunk(P3D_EXPRESSION_ANIM, &tlExpressionAnimChunk16::Create);
    RegisterChunk(P3D_EXPRESSION_GROUP, &tlExpressionGroupChunk16::Create);
    RegisterChunk(P3D_EXPRESSION_MIXER, &tlExpressionMixerChunk16::Create);
    
    RegisterChunk(SmartProp::SMARTPROP, &tlSmartPropChunk::Create);

    RegisterChunk(MemorySection::MEMORYSECTION, &tlMemorySectionChunk::Create);

    RegisterExtraChunks();
}

static const unsigned int maxChunkPriorities = 128;
static unsigned int usedChunkPriorities = 0;
static unsigned int chunkPriorities[maxChunkPriorities];

class DummyInit
{
public:
    DummyInit()
    {
         usedChunkPriorities = 0;
        for(int i = 0; i < (sizeof(initialChunkPriorities) / sizeof(int)); i++)
        {
            tlDataChunk::AddChunkPriority(initialChunkPriorities[i], tlDataChunk::PRIORITY_END);
        }
    }
};

static DummyInit s_dummy;

int 
tlDataChunk::FindPriority(unsigned int id)
{
    int tablecount = usedChunkPriorities;
    for(int i=0; i<tablecount; i++)
    {
        if(id == chunkPriorities[i])
        {
            return i;
        }
    }
    return 0x7fffffff;
}

void tlDataChunk::AddChunkPriority(unsigned addID, ChunkPriorityPosition position, unsigned otherID)
{
    assert((usedChunkPriorities + 1) < maxChunkPriorities);
    assert(FindPriority(addID) == 0x7fffffff); // no changing chunk priorities (yet)

    unsigned index;
    
    switch(position)
    {
        case PRIORITY_BEGINNING:
            index = 0;
            break;

        case PRIORITY_BEFORE:
            index = FindPriority(otherID);
            assert(index != 0x7fffffff); 
            break;
        case PRIORITY_AFTER:
            index = FindPriority(otherID) + 1;
            if( index == 0x80000000)
            {
                index = usedChunkPriorities;
            }
            break;
        case PRIORITY_END:
            index = usedChunkPriorities;
            break;
    }

    for(int i = (int)usedChunkPriorities; i > (int)index ; i--)
    {
        chunkPriorities[i] = chunkPriorities[i-1];
    }
    chunkPriorities[index] = addID;
    usedChunkPriorities++;
}

const char* tlDataChunk::GetName(void)
{
    static char dummy[] = "NAMELESS";
    return dummy;
}

tlDataChunkAligned::tlDataChunkAligned(unsigned int ID):tlDataChunk(ID)
{
    // hi   
}

tlDataChunkAligned::tlDataChunkAligned(tlFile* f):tlDataChunk(f)
{
    // I have no idea why anyone would ever call this
}

tlDataChunkAligned::~tlDataChunkAligned()
{
    // bonjour
}

tlDataChunk *
tlDataChunkAligned::Create(tlReadChunk16 *ch) 
{
    tlDataChunk* dch = new tlDataChunkAligned(ch->GetID());
    int size = ch->GetDataSize();
    char* buf = new char[size];
    tlFile* f = ch->GetFile();
    f->GetBytes(buf, size);
    dch->SetData(buf, size);
    delete buf;
    return dch;
}


void tlDataChunkAligned::Write(tlFile* f)
{
    tlWriteChunk16Aligned ch(f, P3D_ALIGN);    
    // the actual writing and padding takes place when this object is 
    // destroyed - ie. goes out of scope - ie. now.
}

void
tlDataChunkAligned::Print(int indent,
                                  unsigned int depth,
                                  unsigned int typemask)
{
    if ( depth == 0 )
    {
        return;
    }
    printf("%*sAlignment Chunk %04x FileOffset = %6x\n",indent,"",(int) ident, FilePosition);
}

    

