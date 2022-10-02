@rem = '--*-Perl-*--
@echo off
perl -x -S %0 %1 %2 %3 %4 %5 %6 %7 %8 %9
goto endofperl
@rem ';
#!/usr/local/bin/perl -w
#line 8

# This script demonstrates the various widgets provided by Tk, along with
# many of the features of the Tk toolkit.  This file only contains code to
# generate the main window for the application, which invokes individual
# demonstrations.  The code for the actual demonstrations is contained in
# separate ".pl" files in the "widget_lib" directory, which are autoloaded 
# by this script as needed.
#
# widget looks in the directory specified on the command line to load user
# contributed demonstrations.  If no directory name is specified when widget is
# invoked and the environment variable WIDTRIB is defined then demonstrations
# are loaded from the WIDTRIB directory. If WIDTRIB is undefined then widget
# defaults to the released user contributed directory.
#
# Stephen O. Lidie, LUCC, 96/03/11.  lusol@Lehigh.EDU
# Stephen O. Lidie, LUCC, 97/01/01.  lusol@Lehigh.EDU
# Stephen O. Lidie, LUCC, 97/02/11.  lusol@Lehigh.EDU
# Stephen O. Lidie, LUCC, 97/06/07.  lusol@Lehigh.EDU
#     Update for Tk402.00x.  Total revamp:  WidgetDemo, Scrolled, released
#     composites, -menuitems, qw//, etcetera.  Perl 5.004 required.

require 5.004;

use English;
use Tk;
use lib Tk->findINC('demos/widget_lib');
use Tk::widgets qw/Dialog ErrorDialog/;
use WidgetDemo;
use subs qw/inswt invoke lsearch see_code see_vars show_stat view_widget_code/;
use vars qw/$MW $FONT $WIDTRIB/;
use vars qw/$CODE $CODE_TEXT $VARS $VIEW $VIEW_TEXT/;
use vars qw/$BRAKES $LIGHTS $OIL $SOBER $TRANS $WIPERS/;
use vars qw/$COLOR $FONT_STYLE $POINT_SIZE/;
use strict;
 
$MW = MainWindow->new;
$MW->title('Widget Demonstration');
$FONT = '-*-Helvetica-Medium-R-Normal--*-140-*-*-*-*-*-*';
my $widget_lib = Tk->findINC('demos/widget_lib');
my $WIDTRIB = Tk->findINC('demos/widtrib');
$WIDTRIB = $ENV{WIDTRIB} if defined $ENV{WIDTRIB}; 
$WIDTRIB = $ARGV[0] if defined $ARGV[0]; 

# The code below creates the main window, consisting of a menu bar
# and a text widget that explains how to use the program, plus lists
# all of the demos as hypertext items.

my $menubar = $MW->Frame;
$menubar->grid(qw/-sticky ew/);
$menubar->gridColumnconfigure(qw/0 -weight 1/);

my $file = $menubar->Menubutton(qw/-text File -underline 0 -menuitems/ =>
    [
     [Button    => '~View', -command => [\&view_widget_code, __FILE__]],
     [Separator => ''],
     [Button    => '~Quit', -command => [\&exit]],
    ])->grid(qw/-sticky w/); 
my $about = $menubar->Menubutton(qw/-text About -underline 0 -menuitems/ =>
    [
     [Button    => '~Widget'],
    ])->grid(qw/-row 0 -column 1 -sticky w/); 

my $T = $MW->Scrolled('Text',
    -scrollbars => 'e',		  
    -wrap       => 'word',
    -width      => 60,
    -height     => 30, 
    -font       => $FONT,
    -setgrid    => 1,
)->grid(qw/-sticky nsew/);
$T->bindtags(qw/widget_demo/);	# remove all bindings but dummy "widget_demo"

my $STATUS_VAR;
my $status = $MW->Label(-textvariable => \$STATUS_VAR, qw/-anchor w/);
$status->grid(qw/-sticky ew/);

# Create a bunch of tags to use in the text widget, such as those for
# section titles and demo descriptions.  Also define the bindings for
# tags.

