package Curses;

use Carp;
require Exporter;
require DynaLoader;
@ISA = qw(Exporter DynaLoader);

bootstrap Curses;

###
## Version consistency check
#
$VERSION    = 1.01;
$XS_VERSION = eval { XS_VERSION() };
$XS_VERSION = "pre 1.01" if $@;

if ($VERSION ne $XS_VERSION) {
    croak "Curses.pm version [$VERSION] does not match C code [$XS_VERSION]";
}

tie $LINES,  Curses::Vars, 1;
tie $COLS,   Curses::Vars, 2;
tie $stdscr, Curses::Vars, 3;
tie $curscr, Curses::Vars, 4;

# mostly taken from mbeattie's NCurses stuff
sub new
{
  my($obj,$nl,$nc,$by,$bx) = (@_, 0, 0, 0, 0);

  unless ($_initscr)    { initscr(); $_initscr++; }
  if ($obj eq 'Curses') { return newwin($nl, $nc, $by, $bx); }
  else                  { return subwin($obj, $nl, $nc, $by, $bx); }
}

sub AUTOLOAD
{
    my($name, $val);

    ($name = $AUTOLOAD) =~ s/.*:://;
    croak "Curses does not support the curses constant '$name', used"
	unless $_al{$name};

    $val = constant($name, $_al{$name});
    eval "sub $AUTOLOAD { $val }";
    goto &$AUTOLOAD;
}

sub _unimpl
{
    croak "Curses does not support the curses function '$_[0]', used";
}

sub tstp     { _unimpl('tstp');      }
sub scanw    { _unimpl('scanw');     }
sub _putchar { _unimpl('_putchar');  }
sub fullname { _unimpl('fullname');  }

# printw and friends are apparently popular enough that people want
# them around.  I'm including versions written by:
# emf@addams.att.com (Ed Freedenburg)

sub printw { addstr(sprintf(shift(@_),@_)); }
# sub printw   { _unimpl('printw');    }

@EXPORT = qw(
&tstp &printw &scanw &_putchar &fullname

stdscr curscr LINES COLS $LINES $COLS KEY_F

addch addchnstr addchstr addnstr addstr attroff attron attrset
baudrate beep bkgd bkgdset border box can_change_color cbreak clear
clearok clrtobot clrtoeol color_content COLOR_PAIR copywin delch
deleteln delwin derwin doupdate echo echochar endwin erase erasechar
flash flushinp flusok getattrs getbegyx getbkgd getcap getch getmaxyx
getnstr getparyx getstr gettmode getyx halfdelay has_colors has_ic
has_il hline idcok idlok immedok inch inchnstr inchstr init_color
init_pair initscr innstr insch insdelln insertln insnstr insstr instr
intrflush is_linetouched is_wintouched isendwin keyname keypad
killchar leaveok longname meta move mvcur mvwin newpad newwin nl
nocbreak nodelay noecho nonl noqiflush noraw notimeout noutrefresh
overlay overwrite pair_content PAIR_NUMBER pechochar pnoutrefresh
prefresh qiflush raw refresh resetty savetty scrl scroll scrollok
setscrreg setterm slk_clear slk_init slk_label slk_noutrefresh
slk_refresh slk_restore slk_set slk_touch standend standout
start_color subpad subwin syncok timeout touchline touchln
touchoverlap touchwin typeahead unctrl ungetch vline
);

