#include"scripter.hpp"
#include"console.hpp"
#include"constuff.hpp"
#include<string.h>

// keyboard mappings
keyMapping keyUpTable[256];
keyMapping keyDownTable[256];

// Implimentation for some common functions

// function installed in scripter's function list 
// to run an aliased or bound command
void ExecAlias(void* userData)
{
   // get scripter from first four bytes of user data
   tScripter* scripter = (tScripter*)(*((int*)userData));

   // rest of userData is text
   char* text = (char*)userData;
   text += 4;

   // run it
   scripter->ExecLine(text);
}

// binds 'string' to alias 'name'
// userData should be a tScripter*
void Alias(char* name, char* string, void* userData)
{
   // create buffer to hold scripter and string
   char* data = new char[strlen(string) + 5];
   tScripter* scripter = (tScripter*)userData;
   *((int*)data) = (int)scripter;
   strcpy(data+4, string);

   // attach the command name to ExecAlias function with the buffer we have created
   scripter->SetFunction(name, (void*)ExecAlias, "", data, 1);
}

// scripter function to bind a key
// userData should be a tScripter*
void Bind(int key, char* string, void* userData)
{
   tScripter* scripter = (tScripter*)userData;

   // create buffer to hold scripter and string
   char* data = new char[strlen(string) + 5];
   *((int*)data) = (int)scripter;
   strcpy(data+4, string);

   // attach key to ExecAlias function with the buffer we have created
   KeyDown(int(key), ExecAlias, data);
}

// scripter function to bind a key (when released)
// userData should be a tScripter*
void BindUp(int key, char* string, void* userData)
{
   tScripter* scripter = (tScripter*)userData;
   // create buffer to hold scripter and string
   char* data = new char[strlen(string) + 5];
   *((int*)data) = (int)scripter;
   strcpy(data+4, string);

   // attach key to ExecAlias function with the buffer we have created
   KeyUp(int(key), ExecAlias, data);
}

// function to execute a script file
// userData should be a tScripter*
void Exec(char* file, void* userData)
{
   tScripter* scripter = (tScripter*)userData;
   scripter->ExecFile(file);
}

// echo some text to the console
void Echo(char* text, void* userData)
{
   tConsole* console = (tConsole*)userData;
   console->Echo(text);
}

void Activate(void* userData)
{
//   tConsole* console = (tConsole*)userData;
//   console->Activate(!console->IsActive());
}

void Maximize(void* userData)
{
//   tConsole* console = (tConsole*)userData;
//   console->Maximize();
}

void DefaultConsoleBindings(tConsole* console,tScripter* scripter)
{
   scripter->SetFunction("echo", (void*)Echo, "s", (void*)console);
   scripter->SetFunction("console", (void*)Activate, "", (void*)console);
   scripter->SetFunction("maximize", (void*)Maximize, "", (void*)console);
}

