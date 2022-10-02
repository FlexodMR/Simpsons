/*===========================================================================
    File:: main.cpp

    This tool renames objects in Pure3D files.

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <ctype.h>
#include "toollib.hpp"
#include "ChunkManip.hpp"
#include "Param.hpp"

Parameters* Param;

struct NameMapping
{
    unsigned long oldid;
    unsigned long newid;
    char  oldname[P3DMAXNAME];
    char  newname[P3DMAXNAME];
    int operator==( NameMapping& n) { return newid == n.newid; }
};

class NameMappingList : public tlTable<NameMapping>
{
    int   IsUnique(const char* name);
public:
    void  Add(const char* oname, const char* nname);
    char* MakeUnique(const char* name);
    char* Remap(const char* name);
};

NameMappingList AnimNames;
NameMappingList MTreeNames;
NameMappingList MaterialNames;
NameMappingList MaterialTextureNames;
NameMappingList MeshNames;
NameMappingList STreeNames;
NameMappingList TextureNames;
NameMappingList HSplineNames;
NameMappingList HSTreeNames;
NameMappingList HSParamAnimNames;

char*
strlwr(char* str)
{
    while(*str)
    {
        if(isupper(*str))
        { 
            *str = tolower(*str);
        }
        str++;
    }
}

void main(int argc, char* argv[])
{
    // Process parameters
    Param = new Parameters(argc,argv);

    // load chuk handlers for default chunks
    tlDataChunk::RegisterDefaultChunks();

    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        // open each file
        tlFile input(new tlFileByteStream(Param->Files[ i ],omREAD));
        if(!input.IsOpen()) 
        {
            printf("Could not open %s\n", Param->Files[ i ]);
            exit(-1);
        }

        // make a tlDataChunk from the file
        tlDataChunk* filechunk = new tlDataChunk(&input);

        // close the input file
        input.Close();

        // build an output chunk
        tlDataChunk* outchunk = new tlDataChunk;
        if(Param->WriteHistory)
        {
            outchunk->AppendSubChunk(Param->HistoryChunk());
        }
        
        // current object name 
        const char * curName;
        // current object name converted to lowercase
        char lcName[255];
        // process each chunk in the input file
        for(int ch=0; ch < filechunk->SubChunkCount(); ch++)
        {
            tlDataChunk* sub = filechunk->GetSubChunk(ch);
            switch(sub->ID())
            {
                case STR_STREE:
                case STR_MAPPED_STREE:
                {
                    tlSTree str(sub);
                    // process STree name
                    if(Param->AllTypes || Param->DoStree)
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,str.GetName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                str.SetName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = str.GetName();                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                str.SetName(lcName);
                            }
                            if( Param->ToUnique )
                            {
                                str.SetName(STreeNames.MakeUnique(str.GetName()));
                            }
                        }
                    }
                    // process STree geometry name
                    if(Param->AllTypes || Param->DoStreeGeo)
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,str.GetGeoName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                str.SetGeoName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = str.GetGeoName();                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                str.SetGeoName(lcName);
                            }
                            if( Param->ToUnique )
                            {
                                str.SetGeoName(MeshNames.Remap(str.GetGeoName()));
                            }

                        }
                    }
                    outchunk->AppendSubChunk(str.Chunk16());
                    break;
                }
                case MTR_MTREE:
                {
                    tlMTree mtr(sub);
                    // process MTree name
                    if(Param->AllTypes || Param->DoMtree)
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,mtr.GetName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                mtr.SetName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = mtr.GetName();                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                mtr.SetName(lcName);
                            }
                            if( Param->ToUnique )
                            {
                                mtr.SetName(MTreeNames.MakeUnique(mtr.GetName()));
                            }

                        }
                    }
                    // process MTree geometry name
                    if(Param->AllTypes || Param->DoMtreeGeo)
                    {

                        // if new name was specified rename joints
                        for( int j = 0; j < mtr.NumJoints() ; j++)
                        {
                            tlMTreeJoint* jnt = mtr.GetJoint(j);
                            if((Param->FromPattern.Count() == 0) ||
                                glob(&Param->FromPattern,jnt->GeoName()))
                            {
                                if ( Param->ToName )
                                {
                                    jnt->SetGeoName(Param->ToName);
                                }
                                else if ( Param->ToLowercase )
                                {
                                    // get current name
                                    curName = jnt->GeoName();                        
                                    // convert it to lowercase
                                    strcpy(lcName, curName);
                                    strlwr(lcName);
                                    // set name                           
                                    jnt->SetGeoName(lcName);
                                }
                                if( Param->ToUnique )
                                {
                                    jnt->SetGeoName(MeshNames.Remap(jnt->GeoName()));
                                }
                            }
                        }
                    }
                    outchunk->AppendSubChunk(mtr.Chunk16());
                    break;
                }

                case P3D_FONT:
                {
                    tlFont font( sub );
                    if( Param->AllTypes || Param->DoFonts )
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,font.GetName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                font.SetName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = const_cast<char *>(font.GetName());                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                font.SetName(lcName);
                            }
                        }
                    }
                    outchunk->AppendSubChunk(font.Chunk16());
                    break;
                }


                case GEO_PRO_TEXTURE:
                {
                    tlBmp bmp(sub);
                    // process texture name
                    if(Param->AllTypes || Param->DoTexture)
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,bmp.GetName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                bmp.SetName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = const_cast<char *>(bmp.GetName());                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                bmp.SetName(lcName);
                            }
                            if( Param->ToUnique )
                            {
                                bmp.SetName(TextureNames.MakeUnique(bmp.GetName()));
                            }
                        }
                    }
                    outchunk->AppendSubChunk(bmp.Chunk16());
                    break;
                }
                case GEO_PRO_MATERIAL:
                {
                    tlMaterial mat(sub);
                    // process material name
                    if(Param->AllTypes || Param->DoMaterial || Param->DoMaterialAsTexture )
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,mat.GetName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                mat.SetName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = const_cast<char *>(mat.GetName());                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                mat.SetName(lcName);
                            }
                            if( Param->ToUnique )
                            {
                                mat.SetName(MaterialNames.MakeUnique(mat.GetName()));
                            }
                            
                            if( Param->DoMaterialAsTexture )
                            {
                                if(mat.GetTexture())
                                {
                                    MaterialTextureNames.Add(mat.GetName(),mat.GetTexture());
                                    mat.SetName(mat.GetTexture());
                                } else {
                                    MaterialTextureNames.Add(mat.GetName(),mat.GetName());
                                }
                            }
                        }
                    }
                    // process material texture name
                    if(Param->AllTypes || Param->DoMaterialTex)
                    {
                        if(mat.GetTexture())
                        {
                            if((Param->FromPattern.Count() == 0) ||
                                glob(&Param->FromPattern,mat.GetTexture()))
                            {
                                // if new name was specified rename to new name
                                if ( Param->ToName )
                                {
                                    mat.SetTexture(Param->ToName);
                                }
                                // else convert it to lowercase
                                else if ( Param->ToLowercase )
                                {
                                    // get current name
                                    curName = const_cast<char *>(mat.GetTexture());                        
                                    // convert it to lowercase
                                    strcpy(lcName, curName);
                                    strlwr(lcName);
                                    // set name
                                    mat.SetTexture(lcName);
                                }
                                if( Param->ToUnique )
                                {
                                    mat.SetTexture(TextureNames.Remap(mat.GetTexture()));
                                }
                            }
                        }
                    }
                
                    outchunk->AppendSubChunk(mat.Chunk16());
                    break;
                }
                
            
            
                case P3D_TRAN_ANIM:
                case GEO_ANIM:
                {
                    tlTranAnim anim(sub);
                    // process transform animation name
                    if( Param->AllTypes || Param->DoAnim ) 
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,anim.AnimName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                anim.SetAnimName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = const_cast<char *>(anim.AnimName());                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                anim.SetAnimName(lcName);
                            }
                            if( Param->ToUnique )
                            {
                                anim.SetAnimName(AnimNames.Remap(anim.AnimName()));
                            }
                        }
                    }
                    // process transform animation tree name
                    if( Param->AllTypes || Param->DoAnimTree ) 
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,anim.HierarchyName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                anim.SetHierarchyName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = const_cast<char *>(anim.HierarchyName());                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                anim.SetHierarchyName(lcName);                        
                            }
                            if( Param->ToUnique )
                            {
                                anim.SetHierarchyName(STreeNames.Remap(anim.HierarchyName()));
                            }
                        }
                    }
                    outchunk->AppendSubChunk(anim.Chunk16());
                    break;
                }
                
                case GEO_MESH:
                {
                    tlMesh mesh(sub);
                    // process mesh name
                    if(Param->AllTypes || Param->DoGeo)
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,mesh.GetName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                mesh.SetName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = const_cast<char *>(mesh.GetName());                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                mesh.SetName(lcName);
                            }
                            if( Param->ToUnique )
                            {
                                mesh.SetName(MeshNames.MakeUnique(mesh.GetName()));
                            }
                        }
                    }
                    // preocess mesh material's names
                    if(Param->AllTypes || Param->DoGeoMaterial)
                    {
                        tlMaterialList* mats = mesh.GetMaterials();

                        for(int i = 0 ; i < mats->Count() ; i++)
                        {
                            if((Param->FromPattern.Count() == 0) ||
                                glob(&Param->FromPattern,(*mats)[i]))
                            {
                                if ( Param->ToName )
                                {
                                    mats->SetMaterial(i,Param->ToName);
                                }
                                else if ( Param->ToLowercase )
                                {
                                    // get current name
                                    curName = (*mats)[i];                        
                                    // convert it to lowercase
                                    strcpy(lcName, curName);
                                    strlwr(lcName);
                                    // set name
                                    mats->SetMaterial(i,lcName);
                                }
                                if( Param->ToUnique )
                                {
                                    mats->SetMaterial(i,MaterialNames.Remap((*mats)[i]));
                                }
                                if( Param->DoMaterialAsTexture)
                                {
                                    mats->SetMaterial(i,MaterialTextureNames.Remap((*mats)[i]));
                                }
                            }                   
                        }
                    }
                    
                    outchunk->AppendSubChunk(mesh.Chunk16());
                    break;
                }
                case P3D_HSPLINE:
                {
                    tlHSpline hspline(sub);
                    // process HSpline name
                    if(Param->AllTypes || Param->DoHSpline)
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,hspline.GetName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                hspline.SetName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = const_cast<char *>(hspline.GetName());                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                hspline.SetName(lcName);
                            }
                            if( Param->ToUnique )
                            {
                                hspline.SetName(HSplineNames.MakeUnique(hspline.GetName()));
                            }
                        }
                    }
                    // process HSpline geometry name
                    if(Param->AllTypes || Param->DoHSplineGeo)
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,hspline.MeshName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                hspline.SetMeshName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = hspline.MeshName();                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                hspline.SetMeshName(lcName);
                            }
                            if( Param->ToUnique )
                            {
                                hspline.SetMeshName(MeshNames.Remap(hspline.MeshName()));
                            }

                        }
                    }
                    outchunk->AppendSubChunk(hspline.Chunk16());
                    break;
                }
                case P3D_HSTREE:
                {
                    tlHSTree hst(sub);
                    // process HSTree name
                    if(Param->AllTypes || Param->DoHSTree)
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,hst.GetName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                hst.SetName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = const_cast<char *>(hst.GetName());                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                hst.SetName(lcName);
                            }
                            if( Param->ToUnique )
                            {
                                hst.SetName(HSTreeNames.MakeUnique(hst.GetName()));
                            }
                        }
                    }
                    // process HSTree surface name
                    if(Param->AllTypes || Param->DoHSTreeSurf)
                    {
                        if((Param->FromPattern.Count() == 0) ||
                            glob(&Param->FromPattern,hst.GetHSName()))
                        {
                            // if new name was specified rename to new name
                            if ( Param->ToName )
                            {
                                hst.SetHSName(Param->ToName);
                            }
                            // else convert it to lowercase
                            else if ( Param->ToLowercase )
                            {
                                // get current name
                                curName = hst.GetHSName();                        
                                // convert it to lowercase
                                strcpy(lcName, curName);
                                strlwr(lcName);
                                // set name
                                hst.SetHSName(lcName);
                            }
                            if( Param->ToUnique )
                            {
                                hst.SetHSName(HSplineNames.Remap(hst.GetHSName()));
                            }

                        }
                    }
                    outchunk->AppendSubChunk(hst.Chunk16());
                    break;
                }

                default:
                    outchunk->AppendSubChunk(sub,FALSE);   // FALSE means don't delete this, it's just a pointer
                    // to the data in filechunk, which will delete it
                    break;
            }
            
        }
        

        // close the input file
//##      input.Close();

        // open the output file
        tlFile output(new tlFileByteStream(Param->Files[ i ],omWRITE));
        if(!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", Param->Files[ i ]);
            exit(-1);
        }

        // Write the new file
        outchunk->Write(&output);
        delete filechunk;
        delete outchunk;
    }

    // Cleanup
    delete Param;
    exit(0);
}



int
NameMappingList::IsUnique(const char* name)
{
    unsigned long id = p3dHash(name);

    for(int i = 0 ; i < Count() ; i++)
    {
        if( id == (*this)[i].newid )
        {
            return FALSE;
        }
    }
    return TRUE;
}

char*
NameMappingList::MakeUnique(const char* name)
{
    static char buf[P3DMAXNAME];

    strcpy(buf,name);
    int count = 0;
    while(!IsUnique(buf))
    {
        sprintf(buf,"%s_%d",name,count);
        count++;
        if(count>1000000)
        {
            printf("Warning, Tried 1 million names for %s, and failed to find a unique one\n",name);
            strcpy(buf,name);
            break;
        }
    }
    unsigned long id = p3dHash(buf);
    NameMapping nameentry;
    nameentry.oldid   = p3dHash(name);
    nameentry.newid   = p3dHash(buf);
    strcpy(nameentry.oldname, name);
    strcpy(nameentry.newname, buf);
    Append(nameentry);
    return buf;
}

void
NameMappingList::Add(const char* oname, const char* nname)
{
    NameMapping nameentry;
    nameentry.oldid   = p3dHash(oname);
    nameentry.newid   = p3dHash(nname);
    strcpy(nameentry.oldname, oname);
    strcpy(nameentry.newname, nname);
    Append(nameentry);
}

char*
NameMappingList::Remap(const char* name)
{
    // We count backwards to get the most recent remapping
    for(int i = Count() - 1; i >= 0; i--)
    {
        if(!strcmp(name, (*this)[i].oldname))
        {
            return (*this)[i].newname;
        }
    }
    printf("Warning, couldn't find remapping for %s.\n", name);
    return const_cast<char*>(name);
}