@_CONSTANTS = qw(
OK ERR

ACS_BLOCK ACS_BOARD ACS_BTEE ACS_BULLET ACS_CKBOARD ACS_DARROW
ACS_DEGREE ACS_DIAMOND ACS_HLINE ACS_LANTERN ACS_LARROW ACS_LLCORNER
ACS_LRCORNER ACS_LTEE ACS_PLMINUS ACS_PLUS ACS_RARROW ACS_RTEE ACS_S1
ACS_S9 ACS_TTEE ACS_UARROW ACS_ULCORNER ACS_URCORNER ACS_VLINE

A_ALTCHARSET A_ATTRIBUTES A_BLINK A_BOLD A_CHARTEXT A_COLOR A_DIM
A_INVIS A_NORMAL A_PROTECT A_REVERSE A_STANDOUT A_UNDERLINE

COLOR_BLACK COLOR_BLUE COLOR_CYAN COLOR_GREEN COLOR_MAGENTA COLOR_RED
COLOR_WHITE COLOR_YELLOW

KEY_A1 KEY_A3 KEY_B2 KEY_BACKSPACE KEY_BEG KEY_BREAK KEY_BTAB KEY_C1
KEY_C3 KEY_CANCEL KEY_CATAB KEY_CLEAR KEY_CLOSE KEY_COMMAND KEY_COPY
KEY_CREATE KEY_CTAB KEY_DC KEY_DL KEY_DOWN KEY_EIC KEY_END KEY_ENTER
KEY_EOL KEY_EOS KEY_EXIT KEY_F0 KEY_FIND KEY_HELP KEY_HOME KEY_IC
KEY_IL KEY_LEFT KEY_LL KEY_MARK KEY_MAX KEY_MESSAGE KEY_MIN KEY_MOVE
KEY_NEXT KEY_NPAGE KEY_OPEN KEY_OPTIONS KEY_PPAGE KEY_PREVIOUS
KEY_PRINT KEY_REDO KEY_REFERENCE KEY_REFRESH KEY_REPLACE KEY_RESET
KEY_RESTART KEY_RESUME KEY_RIGHT KEY_SAVE KEY_SBEG KEY_SCANCEL
KEY_SCOMMAND KEY_SCOPY KEY_SCREATE KEY_SDC KEY_SDL KEY_SELECT KEY_SEND
KEY_SEOL KEY_SEXIT KEY_SF KEY_SFIND KEY_SHELP KEY_SHOME KEY_SIC
KEY_SLEFT KEY_SMESSAGE KEY_SMOVE KEY_SNEXT KEY_SOPTIONS KEY_SPREVIOUS
KEY_SPRINT KEY_SR KEY_SREDO KEY_SREPLACE KEY_SRESET KEY_SRIGHT
KEY_SRSUME KEY_SSAVE KEY_SSUSPEND KEY_STAB KEY_SUNDO KEY_SUSPEND
KEY_UNDO KEY_UP
);

sub KEY_F { return $_[0] + KEY_F0(); }

push(@EXPORT, @_CONSTANTS);
for (@_CONSTANTS) { $_al{$_} = ++$_i; }

# require 'assert.pl';
# assert('@_CONSTANTS == 139');

if ($OldCurses)
{
    @_OLD = qw(
    $ttytype $Def_term $My_term
    &wprintw &mvprintw &wmvprintw &wscanw &mvscanw &mvwscanw

    waddch mvaddch mvwaddch waddchnstr mvaddchnstr mvwaddchnstr waddchstr
    mvaddchstr mvwaddchstr waddnstr mvaddnstr mvwaddnstr waddstr mvaddstr
    mvwaddstr wattroff wattron wattrset wbkgd wbkgdset wborder wclear
    wclrtobot wclrtoeol wdelch mvdelch mvwdelch wdeleteln wechochar werase
    wgetch mvgetch mvwgetch wgetnstr mvgetnstr mvwgetnstr wgetstr mvgetstr
    mvwgetstr whline winch mvinch mvwinch winchnstr mvinchnstr mvwinchnstr
    winchstr mvinchstr mvwinchstr winnstr mvinnstr mvwinnstr winsch
    mvinsch mvwinsch winsdelln winsertln winsnstr mvinsnstr mvwinsnstr
    winsstr mvinsstr mvwinsstr winstr mvinstr mvwinstr wmove wnoutrefresh
    wrefresh wscrl wsetscrreg wstandend wstandout wtimeout wtouchln wvline
    );

    push(@EXPORT, @_OLD);
    for (@_OLD)
    {
	next if /^[\$&]/;
	/^(?:mv)?(?:w)?(.*)/;
	eval "sub $_ { $1(\@_); }";
    }

# see commentary under `printw()'
#    sub wprintw  { _unimpl('wprintw');   }
#    sub mvprintw { _unimpl('mvprintw');  }
#    sub mvwprintw{ _unimpl('mvwprintw'); }

    eval <<EOS;
sub wprintw   { addstr(shift(@_),sprintf(shift(@_),@_)); }
sub mvprintw  { addstr(shift(@_),shift(@_),sprintf(shift(@_),@_)); }
sub mvwprintw { addstr(shift(@_),shift(@_),shift(@_),sprintf(shift(@_),@_)); }
    sub wscanw   { _unimpl('wscanw');    }
    sub mvscanw  { _unimpl('mvscanw');   }
    sub mvwscanw { _unimpl('mvwscanw');  }
EOS
    tie $ttytype,  Curses::Vars, 5;
    tie $Def_term, Curses::Vars, 6;
    tie $My_term,  Curses::Vars, 7;
}

1;

__END__

=head1 NAME

Curses - terminal screen handling and optimization

=head1 SYNOPSIS

    use Curses;

    initscr;
    ...
    endwin;

=head1 DESCRIPTION

