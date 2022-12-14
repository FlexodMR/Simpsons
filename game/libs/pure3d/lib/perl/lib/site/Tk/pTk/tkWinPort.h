/*
 * tkWinPort.h --
 *
 *	This header file handles porting issues that occur because of
 *	differences between Windows and Unix. It should be the only
 *	file that contains #ifdefs to handle different flavors of OS.
 *
 * Copyright (c) 1995-1996 Sun Microsystems, Inc.
 *
 * See the file "license.terms" for information on usage and redistribution
 * of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 *
 * SCCS: @(#) tkWinPort.h 1.12 96/10/02 15:40:59
 */

#ifndef _WINPORT
#define _WINPORT
#define NEED_REAL_STDIO
#include <X11/Xlib.h>
#include <X11/cursorfont.h>
#include <X11/keysym.h>
#include <X11/Xatom.h>
#include <X11/Xutil.h>

#include <malloc.h>
#include <errno.h>
#include <ctype.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <fcntl.h>
#include <io.h>
#ifdef __EMX__
#   include <sys/types.h>
#endif
#include <sys/stat.h>
#include <sys/timeb.h>
#include <time.h>

#ifdef _MSC_VER
#    define strncasecmp strnicmp
#    define hypot _hypot
#else /* _MSC_VER */
#    ifdef __EMX__
#        define strncasecmp strnicmp
#    else
#        define strncasecmp strncmpi
#    endif
#endif /* _MSC_VER */

#define NBBY 8

#define OPEN_MAX 32

/*
 * The following define causes Tk to use its internal keysym hash table
 */

#define REDO_KEYSYM_LOOKUP

/*
 * The following macro checks to see whether there is buffered
 * input data available for a stdio FILE.
 */

#ifdef _MSC_VER
#    define TK_READ_DATA_PENDING(f) ((f)->_cnt > 0)
#else /* _MSC_VER */
#    define TK_READ_DATA_PENDING(f) ((f)->level > 0)
#endif /* _MSC_VER */

/*
 * The following stubs implement various calls that don't do anything
 * under Windows.
 */

#define TkFreeWindowId(dispPtr,w)
#define TkInitXId(dispPtr)
#define XFlush(display)
#define XGrabServer(display)
#define XUngrabServer(display)

/*
 * The following X functions are implemented as macros under Windows.
 */

#define XFree(data) {if ((data) != NULL) ckfree((char *) (data));}
#define XNoOp(display) {display->request++;}
#define XSynchronize(display, bool) {display->request++;}
#define XSync(display, bool) {display->request++;}
#define XVisualIDFromVisual(visual) (visual->visualid)

/* Additional translations needed for Tk extensions (Pixmap). */

#define XPutImage(display, dr, gc, i, a, b, c, d, e, f) \
	TkPutImage(NULL, 0, display, dr, gc, i, a, b, c, d, e, f)
#define XDefaultVisual(display, screen) ((screen)->root_visual)
#define XDefaultScreen(display) ((display)->screens)
#define XDefaultColormap(display, screen) ((screen)->cmap)
#define XDefaultDepth(display, screen) ((screen)->root_depth)

/*
 * The following Tk functions are implemented as macros under Windows.
 */

#define TkGetNativeProlog(interp) TkGetProlog(interp)

/*
 * Define timezone for gettimeofday.
 */
#if 0
struct timezone {
    int tz_minuteswest;
    int tz_dsttime;
};
#else
struct timezone;
#endif 

extern int gettimeofday(struct timeval *, struct timezone *);

#endif /* _WINPORT */
