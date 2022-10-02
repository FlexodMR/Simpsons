# NOTE: Derived from ..\blib\lib\Tk\Text.pm.  Changes made here will be lost.
package Tk::Text;

# KeySelect
# This procedure is invoked when stroking out selections using the
# keyboard. It moves the cursor to a new position, then extends
# the selection to that position.
#
# Arguments:
# w - The text window.
# new - A new position for the insertion cursor (the cursor has not
# actually been moved to this position yet).
sub KeySelect
{
 my $w = shift;
 my $new = shift;
 my ($first,$last);
 if (!defined $w->tag("nextrange","sel","1.0","end"))
  {
   if ($w->compare($new,"<","insert"))
    {
     $w->tag("add","sel",$new,"insert")
    }
   else
    {
     $w->tag("add","sel","insert",$new)
    }
  }
 else
  {
   if ($w->compare($new,"<","anchor"))
    {
     $first = $new;
     $last = "anchor"
    }
   else
    {
     $first = "anchor";
     $last = $new
    }
   $w->tag("remove","sel","1.0",$first);
   $w->tag("add","sel",$first,$last);
   $w->tag("remove","sel",$last,"end")
  }
 $w->mark("set","insert",$new);
 $w->see("insert");
 $w->idletasks;
}

1;
