#ifndef RAD_TIMER_H
#define RAD_TIMER_H

#include <plugin/plugin.h>

void time_plugin_fx( plugin_msg * );

struct time_tick_params
{
    plugin_msg hdr;
    unsigned int elapsed;
};

#endif