$T->tag(qw/configure title -font -*-Helvetica-Bold-R-Normal--*-180-*-*-*-*-*-*/);
$T->tag(qw/configure demo -lmargin1 1c -lmargin2 1c -foreground blue/);

if ($MW->depth  == 1) {
    $T->tag(qw/configure hot -background black -foreground white/);
    $T->tag(qw/configure visited -lmargin1 1c -lmargin2 1c -underline 1/);
} else {
    $T->tag(qw/configure hot -relief raised -borderwidth 1 -foreground red/);
    $T->tag(qw/configure visited -lmargin1 1c -lmargin2 1c -foreground/ =>
	    '#303080');
}

$T->tag(qw/bind demo <ButtonRelease-1>/ => sub {invoke $T->index('current')});
my $last_line = '';
$T->tag(qw/bind demo <Enter>/ => [sub {
	my($text, $sv) = @ARG;
	my $e = $text->XEvent;
	my($x, $y) = ($e->x, $e->y);
	$last_line = $text->index("\@$x,$y linestart");
	$text->tag(qw/add hot/, $last_line, "$last_line lineend");
	$text->configure(qw/-cursor hand2/);
	show_stat $sv, $text, $text->index('current');
    }, \$STATUS_VAR]
);
$T->tag(qw/bind demo <Leave>/ => [sub {
	my($text, $sv) = @ARG;
	$text->tag(qw/remove hot 1.0 end/);
	$text->configure(qw/-cursor xterm/);
	$$sv = '';
    }, \$STATUS_VAR]
);
$T->tag(qw/bind demo <Motion>/ => [sub {
	my($text, $sv) = @ARG;
	my $e = $text->XEvent;
	my($x, $y) = ($e->x, $e->y);
	my $new_line = $text->index("\@$x,$y linestart");
	if ($new_line ne $last_line) {
	    $text->tag(qw/remove hot 1.0 end/);
	    $last_line = $new_line;
	    $text->tag(qw/add hot/, $last_line, "$last_line lineend");
	}
	show_stat $sv, $text, $text->index('current');
    }, \$STATUS_VAR]
);

# Create the text for the text widget.

$T->insert('end', "Perl/Tk Widget Demonstrations\n", 'title');
$T->insert('end', 
"\nThis application provides a front end for several short scripts that demonstrate what you can do with Tk widgets.  Each of the numbered lines below describes a demonstration;  you can click on it to invoke the demonstration.  Once the demonstration window appears, you can click the \"See Code\" button to see the Perl/Tk code that created the demonstration.  If you wish, you can edit the code and click the \"Rerun Demo\" button in the code window to reinvoke the demonstration with the modified code.\n");

# Define globals for demo toplevels, informative text with tags for
# highlighting and specifying the demo's file name.

$T->insert('end', "\n", '', 
	   "Labels, buttons, checkbuttons, and radiobuttons\n", 'title');
$T->insert('end', "1. Labels (text and images).\n", [qw/demo demo-labels/]);
$T->insert('end', "2. Buttons.\n", [qw/demo demo-button/]);
$T->insert('end', "3. Checkbuttons (select any of a group).\n",
    [qw/demo demo-check/]);
$T->insert('end', "4. Radiobuttons (select one of a group).\n",
    [qw/demo demo-radio/]);
$T->insert('end', "5. A 15-puzzle game made out of buttons.\n",
    [qw/demo demo-puzzle/]);
$T->insert('end', "6. Iconic buttons that use bitmaps.\n",
    [qw/demo demo-icon/]);
$T->insert('end', "7. Two labels displaying images.\n",
    [qw/demo demo-image1/]);
$T->insert('end', "8. A simple user interface for viewing images.\n",
    [qw/demo demo-image2/]);

$T->insert('end', "\n", '', "Listboxes\n", 'title');
$T->insert('end', "1. 50 states.\n", [qw/demo demo-states/]);
$T->insert('end', "2. Colors: change the color scheme for the application.\n",
    [qw/demo demo-colors/]);