void DefaultBindings(tScripter* scripter)
{
   for(int i = 0; i < 256; i++)
   {
      keyUpTable[i].function = NULL;
      keyUpTable[i].userData = NULL;
      keyDownTable[i].function = NULL;
      keyDownTable[i].userData = NULL;
   }

   // create the functions
   scripter->SetFunction("alias", (void*)Alias, "ss", (void*)scripter);
   scripter->SetFunction("bind", (void*)Bind, "is", (void*)scripter);
   scripter->SetFunction("binddown", (void*)Bind, "is", (void*)scripter);
   scripter->SetFunction("bindup", (void*)BindUp, "is", (void*)scripter);
   scripter->SetFunction("exec", (void*)Exec, "s", (void*)scripter);
 
   // some useful symbolic constants
   scripter->SetInt("true",1);
   scripter->SetInt("false",0);
   scripter->SetInt("on",1);
   scripter->SetInt("off",0);

   // create constants for keypress values
   // based on values for windows VK_* defines
   scripter->SetInt("KEY_TILDE",0xC0);
   scripter->SetInt("KEY_A",'A');
   scripter->SetInt("KEY_B",'B');
   scripter->SetInt("KEY_C",'C');
   scripter->SetInt("KEY_D",'D');
   scripter->SetInt("KEY_E",'E');
   scripter->SetInt("KEY_F",'F');
   scripter->SetInt("KEY_G",'G');
   scripter->SetInt("KEY_H",'H');
   scripter->SetInt("KEY_I",'I');
   scripter->SetInt("KEY_J",'J');
   scripter->SetInt("KEY_K",'K');
   scripter->SetInt("KEY_L",'L');
   scripter->SetInt("KEY_M",'M');
   scripter->SetInt("KEY_N",'N');
   scripter->SetInt("KEY_O",'O');
   scripter->SetInt("KEY_P",'P');
   scripter->SetInt("KEY_Q",'Q');
   scripter->SetInt("KEY_R",'R');
   scripter->SetInt("KEY_S",'S');
   scripter->SetInt("KEY_T",'T');
   scripter->SetInt("KEY_U",'U');
   scripter->SetInt("KEY_V",'V');
   scripter->SetInt("KEY_W",'W');
   scripter->SetInt("KEY_X",'X');
   scripter->SetInt("KEY_Y",'Y');
   scripter->SetInt("KEY_Z",'Z');
   scripter->SetInt("KEY_1",'1');
   scripter->SetInt("KEY_2",'2');
   scripter->SetInt("KEY_3",'3');
   scripter->SetInt("KEY_4",'4');
   scripter->SetInt("KEY_5",'5');
   scripter->SetInt("KEY_6",'6');
   scripter->SetInt("KEY_7",'7');
   scripter->SetInt("KEY_8",'8');
   scripter->SetInt("KEY_9",'9');
   scripter->SetInt("KEY_0",'0');
   scripter->SetInt("KEY_LBUTTON",0x01);
   scripter->SetInt("KEY_RBUTTON",0x02);
   scripter->SetInt("KEY_CANCEL",0x03);
   scripter->SetInt("KEY_MBUTTON",0x04);
   scripter->SetInt("KEY_BACK",0x08);
   scripter->SetInt("KEY_TAB",0x09);
   scripter->SetInt("KEY_CLEAR",0x0C);
   scripter->SetInt("KEY_RETURN",0x0D);
   scripter->SetInt("KEY_SHIFT",0x10);
   scripter->SetInt("KEY_CONTROL",0x11);
   scripter->SetInt("KEY_MENU",0x12);
   scripter->SetInt("KEY_PAUSE",0x13);
   scripter->SetInt("KEY_CAPITAL",0x14);
   scripter->SetInt("KEY_ESCAPE",0x1B);
   scripter->SetInt("KEY_SPACE",0x20);
   scripter->SetInt("KEY_PGUP",0x21);
   scripter->SetInt("KEY_PGDN",0x22);
   scripter->SetInt("KEY_END",0x23);
   scripter->SetInt("KEY_HOME",0x24);
   scripter->SetInt("KEY_LEFT",0x25);
   scripter->SetInt("KEY_UP",0x26);
   scripter->SetInt("KEY_RIGHT",0x27);
   scripter->SetInt("KEY_DOWN",0x28);
   scripter->SetInt("KEY_SELECT",0x29);
   scripter->SetInt("KEY_PRINT",0x2A);
   scripter->SetInt("KEY_EXECUTE",0x2B);
   scripter->SetInt("KEY_SNAPSHOT",0x2C);
   scripter->SetInt("KEY_INSERT",0x2D);
   scripter->SetInt("KEY_DELETE",0x2E);
   scripter->SetInt("KEY_HELP",0x2F);
   scripter->SetInt("KEY_NUMPAD0",0x60);
   scripter->SetInt("KEY_NUMPAD1",0x61);
   scripter->SetInt("KEY_NUMPAD2",0x62);
   scripter->SetInt("KEY_NUMPAD3",0x63);
   scripter->SetInt("KEY_NUMPAD4",0x64);
   scripter->SetInt("KEY_NUMPAD5",0x65);
   scripter->SetInt("KEY_NUMPAD6",0x66);
   scripter->SetInt("KEY_NUMPAD7",0x67);
   scripter->SetInt("KEY_NUMPAD8",0x68);
   scripter->SetInt("KEY_NUMPAD9",0x69);
   scripter->SetInt("KEY_MULTIPLY",0x6A);
   scripter->SetInt("KEY_ADD",0x6B);
   scripter->SetInt("KEY_SEPARATOR",0x6C);
   scripter->SetInt("KEY_SUBTRACT",0x6D);
   scripter->SetInt("KEY_DECIMAL",0x6E);
   scripter->SetInt("KEY_DIVIDE",0x6F);
   scripter->SetInt("KEY_F1",0x70);
   scripter->SetInt("KEY_F2",0x71);
   scripter->SetInt("KEY_F3",0x72);
   scripter->SetInt("KEY_F4",0x73);
   scripter->SetInt("KEY_F5",0x74);
   scripter->SetInt("KEY_F6",0x75);
   scripter->SetInt("KEY_F7",0x76);
   scripter->SetInt("KEY_F8",0x77);
   scripter->SetInt("KEY_F9",0x78);
   scripter->SetInt("KEY_F10",0x79);
   scripter->SetInt("KEY_F11",0x7A);
   scripter->SetInt("KEY_F12",0x7B);
   scripter->SetInt("KEY_F13",0x7C);
   scripter->SetInt("KEY_F14",0x7D);
   scripter->SetInt("KEY_F15",0x7E);
   scripter->SetInt("KEY_F16",0x7F);
   scripter->SetInt("KEY_F17",0x80);
   scripter->SetInt("KEY_F18",0x81);
   scripter->SetInt("KEY_F19",0x82);
   scripter->SetInt("KEY_F20",0x83);
   scripter->SetInt("KEY_F21",0x84);
   scripter->SetInt("KEY_F22",0x85);
   scripter->SetInt("KEY_F23",0x86);
   scripter->SetInt("KEY_F24",0x87);
   scripter->SetInt("KEY_NUMLOCK",0x90);
   scripter->SetInt("KEY_SCROLL",0x91);
   scripter->SetInt("KEY_LSHIFT",0xA0);
   scripter->SetInt("KEY_RSHIFT",0xA1);
   scripter->SetInt("KEY_LCONTROL",0xA2);
   scripter->SetInt("KEY_RCONTROL",0xA3);
   scripter->SetInt("KEY_LMENU",0xA4);
   scripter->SetInt("KEY_RMENU",0xA5);
   scripter->SetInt("KEY_PROCESSKEY",0xE5);
   scripter->SetInt("KEY_ATTN",0xF6);
   scripter->SetInt("KEY_CRSEL",0xF7);
   scripter->SetInt("KEY_EXSEL",0xF8);
   scripter->SetInt("KEY_EREOF",0xF9);
   scripter->SetInt("KEY_PLAY",0xFA);
   scripter->SetInt("KEY_ZOOM",0xFB);
   scripter->SetInt("KEY_NONAME",0xFC);
   scripter->SetInt("KEY_PA1",0xFD);
   scripter->SetInt("KEY_OEM_CLEAR",0xFE);
}

void KeyDown(int key, keyMapFunction function, void* userData)
{
   //if((key >= 'a') && (key <= 'z')) key -= 32;
   keyDownTable[key].function = function;
   keyDownTable[key].userData = userData;
}

void KeyUp(int key, keyMapFunction function, void* userData)
{
   //if((key >= 'a') && (key <= 'z')) key -= 32;
   keyUpTable[key].function = function;
   keyUpTable[key].userData = userData;
}

int HandleKey(int key, int down)
{
   if(down)
   {
      if((key >= 0) && (key < 256) && (keyDownTable[key].function != NULL))
      {
         keyDownTable[key].function(keyDownTable[key].userData);
         return 1;
      }
   }
   else
   {
      if((key >= 0) && (key < 256) && (keyUpTable[key].function != NULL))
      {
         keyUpTable[key].function(keyUpTable[key].userData);
         return 1;
      }
   }
   return 0;
}
