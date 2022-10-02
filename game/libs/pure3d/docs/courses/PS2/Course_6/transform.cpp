//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=======================================
// PS2 Lecture Series
// Course 6 - Advanced VU
// July 12, 2000
// Neall Verheyde (verheyde@radical.ca)
// Mark James (mjames@radical.ca)
//=======================================

#include <eekernel.h>
#include <eeregs.h>
#include <libpkt.h>
#include <libdma.h>
#include <libvu0.h>

#include "transform.hpp"


// Import the symbol we will use to locate the VU microprogram stored
// in main memory.
extern u_int VU_BaseAddress __attribute__((section(".vudata")));

// This is the code for the data type we will be sending to the VU.
const unsigned V4_32 = 0x6c;

// This is the header data that we will prepend to the array of vertices.
// It contains a count field and the transformation matrix.  All data is
// kept 32 bit aligned so it can be easily accessed by the microcode.
struct VectorTransformData
{
   VectorTransformData() : pad0(0), pad1(0), pad2(0) { }
   unsigned count;
   unsigned pad0;
   unsigned pad1;
   unsigned pad2;

   Matrix   matrix;
} __attribute__((aligned(16)));
   

// This is a link to the Sony DMA packet dumper.  It is very useful for debugging DMA
// problems.
extern void CDsEE_PrintDMAChain(unsigned int* LTagPtr,int LTTE,int LDecodePackets,int LSkipUNPACKData);


void VectorTransform(Vector* input, Matrix* matrix, int count, Vector* output)
{
   VectorTransformData header;

   // Copy the vertex count, and transformation matrix that will be sent to the VU.
   header.count = count;
   header.matrix = *matrix;

   // The DMA controller can only access data that is in physical memory.  This call
   // will insure that the data in memory matches that of the cache.  Note that this
   // call is very slow.  Real code might used uncached memory to avoid this step.
   FlushCache(0);

   // Grab the VIF0 DMA channel, and set the Tag Transfer Enable bit.
   sceDmaChan* dmaVif0 = sceDmaGetChan(SCE_DMA_VIF0);
   dmaVif0->chcr.TTE = 1;

   // Upload our microprogram to VU0 memory.
   // In real code, this would typically only be done once.  This example
   // does it every call to VectorTransform() to make things easier.
   sceDmaSend(dmaVif0,  (u_long128*)&VU_BaseAddress);

   // Wait for the code upload to finish.
   sceDmaSync(dmaVif0, 0, 10000);
   
   // Now we are ready to upload the header data and the vectors themselves.
   // First we initialise a new DMA packet on the scratchpad.
   sceVif0Packet vifPacket;
   sceVif0PkInit(&vifPacket, (u_long128*)0x70000000);

   // This is the destination address in VU0 memory.  VU0 uses qword addressing
   // so the first 128 bits is at address 0, the next 128 bits is at address 1
   // and so on.
   int dmaDest = 0;

   // This code adds the commands to upload the header information to the VU.
   // The UNPACK command tells the VIF how to translate the data as it is being
   // written into the VU.  V4_32 specifies 4, 32 bit components, which matches
   // our vector format.  The header itself is copied to the scrachpad as part
   // of the DMA packet.
   sceVif0PkCnt(&vifPacket, 0);
   sceVif0PkAddCode(&vifPacket, 0);
   sceVif0PkAddCode(&vifPacket, SCE_VIF0_SET_UNPACK(0, sizeof(VectorTransformData)/16, V4_32, 0));     
   sceVif0PkAddUpkData128N(&vifPacket, (u_long128*)&header, sizeof(VectorTransformData)/16);
   
   // Move the VU0 pointer to after the header.  The vectors themselves will
   // be uploaded here.
   dmaDest += (sizeof(VectorTransformData)/16);

   // If the VIF is performing some reformatting of the input data before
   // being written to the VU, the data input size may differ from the output
   // size.  In this case though, they are the same.  We divide the byte
   // count by 16 to match the 128 granularity of the VU.
   unsigned inputSize = count*sizeof(Vector)/16;
   unsigned outputSize = inputSize;
   
   // The vertices are sent to the VU using a REF packet.  That is, the DMA
   // controller is given a pointer to where is can find the data that is
   // to be uploaded.  This makes it easy to keep the DMA control information
   // separate from the data itself.
   sceVif0PkRef(  &vifPacket,
                  (u_long128*)input,
                  inputSize,
                  0,
                  SCE_VIF0_SET_UNPACK(dmaDest, outputSize, V4_32, 0),
                  0 );

   // Another packet adds the control commands to stat the VU program
   // (MSCAL), and wait for the VU program to finish (FLUSHE).  Normally,
   // one would not block the DMA waiting for the VU to finish.  Instead,
   // we could be uploading the next batch of vectors into a separate
   // buffer in parallel.  To keep things simple, this code doesn't do that.
   sceVif0PkEnd(&vifPacket, 0);
   sceVif0PkAddCode(&vifPacket, SCE_VIF0_SET_MSCAL(0, 0));
   sceVif0PkAddCode(&vifPacket, SCE_VIF0_SET_FLUSHE(0));

   // Cap off the DMA chain.
   sceVif0PkTerminate(&vifPacket);

   // This just runs the DMA packet through the DMA disassembler so
   // we can see what it looks like.
   CDsEE_PrintDMAChain((unsigned int*)vifPacket.pBase, 1, 1, 0);
   
   // Initiate DMA transfer
   // The VU will start soon as the VIF sees the MSCAL instruction.
   // The magic bit 0x80000000 is masked in to tell the DMA controller
   // that its DMA tag address is on the scratchpad.
   sceDmaSend(dmaVif0,  (u_long128*)(((u_int)vifPacket.pBase & 0x3ff0) | 0x80000000));

   // Wait for the DMA (and because of the FLUSHE, the VU) to finish.  Again,
   // a more sophisticated program could take advantage of parallelism here.
   sceDmaSync(dmaVif0, 0, 1000000);

   // Copy results back into memory using the memory-mapped VU0 address space.
   // GCC will recognise the u_long128 assignments, and perform the data movement
   // with 128 bit multimedia instructions.  This one of the fastest ways to move
   // memory on the PS2 - even faster than memcpy which does not use the MM
   // instructions.
   for(int i =0; i < count; i++)
   {
      *(u_long128*)&(output[i]) = *(u_long128*)((unsigned)VU0_MEM + i*sizeof(Vector) + sizeof(VectorTransformData));
   }
}