$T->insert('end', "3. A collection of famous sayings.\n",
    [qw/demo demo-sayings/]);

$T->insert('end', "\n", '', "Entries\n", 'title');
$T->insert('end', "1. Without scrollbars.\n", [qw/demo demo-entry1/]);
$T->insert('end', "2. With scrollbars.\n", [qw/demo demo-entry2/]);
$T->insert('end', "3. Simple Rolodex-like form.\n", [qw/demo demo-form/]);

$T->insert('end', "\n", '', "Text\n", 'title');
$T->insert('end', "1. Basic editable text.\n", [qw/demo demo-texts/]);
$T->insert('end', "2. Text display styles.\n", [qw/demo demo-style/]);
$T->insert('end', "3. Hypertext (tag bindings).\n", [qw/demo demo-bind/]);
$T->insert('end', "4. A text widget with embedded windows.\n",
    [qw/demo demo-twind/]);
$T->insert('end', "5. A search tool built with a text widget.\n",
    [qw/demo demo-search/]);

$T->insert('end', "\n", '', "Canvases\n", 'title');
$T->insert('end', "1. The canvas item types.\n", [qw/demo demo-items/]);
$T->insert('end', "2. A simple 2-D plot.\n", [qw/demo demo-plot/]);
$T->insert('end', "3. Text items in canvases.\n", [qw/demo demo-ctext/]);
$T->insert('end', "4. An editor for arrowheads on canvas lines.\n",
    [qw/demo demo-arrows/]);
$T->insert('end', "5. A ruler with adjustable tab stops.\n",
    [qw/demo demo-ruler/]);
$T->insert('end', "6. A building floor plan.\n", [qw/demo demo-floor/]);
$T->insert('end', "7. A simple scrollable canvas.\n", [qw/demo demo-cscroll/]);

$T->insert('end', "\n", '', "Scales\n", 'title');
$T->insert('end', "1. Vertical scale.\n", [qw/demo demo-vscale/]);
$T->insert('end', "2. Horizontal scale.\n", [qw/demo demo-hscale/]);

$T->insert('end', "\n", '', "Menus\n", 'title');
$T->insert('end', "1. A window containing several menus and cascades.\n",
    [qw/demo demo-menus/]);
$T->insert('end', "2. Like above, but in a manner particular to Perl/Tk.\n",
    [qw/demo demo-menus2/]);

$T->insert('end', "\n", '', "Simulations\n", 'title');
$T->insert('end', "1. Balls bouncing in a cavity.\n", [qw/demo demo-bounce/]);

$T->insert('end', "\n", '', "Miscellaneous\n", 'title');
$T->insert('end', "1. The built-in bitmaps.\n", [qw/demo demo-bitmaps/]);
$T->insert('end', "2. A dialog box with a local grab.\n",
    [qw/demo demo-dialog1/]);
$T->insert('end', "3. A dialog box with a global grab.\n",
    [qw/demo demo-dialog2/]);

$T->insert('end', "\n", '', "User Contributed Demonstrations\n", 'title');
opendir(C, $WIDTRIB) or warn "Cannot open $WIDTRIB: $OS_ERROR!";
my(@dirent) = grep /^.+\.pl$/, sort(readdir C);
closedir C;
my $i;
while ($ARG = shift @dirent) {
    open(C, "$WIDTRIB/$ARG") or warn "Cannot open $ARG: $OS_ERROR!";
    my($name) = /^(.*)\.pl$/;
    $ARG = <C>;
    my($title) = /^#\s*(.*)$/;
    close C;
    $T->insert('end', ++$i . ". $title\n", ['demo', "demo-$name"]);
}
$T->configure(-state => 'disabled');

# Create all the dialogs required by this demonstration.

my $DIALOG_ABOUT = $MW->Dialog(
    -title          => 'About widget',
    -bitmap         => undef,
    -default_button => 'OK',
    -buttons        => ['OK'],
    -text           => "       widget\nVersion $Tk::VERSION\n     97/06/07",
);
$about->entryconfigure('Widget', -command => [$DIALOG_ABOUT => 'Show']);

