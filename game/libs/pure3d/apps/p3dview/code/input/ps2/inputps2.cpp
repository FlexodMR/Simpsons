//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <input/ps2/inputps2.hpp>
#include <radplatform.hpp>
#include <radtime.hpp>
#include <stdio.h>
#include <assert.h>
#include <eeregs.h>
#include <stdio.h>
#include <sifrpc.h>
#include <sifdev.h>
#include <sif.h>
#include <libipu.h>
#include <eekernel.h>
#include <libpad.h>
#include <string.h>
#include <malloc.h>

#include <sio2man.h>
#include <padman.h>


namespace Input
{

u_long128 pad_dma_buf[scePadDmaBufferMax]  __attribute__((aligned (64)));

class PS2::ControlPad
{
public:
    ControlPad() { lx = ly = rx = ry = 128; buttons = 0; needInfo = true; };
    ~ControlPad() {};

    void Init(void);
    void Read(void);

    float GetAnalogLX(void) { return float(lx) - 128;}
    float GetAnalogLY(void) { return float(ly) - 128;}
    float GetAnalogRX(void) { return float(rx) - 128;}
    float GetAnalogRY(void) { return float(ry) - 128;}

    unsigned GetButtons(void) {return buttons;}

private:
    bool needInfo;
    unsigned char lx,ly,rx,ry;
    unsigned buttons;
};

bool SendIRX(void* data, unsigned size)
{
    void *iopaddr;
    sceSifDmaData sd;
    
    // Memory allocation on IOP
    iopaddr = sceSifAllocIopHeap( size);

    // Send module data to IOP
    sd.data = (unsigned int) data;
    sd.addr = (unsigned int) iopaddr;
    sd.size = size;
    sd.mode = 0;

    sceSifSetDma( &sd, 1);

    int dummy;
    
    if (sceSifLoadModuleBuffer(iopaddr, 0, NULL) < 0) 
    {
        return false;
    }

    sceSifFreeIopHeap(iopaddr);
    return true;
}

void PS2::ControlPad::Init()
{
    sceSifInitRpc(0);
    sceSifInitIopHeap();

 
    if(!SendIRX(sio2man, sizeof(sio2man)))
    {
        printf("can't load sio2man\n");
        return;
    }
    
    for(int i = 0; i < 2; i++)
    {
        printf(".");
    }

    if(!SendIRX(padman, sizeof(padman)))
    {
        printf("can't load padman\n");
        return;
    }

/*   
    void *mem0,*iopaddr0,*mem1,*iopaddr1;
    sceSifDmaData sd[2];
    
    // allocate aligned buffer for dma
    mem0 = (void *)memalign(64, sizeof(sio2man));
    memcpy(mem0, sio2man, sizeof(sio2man));

    mem1 = (void *)memalign(64, sizeof(padman));
    memcpy(mem1, padman, sizeof(padman));

    // Memory allocation on IOP
    iopaddr0 = sceSifAllocIopHeap( sizeof(sio2man));
    iopaddr1 = sceSifAllocIopHeap( sizeof(padman));

    // Send module data to IOP
    sd[0].data = (unsigned int) mem0;
    sd[0].addr = (unsigned int) iopaddr0;
    sd[0].size = sizeof(sio2man);
    sd[0].mode = 0;
    sd[1].data = (unsigned int) mem1;
    sd[1].addr = (unsigned int) iopaddr1;
    sd[1].size = sizeof(padman);
    sd[1].mode = 0;

    sceSifSetDma( &sd[0], 1);

    if (sceSifLoadModuleBuffer(iopaddr0, 0, NULL) < 0) 
    {
        printf("Failed to load irx\n");
        sceSifFreeIopHeap(iopaddr0);
        sceSifFreeIopHeap(iopaddr1);
        free(mem1);
        free(mem0);
        return;
    }

    unsigned start = radTimeGetMilliseconds();

    while((radTimeGetMilliseconds() - start) < 6000)
    {
    }

    sceSifSetDma( &sd[1], 1);

    if (sceSifLoadModuleBuffer(iopaddr1, 0, NULL) < 0) 
    {
        printf("Failed to load irx\n");
        sceSifFreeIopHeap(iopaddr0);
        sceSifFreeIopHeap(iopaddr1);
        free(mem1);
        free(mem0);
        return;
    }

    sceSifFreeIopHeap(iopaddr0);
    sceSifFreeIopHeap(iopaddr1);
    free(mem1);
    free(mem0);
*/
    // open pad device
    scePadInit(0);
    int ret = scePadPortOpen(0, 0, pad_dma_buf);

    if( ret == 0 )
    {
        printf("Failed to open pad port\n");
        return;
    }

    //sceIpuInit();
}

void PS2::ControlPad::Read(void)
{
   u_int paddata;
   u_char rdata[32];
   int currState;

   lx = ly = rx = ry = 128; buttons = 0;

   int deadZone = 35;
   int state;
   static int bGetInfoMode = 0;

   state = scePadGetState(0,0);

   if (state != scePadStateStable)  // If not_connected or not_stable or execute_command
   {
      needInfo = true;
      return;
   }

   // Pad was unsable and isn't now, need to reset 
   if (needInfo && state == scePadStateStable)
   {
      int id     = scePadInfoMode(0,0, InfoModeCurID, 0);
      int ext_id = scePadInfoMode(0,0, InfoModeCurExID, 0);

      if (id==0)
	   {
	      printf("id=0\n");
         return;
	   }

      if (ext_id>0) id = ext_id;
      
      if (id==4) 
	   {
   	   printf("Analog mode locked\n");
	      scePadSetMainMode(0, 0, 1, 3);   // Force analog mode & lock
         return;
	   }
      needInfo = false;
   }

   // read pad information
   if(scePadRead(0, 0, rdata) > 0)
   {
      buttons = 0xffff ^ ((rdata[2] << 8) | rdata[3]);
   }
   else
   {
      buttons = 0;
   }

   rx = rdata[4];
   ry = rdata[5];
   lx = rdata[6];
   ly = rdata[7];

   if((rx == 0) && (lx == 0) && (ry == 0) && (ly == 0))
   {
      rx = ry = lx = ly = 128;
   }
   int deadZoneHigh = 128 + deadZone;
   int deadZoneLow = 128 - deadZone;

   if((rx < deadZoneHigh) && (rx > deadZoneLow))
      rx = 128;

   if((ry < deadZoneHigh) && (ry > deadZoneLow))
      ry = 128;
   
   if((lx < deadZoneHigh) && (lx > deadZoneLow))
      lx = 128;

   if((ly < deadZoneHigh) && (ly > deadZoneLow))
      ly = 128;

end_read_pad:
   ;
}

    
PS2::PS2()
{
    unsigned i;
    for(i = 0; i < INPUTS_PER_PAD * 2; i++)
    {
        desc[i].id = i;
        desc[i].shortName[0] = 0;
        desc[i].longName[0] = 0;
        desc[i].device = DEVICE_JOYSTICK;
        desc[i].type = TYPE_NONE;
        desc[i].deviceIndex = i / INPUTS_PER_PAD;
        desc[i].typeIndex = 0;
        desc[i].bounded = true;
        desc[i].low = 0.0f;
        desc[i].high = 0.0f;
    }

   for(unsigned gamepad = 0; gamepad < 2; gamepad ++)
   {
       unsigned gamepadBase = gamepad * INPUTS_PER_PAD;

       char buf[256];

       sprintf(buf, "JOY%d_STICK0_X", gamepad);
       strcpy(desc[gamepadBase].longName, buf);
       desc[gamepadBase].type = TYPE_RANGED;
       gamepadBase++;

       sprintf(buf, "JOY%d_STICK0_Y", gamepad);
       strcpy(desc[gamepadBase].longName, buf);
       desc[gamepadBase].type = TYPE_RANGED;
       gamepadBase++;

       sprintf(buf, "JOY%d_STICK1_X", gamepad);
       strcpy(desc[gamepadBase].longName, buf);
       desc[gamepadBase].type = TYPE_RANGED;
       gamepadBase++;

       sprintf(buf, "JOY%d_STICK1_Y", gamepad);
       strcpy(desc[gamepadBase].longName, buf);
       desc[gamepadBase].type = TYPE_RANGED;
       gamepadBase++;

       for(int button = 0; button < 32; button++)
       {
           sprintf(buf, "JOY%d_BUTTON%d", gamepad, button);
           strcpy(desc[gamepadBase].longName, buf);
           desc[gamepadBase].type = TYPE_DIGITAL;
           gamepadBase++;
       }

       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 0].longName, "JOY%d_BUTTON_L",   gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 1].longName, "JOY%d_BUTTON_R",   gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 2].longName, "JOY%d_BUTTON5",    gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 3].longName, "JOY%d_BUTTON6",    gamepad);

       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 4].longName, "JOY%d_BUTTON3", gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 5].longName, "JOY%d_BUTTON2", gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 6].longName, "JOY%d_BUTTON0", gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 7].longName, "JOY%d_BUTTON1", gamepad);

       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 8].longName,  "JOY%d_BUTTON_START",   gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 9].longName,  "JOY%d_BUTTON_STICK0",  gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 10].longName, "JOY%d_BUTTON_STICK1",  gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 11].longName, "JOY%d_BUTTON_SELECT",  gamepad);

       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 12].longName, "JOY%d_DPAD_UP",    gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 13].longName, "JOY%d_DPAD_RIGHT", gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 14].longName, "JOY%d_DPAD_DOWN",  gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 15].longName, "JOY%d_DPAD_LEFT",  gamepad);

   }

   pad = new ControlPad;
   pad->Init();
   oldButtons = 0;
}