C<Curses> is the interface between Perl and your system's curses(3)
library.  For descriptions on the usage of a given function, variable,
or constant, consult your system's documentation, as such information
invariably varies (:-) between different curses(3) libraries and
operating systems.  This document describes the interface itself, and
assumes that you already know how your system's curses(3) library
works.

=head2 Unified Functions

Many curses(3) functions have variants starting with the prefixes
I<w->, I<mv->, and/or I<wmv->.  These variants differ only in the
explicit addition of a window, or by the addition of two coordinates
that are used to move the cursor first.  For example, C<addch()> has
three other variants: C<waddch()>, C<mvaddch()>, and C<mvwaddch()>.
The variants aren't very interesting; in fact, we could roll all of
the variants into original function by allowing a variable number
of arguments and analyzing the argument list for which variant the
user wanted to call.

Unfortunately, curses(3) predates varargs(3), so in C we were stuck
with all the variants.  However, C<Curses> is a Perl interface, so we
are free to "unify" these variants into one function.  The section
L<"Supported Functions"> below lists all curses(3) function supported
by C<Curses>, along with a column listing if it is I<unified>.  If
so, it takes a varying number of arguments as follows:

=over 4

C<function( [win], [y, x], args );>

I<win> is an optional window argument, defaulting to C<stdscr> if not
specified.

I<y, x> is an optional coordinate pair used to move the cursor,
defaulting to no move if not specified.

I<args> are the required arguments of the function.  These are the
arguments you would specify if you were just calling the base function
and not any of the variants.

=back

This makes the variants obsolete, since their functionality has been
merged into a single function, so C<Curses> does not define them by
default.  You can still get them if you want, by setting the
variable C<$Curses::OldCurses> to a non-zero value before using the
C<Curses> package.  See L<"Perl 4.X C<cursperl> Compatibility">
for an example of this.

=head2 Objects

Objects are supported.  Example:

    $win = new Curses;
    $win->addstr(10, 10, 'foo');
    $win->refresh;
    ...

Any function that has been marked as I<unified> (see
L<"Supported Functions"> below and L<"Unified Functions"> above)
can be called as a method for a Curses object. 

Do not use C<initscr()> if using objects, as the first call to get
a C<new Curses> will do it for you.

=head1 COMPATIBILITY

=head2 Perl 4.X C<cursperl> Compatibility

C<Curses> has been written to take advantage of the new features of
Perl.  I felt it better to provide an improved curses programming
environment rather than to be 100% compatible.  However, many old
C<curseperl> applications will probably still work by starting the
script with:

    BEGIN { $Curses::OldCurses = 1; }
    use Curses;

Any old application that still does not work should print an
understandable error message explaining the problem.

Some functions and variables are not supported by C<Curses>, even with
the C<BEGIN> line.  They are listed under
L<"curses(3) items not supported by Curses">.

The variables C<$stdscr> and C<$curscr> are also available as
functions C<stdscr> and C<curscr>.  This is because of a Perl bug.
See the L<BUGS> section for details.

=head2 Incompatibilities with previous versions of C<Curses>

In previous versions of this software, some Perl functions took a
different set of parameters than their C counterparts.  This is no
longer true.  You should now use C<getstr($str)> and C<getyx($y, $x)>
instead of C<$str = getstr()> and C<($y, $x) = getyx()>.

=head2 Incompatibilities with other Perl programs

    menu.pl, v3.0 and v3.1
	There were various interaction problems between these two
	releases and Curses.  Please upgrade to the latest version
	(v3.3 as of 3/16/96).

=head1 DIAGNOSTICS

=over 4

=item * Curses function '%s' called with too %s arguments at ...

You have called a C<Curses> function with a wrong number of
arguments.

=item * argument %d to Curses function '%s' is not a Curses window at ...
=item * argument is not a Curses window at ...

The window argument you gave to the function wasn't really a window.

This probably means that you didn't give the right arguments to a
I<unified> function.  See the DESCRIPTION section on L<Unified
Functions> for more information.

=item * Curses function '%s' is not defined by your vendor at ...

You have a C<Curses> function in your code that your system's curses(3)
library doesn't define.

=item * Curses constant '%s' is not defined by your vendor at ...

You have a C<Curses> constant in your code that your system's curses(3)
library doesn't define.

=item * Curses does not support the curses function '%s', used at ...

You have a curses(3) function in your code that the C<Curses> module
doesn't support.

=item * Curses does not support the curses variable '%s', used at ...

You have a curses(3) variable in your code that the C<Curses> module
doesn't support.

=item * Curses does not support the curses constant '%s', used at ...