my $DIALOG_ICON = $MW->Dialog(
    -title          => 'Bitmap Menu Entry',
    -bitmap         => undef,
    -default_button => 'OK',
    -buttons        => ['OK'],
    -text           => 'The menu entry you invoked displays a bitmap rather than a text string.  Other than this, it is just like any other menu entry.',
);
$DIALOG_ICON->configure(-bitmap => undef); # keep -w from complaining

MainLoop;

sub AUTOLOAD {

    # This routine handles the loading of most demo methods.

    my($demo) = @ARG;

    $T->Busy;
    {
	local $INPUT_RECORD_SEPARATOR = undef;
	my $file;
	$file = "$WIDTRIB/${demo}.pl" if -f "$WIDTRIB/${demo}.pl";
	$file = "$widget_lib/${demo}.pl" if -f "$widget_lib/${demo}.pl";
	open(DEMO, $file) or warn "Cannot open demo file $file: $OS_ERROR!";
	eval <DEMO>;
	warn $EVAL_ERROR if $EVAL_ERROR;
	close DEMO;
    }
    $T->Unbusy;
    goto &$::AUTOLOAD;

} # end AUTOLOAD

sub inswt {

    # insert_with_tags
    #
    # The procedure below inserts text into a given text widget and applies
    # one or more tags to that text.  The arguments are:
    #
    # w		Window in which to insert
    # text	Text to insert (it's inserted at the "insert" mark)
    # args	One or more tags to apply to text.  If this is empty then all
    #           tags are removed from the text.

    my($w, $text, @args) = @ARG;

    my $start = $w->index('insert');
    $w->insert('insert', $text);
    foreach my $tag ($w->tag('names', $start)) {
	$w->tag('remove', $tag, $start, 'insert');
    }
    foreach my $i (@args) {
	$w->tag('add', $i, $start, 'insert');
    }

} # end inswt

sub invoke {

    # This procedure is called when the user clicks on a demo description.

    my($index) = @ARG;

    my @tags = $T->tag('names', $index);
    my $i = lsearch('demo\-.*', @tags);
    return if $i < 0;
    my($demo) = $tags[$i] =~ /demo-(.*)/;
    $T->tag('add', 'visited', "$index linestart",
                              "$index lineend -1 chars");
    {no strict 'refs'; &$demo($demo);}

} # end invoke

sub lsearch {

    # Search the list using the supplied regular expression and return it's
    # ordinal, or -1 if not found.

    my($regexp, @list) = @ARG;
    my($i);

    for ($i=0; $i<=$#list; $i++) {
        return $i if $list[$i] =~ /$regexp/;
    }
    return -1;

} # end lsearch

sub see_code {

    # This procedure creates a toplevel window that displays the code for
    # a demonstration and allows it to be edited and reinvoked.

    my($demo) = @ARG;

    my $file = "${demo}.pl";
    if (not Exists $CODE) {
	$CODE = $MW->Toplevel;
	my $code_buttons = $CODE->Frame;
	$code_buttons->pack(qw/-side bottom -fill x/);
	my $code_buttons_dismiss = $code_buttons->Button(
            -text    => 'Dismiss',
            -command => [$CODE => 'withdraw'],
	);
	my $code_buttons_rerun = $code_buttons->Button(
            -text => 'Rerun Demo',
            -command => [sub {
		    eval $CODE_TEXT->get(qw/1.0 end/);
		    {no strict 'refs'; &$demo($demo);}
		}],
        );
	$code_buttons_dismiss->pack(qw/-side left -expand 1/);
	$code_buttons_rerun->pack(qw/-side left -expand 1/);
	$CODE_TEXT = $CODE->Scrolled('Text', 
				     qw/-scrollbars e -height 40 -setgrid 1/);
	$CODE_TEXT->pack(qw/-side left -expand 1 -fill both/);
    } else {
	$CODE->deiconify;
	$CODE->raise;
    }
    $CODE->iconname($file);
    $file = "$WIDTRIB/${demo}.pl" if -f "$WIDTRIB/${demo}.pl";
    $file = "$widget_lib/${demo}.pl" if -f "$widget_lib/${demo}.pl";
    $CODE->title("Demo code: $file");
    $CODE_TEXT->delete(qw/1.0 end/);
    open(CODE, "<$file") or warn "Cannot open demo file $file: $OS_ERROR!";
    {
	local $INPUT_RECORD_SEPARATOR = undef;
	$CODE_TEXT->insert('1.0', <CODE>);
    }
    close CODE;
    $CODE_TEXT->mark(qw/set insert 1.0/);

} # end see_code

