#ifndef controls_hpp
#define controls_hpp

void init_controls( CWnd * p_wnd );
void destroy_controls( void );

CDC & back_dc( void );
CDC & control_dc( void );

void draw_bg( CRect * p_rect );

void text_out( int x, int y, const char * p_text );
void draw_text( int x, int y, int width, int height, const char * p_text );
void sw_led_text_out( int x, int y, const char * p_text, unsigned int chars );

#define FADER_HOUSING_TOP       18
#define FADER_HOUSING_LEFT      124
#define FADER_HOUSING_WIDTH     18
#define FADER_HOUSING_HEIGHT    89
#define FADER_KNOB_LEFT         (FADER_HOUSING_LEFT + FADER_HOUSING_WIDTH)
#define FADER_KNOB_TOP          (FADER_HOUSING_TOP)
#define FADER_KNOB_WIDTH        12
#define FADER_KNOB_HEIGHT       18

#define GREEN_LED_LEFT          0
#define GREEN_LED_TOP           0
#define GREEN_LED_CHAR_WIDTH    6
#define GREEN_LED_CHAR_HEIGHT   9
#define GREEN_LED_CHAR_ROWS     16
#define GREEN_LED_CHAR_COLS     16

#define SWGREEN_LED_LEFT        0
#define SWGREEN_LED_BOTTOM      305
#define SWGREEN_LED_CHAR_WIDTH  6
#define SWGREEN_LED_CHAR_HEIGHT 9
#define SWGREEN_LED_CHAR_ROWS   16
#define SWGREEN_LED_CHAR_COLS   16

#define BUT_ARROW_WIDTH          17
#define BUT_ARROW_HEIGHT         9
#define BUT_ARROW1_UP_LEFT       124
#define BUT_ARROW1_UP_TOP        0
#define BUT_ARROW1_DOWN_LEFT     124
#define BUT_ARROW1_DOWN_TOP      9
#define BUT_ARROW2_UP_LEFT       141
#define BUT_ARROW2_UP_TOP        0
#define BUT_ARROW2_DOWN_LEFT     141
#define BUT_ARROW2_DOWN_TOP      9

#define BUT_PLAY1_WIDTH          15
#define BUT_PLAY1_HEIGHT         15   
#define BUT_PLAY1_UP_LEFT        124
#define BUT_PLAY1_UP_TOP         107
#define BUT_PLAY1_DOWN_LEFT      139
#define BUT_PLAY1_DOWN_TOP       107

#define BUT_STOP_WIDTH           26
#define BUT_STOP_HEIGHT          26   
#define BUT_STOP_UP_LEFT         158        
#define BUT_STOP_UP_TOP          0
#define BUT_STOP_DOWN_LEFT       184
#define BUT_STOP_DOWN_TOP        0

#define BUT_PLAY_WIDTH           26
#define BUT_PLAY_HEIGHT            26   
#define BUT_PLAY_UP_LEFT         158        
#define BUT_PLAY_UP_TOP          25
#define BUT_PLAY_DOWN_LEFT       184
#define BUT_PLAY_DOWN_TOP        25

#define BUT_EXCLM_WIDTH        26
#define BUT_EXCLM_HEIGHT         26   
#define BUT_EXCLM_UP_LEFT      158        
#define BUT_EXCLM_UP_TOP       75
#define BUT_EXCLM_DOWN_LEFT    184
#define BUT_EXCLM_DOWN_TOP     75

#define BUT_SPDR_WIDTH        26
#define BUT_SPDR_HEIGHT         26   
#define BUT_SPDR_UP_LEFT      158        
#define BUT_SPDR_UP_TOP       125
#define BUT_SPDR_DOWN_LEFT    184
#define BUT_SPDR_DOWN_TOP     125

#define BUT_NO_WIDTH        26
#define BUT_NO_HEIGHT         26   
#define BUT_NO_UP_LEFT      158        
#define BUT_NO_UP_TOP       100
#define BUT_NO_DOWN_LEFT    184
#define BUT_NO_DOWN_TOP     100

#define BUT_EDITOR_HEIGHT 17
#define BUT_EDITOR_WIDTH  22
#define BUT_EDITOR_LEFT   210
#define BUT_EDITOR_CUT_TOP   (BUT_EDITOR_HEIGHT * 0)
#define BUT_EDITOR_COPY_TOP  (BUT_EDITOR_HEIGHT * 1)
#define BUT_EDITOR_PASTE_TOP (BUT_EDITOR_HEIGHT * 2) 
#define BUT_EDITOR_UNDO_TOP  (BUT_EDITOR_HEIGHT * 3)
#define BUT_EDITOR_REDO_TOP  (BUT_EDITOR_HEIGHT * 4)
#define BUT_EDITOR_FIND_TOP  (BUT_EDITOR_HEIGHT * 5)
#define BUT_EDITOR_GOTO_TOP  (BUT_EDITOR_HEIGHT * 6)

enum enum_button_style {
    arrow_down,
    arrow_up,
    play1,
    stop,
    play,
    exclm,
    spdr,
    no,
    edit_cut,
    edit_copy,
    edit_paste,
    edit_undo,
    edit_redo,
    edit_find,
    edit_goto,
    num_buttons };

#define BG1_CORNER_WIDTH      13
#define BG1_CORNER_HEIGHT     13
#define BG1_BODY_VERT_WIDTH   13
#define BG1_BODY_VERT_HEIGHT  12
#define BG1_BODY_HORIZ_WIDTH  17
#define BG1_BODY_HORIZ_HEIGHT 13
#define BG1_LEFT 0
#define BG1_TOP  144
   
#endif