You have a bareword in your code that is trying to be interpreted as
a C<Curses> constant, but C<Curses> doesn't know anything about it.

=item * Curses::Vars::FETCH called with bad index at ...
=item * Curses::Vars::STORE called with bad index at ...

You've been playing with the C<tie> interface to the C<Curses>
variables.  Don't do that.  :-)

=item * Anything else

Check out the F<perldiag> man page to see if the error is in there.

=back

=head1 BUGS

If you use the variables C<$stdscr> and C<$curscr> instead of their
functional counterparts (C<stdscr> and C<curscr>), you might run into
a bug in Perl where the "magic" isn't called early enough.  This is
manifested by the C<Curses> package telling you C<$stdscr> isn't a
window.  One workaround is to put a line like C<$stdscr = $stdscr>
near the front of your program.

Probably many more.

=head1 AUTHOR

William Setzer <William_Setzer@ncsu.edu>

=head1 SYNOPSIS OF PERL CURSES SUPPORT

=head2 Supported Functions

	Supported     Unified?		Supported via $OldCurses[*]
	---------     --------		------------------------
	addch		Yes		waddch mvaddch mvwaddch
	addchnstr	Yes		waddchnstr mvaddchnstr mvwaddchnstr
	addchstr	Yes		waddchstr mvaddchstr mvwaddchstr
	addnstr		Yes		waddnstr mvaddnstr mvwaddnstr
	addstr		Yes		waddstr mvaddstr mvwaddstr
	attroff		Yes		wattroff
	attron		Yes		wattron
	attrset		Yes		wattrset
	baudrate	No
	beep		No
	bkgd		Yes		wbkgd
	bkgdset		Yes		wbkgdset
	border		Yes		wborder
	box		Yes
	can_change_color No
	cbreak		No
	clear		Yes		wclear
	clearok		Yes
	clrtobot	Yes		wclrtobot
	clrtoeol	Yes		wclrtoeol
	color_content	No
	COLOR_PAIR	No
	copywin		No
	delch		Yes		wdelch mvdelch mvwdelch
	deleteln	Yes		wdeleteln
	delwin		Yes
	derwin		Yes
	doupdate	No
	echo		No
	echochar	Yes		wechochar
	endwin		No
	erase		Yes		werase
	erasechar	No
	flash		No
	flushinp	No
	flusok		Yes
	getattrs	Yes
	getbegyx	Yes
	getbkgd		Yes
	getcap		No
	getch		Yes		wgetch mvgetch mvwgetch
	getmaxyx	Yes
	getnstr		Yes		wgetnstr mvgetnstr mvwgetnstr
	getparyx	Yes
	getstr		Yes		wgetstr mvgetstr mvwgetstr
	gettmode	No
	getyx		Yes
	halfdelay	No
	has_colors	No
	has_ic		No
	has_il		No
	hline		Yes		whline
	idcok		Yes
	idlok		Yes
	immedok		Yes
	inch		Yes		winch mvinch mvwinch
	inchnstr	Yes		winchnstr mvinchnstr mvwinchnstr
	inchstr		Yes		winchstr mvinchstr mvwinchstr
	init_color	No
	init_pair	No
	initscr		No
	innstr		Yes		winnstr mvinnstr mvwinnstr
	insch		Yes		winsch mvinsch mvwinsch
	insdelln	Yes		winsdelln
	insertln	Yes		winsertln
	insnstr		Yes		winsnstr mvinsnstr mvwinsnstr
	insstr		Yes		winsstr mvinsstr mvwinsstr
	instr		Yes		winstr mvinstr mvwinstr
	intrflush	Yes
	is_linetouched	Yes
	is_wintouched	Yes
	isendwin	No
	keyname		No
	keypad		Yes
	killchar	No
	leaveok		Yes
	longname	No
	meta		Yes
	move		Yes		wmove
	mvcur		No
	mvwin		Yes
	newpad		No
	newwin		No
	nl		No
	nocbreak	No
	nodelay		Yes
	noecho		No
	nonl		No
	noqiflush	No
	noraw		No
	notimeout	Yes
	noutrefresh	Yes		wnoutrefresh
	overlay		No
	overwrite	No
	pair_content	No
	PAIR_NUMBER	No
	pechochar	No
	pnoutrefresh	No
	prefresh	No
	qiflush		No
	raw		No
	refresh		Yes		wrefresh
	resetty		No
	savetty		No
	scrl		Yes		wscrl
	scroll		Yes
	scrollok	Yes
	setscrreg	Yes		wsetscrreg
	setterm		No
	slk_clear	No
	slk_init	No
	slk_label	No
	slk_noutrefresh	No
	slk_refresh	No
	slk_restore	No
	slk_set		No
	slk_touch	No
	standend	Yes		wstandend
	standout	Yes		wstandout
	start_color	No
	subpad		No
	subwin		Yes
	syncok		Yes
	timeout		Yes		wtimeout
	touchline	Yes
	touchln		Yes		wtouchln
	touchoverlap	No
	touchwin	Yes
	typeahead	No
	unctrl		No
	ungetch		No
	vline		Yes		wvline
	