sub see_vars {

    # Create a top-level window that displays a bunch of global variable values
    # and keeps the display up-to-date even when the variables change value.
    # $args is a pointer to a list of list of 2: 
    #
    #   ["variable description", \$VAR]
    #
    # The old trick of passing a string to serve as the description and a soft
    # reference to the variable no longer works with lexicals and use strict.

    my($parent, $args) = @ARG;

    $VARS->destroy if Exists($VARS);
    $VARS = $parent->Toplevel;
    $VARS->geometry('+300+300');
    $VARS->title('Variable Values');
    $VARS->iconname('Variables');

    my $title = $VARS->Label(
        -text   => 'Variable Values:',
        -width  => 20,
        -anchor => 'center',
        -font   => '-*-helvetica-medium-r-normal--*-180-*-*-*-*-*-*',
    );
    $title->pack(qw/-side top -fill x/);
    my($label, $var);
    foreach my $i (@$args) {
	($label, $var) = @$i;
	my $wf = $VARS->Frame->pack(qw/-anchor w/);
	$wf->Label(-text => "$label: ")->pack(qw/-side left/);
	$wf->Label(-textvariable => $var)->pack(qw/-side left/);
    }
    $VARS->Button(-text => 'OK', -command => [$VARS => 'destroy'])->
        pack(qw/-side bottom -pady 2/);

} # end see_vars

sub show_stat {

    # Display name of current demonstration.  $sv is a reference to the
    # status Label -textvariable, $text is the Text widget reference and
    # $index is the demonstration index in the Text widget.

    my($sv, $text, $index) = @ARG;

    my @tags = $text->tag('names', $index);
    my $i = lsearch('demo\-.*', @tags);
    return if $i < 0;
    my($demo) = $tags[$i] =~ /demo-(.*)/;
    $$sv = "Click Button-1 to run the \"$demo\" demonstration.";

} # end show_stat

sub view_widget_code {

    # Expose a file's innards to the world too, but only for viewing.

    my($widget) = @ARG;

    if (not Exists $VIEW) {
	$VIEW = $MW->Toplevel;
	$VIEW->iconname('widget');
	my $view_buttons = $VIEW->Frame;
	$view_buttons->pack(qw/-side bottom -expand 1 -fill x/);
	my $view_buttons_dismiss = $view_buttons->Button(
            -text    => 'Dismiss',
            -command => [$VIEW => 'withdraw'],
	);
	$view_buttons_dismiss->pack(qw/-side left -expand 1/);
	$VIEW_TEXT = $VIEW->Scrolled('Text',
				     qw/-scrollbars e -height 40 -setgrid 1/);
	$VIEW_TEXT->pack(qw/-side left -expand 1 -fill both/);
    } else {
	$VIEW->deiconify;
	$VIEW->raise;
    }
    $VIEW->title("Demo code: $widget");
    $VIEW_TEXT->configure(qw/-state normal/);
    $VIEW_TEXT->delete(qw/1.0 end/);
    open(VIEW, "<$widget") or warn "Cannot open demo file $widget: $OS_ERROR!";
    {
	local $INPUT_RECORD_SEPARATOR = undef;
	$VIEW_TEXT->insert('1.0', <VIEW>);
    }
    close VIEW;
    $VIEW_TEXT->mark(qw/set insert 1.0/);
    $VIEW_TEXT->configure(qw/-state disabled/);

} # end view_widget_code
__END__
:endofperl
