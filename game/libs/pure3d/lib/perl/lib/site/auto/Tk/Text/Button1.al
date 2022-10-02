# NOTE: Derived from ..\blib\lib\Tk\Text.pm.  Changes made here will be lost.
package Tk::Text;

# Button1 --
# This procedure is invoked to handle button-1 presses in text
# widgets. It moves the insertion cursor, sets the selection anchor,
# and claims the input focus.
#
# Arguments:
# w - The text window in which the button was pressed.
# x - The x-coordinate of the button press.
# y - The x-coordinate of the button press.
sub Button1
{
 my $w = shift;
 my $x = shift;
 my $y = shift;
 $Tk::selectMode = "char";
 $Tk::mouseMoved = 0;
 $w->mark("set","insert","@".$x.",".$y);
 $w->mark("set","anchor","insert");
 if ($w->cget("-state") eq "normal")
  {
   $w->focus()
  }
 $w->tag("remove","sel","0.0","end");
}

1;