[*] To use any functions in this column, the variable
C<$Curses::OldCurses> must be set to a non-zero value before using the
C<Curses> package.  See L<"Perl 4.X cursperl Compatibility"> for an
example of this.

=head2 Supported Variables
	
	LINES		COLS		stdscr[*]	curscr[*]
	
=head2 Supported Constants
	
	OK		ERR
	
	ACS_BLOCK	ACS_BOARD	ACS_BTEE	ACS_BULLET
	ACS_CKBOARD	ACS_DARROW	ACS_DEGREE	ACS_DIAMOND
	ACS_HLINE	ACS_LANTERN	ACS_LARROW	ACS_LLCORNER
	ACS_LRCORNER	ACS_LTEE	ACS_PLMINUS	ACS_PLUS
	ACS_RARROW	ACS_RTEE	ACS_S1		ACS_S9
	ACS_TTEE	ACS_UARROW	ACS_ULCORNER	ACS_URCORNER
	ACS_VLINE
	
	A_ALTCHARSET	A_ATTRIBUTES	A_BLINK		A_BOLD
	A_CHARTEXT	A_COLOR		A_DIM		A_INVIS
	A_NORMAL	A_PROTECT	A_REVERSE	A_STANDOUT
	A_UNDERLINE
	
	COLOR_BLACK	COLOR_BLUE	COLOR_CYAN	COLOR_GREEN
	COLOR_MAGENTA	COLOR_RED	COLOR_WHITE	COLOR_YELLOW
	
	KEY_A1		KEY_A3		KEY_B2		KEY_BACKSPACE
	KEY_BEG		KEY_BREAK	KEY_BTAB	KEY_C1
	KEY_C3		KEY_CANCEL	KEY_CATAB	KEY_CLEAR
	KEY_CLOSE	KEY_COMMAND	KEY_COPY	KEY_CREATE
	KEY_CTAB	KEY_DC		KEY_DL		KEY_DOWN
	KEY_EIC		KEY_END		KEY_ENTER	KEY_EOL
	KEY_EOS		KEY_EXIT	KEY_F0		KEY_FIND
	KEY_HELP	KEY_HOME	KEY_IC		KEY_IL
	KEY_LEFT	KEY_LL		KEY_MARK	KEY_MAX
	KEY_MESSAGE	KEY_MIN		KEY_MOVE	KEY_NEXT
	KEY_NPAGE	KEY_OPEN	KEY_OPTIONS	KEY_PPAGE
	KEY_PREVIOUS	KEY_PRINT	KEY_REDO	KEY_REFERENCE
	KEY_REFRESH	KEY_REPLACE	KEY_RESET	KEY_RESTART
	KEY_RESUME	KEY_RIGHT	KEY_SAVE	KEY_SBEG
	KEY_SCANCEL	KEY_SCOMMAND	KEY_SCOPY	KEY_SCREATE
	KEY_SDC		KEY_SDL		KEY_SELECT	KEY_SEND
	KEY_SEOL	KEY_SEXIT	KEY_SF		KEY_SFIND
	KEY_SHELP	KEY_SHOME	KEY_SIC		KEY_SLEFT
	KEY_SMESSAGE	KEY_SMOVE	KEY_SNEXT	KEY_SOPTIONS
	KEY_SPREVIOUS	KEY_SPRINT	KEY_SR		KEY_SREDO
	KEY_SREPLACE	KEY_SRESET	KEY_SRIGHT	KEY_SRSUME
	KEY_SSAVE	KEY_SSUSPEND	KEY_STAB	KEY_SUNDO
	KEY_SUSPEND	KEY_UNDO	KEY_UP
	
=head2 curses(3) items not supported by C<Curses>
	
	Functions
	---------
	tstp printw wprintw mvprintw mvwprintw scanw wscanw mvscanw mvwscanw
	_putchar fullname
	
	Variables
	---------
	ttytype Def_term My_term
 
[*] stdscr and curscr are also available via the Perl functions C<stdscr>
and C<curscr>.  See L<"Perl 4.X cursperl Compatibility"> for more
information.