PS2::~PS2()
{
    delete pad;
}

unsigned PS2::NumInputs(void)
{
    return INPUTS_PER_PAD * 2;
}

unsigned PS2::FindInput(char* name)
{
    return 0;
}

Description* PS2::DescribeInput(unsigned index)
{
    if (index >= INPUTS_PER_PAD * 4)
        return NULL;

    return &desc[index];
}

void PS2::SetRecipient(Recipient* r)
{
    recipient = r;
}

Recipient* PS2::GetRecipient(void)
{
    return recipient;
}

void PS2::IssueEvents(void)
{
    if(!recipient)
        return;

    pad->Read();
    
    recipient->Ranged(&desc[INPUTS_PER_PAD * 0] + 0, pad->GetAnalogLX() / 128);
    recipient->Ranged(&desc[INPUTS_PER_PAD * 0] + 1, pad->GetAnalogLY() / 128);
    recipient->Ranged(&desc[INPUTS_PER_PAD * 0] + 2, pad->GetAnalogRX() / 128);
    recipient->Ranged(&desc[INPUTS_PER_PAD * 0] + 3, pad->GetAnalogRY() / 128);

    unsigned newButtons = pad->GetButtons();

    for(int i = 0; i < 32; i++)
    {
        bool n = (newButtons & (1 << i)) != 0;
        bool o = (oldButtons & (1 << i)) != 0;

        if(n ^ o)
        {
            recipient->Digital(&desc[0 + 4 + i], n);
        }
    }
    oldButtons = newButtons;
}

}