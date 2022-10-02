#ifndef _CONSTUFF_HPP_
#define _CONSTUFF_HPP
class tScripter;
class tConsole;

typedef void (*keyMapFunction)(void* data);

struct keyMapping
{
   keyMapFunction function;
   void* userData;
};


int HandleKey(int,int);

void KeyDown(int key, keyMapFunction function, void* userdata);
void KeyUp(int key, keyMapFunction function, void* userdata);

void DefaultBindings(tScripter* scripter);
void DefaultConsoleBindings(tConsole* console,tScripter* scripter);
void PDDIBindings(tScripter* scripter);

#define MOUSE_LEFT 0x1
#define MOUSE_RIGHT 0x2

void MouseBindings(tScripter* scripter);
void MouseMove(int buttons, int x, int y);

#endif
