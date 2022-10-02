# NOTE: Derived from ..\blib\lib\Tk\Text.pm.  Changes made here will be lost.
package Tk::Text;

# ResetAnchor --
# Set the selection anchor to whichever end is farthest from the
# index argument. One special trick: if the selection has two or
# fewer characters, just leave the anchor where it is. In this
# case it does not matter which point gets chosen for the anchor,
# and for the things like Shift-Left and Shift-Right this produces
# better behavior when the cursor moves back and forth across the
# anchor.
#
# Arguments:
# w - The text widget.
# index - Position at which mouse button was pressed, which determines
# which end of selection should be used as anchor point.
sub ResetAnchor
{
 my $w = shift;
 my $index = shift;
 if (!defined $w->tag("ranges","sel"))
  {
   $w->mark("set","anchor",$index);
   return;
  }
 my $a = $w->index($index);
 my $b = $w->index("sel.first");
 my $c = $w->index("sel.last");
 if ($w->compare($a,"<",$b))
  {
   $w->mark("set","anchor","sel.last");
   return;
  }
 if ($w->compare($a,">",$c))
  {
   $w->mark("set","anchor","sel.first");
   return;
  }
 my ($lineA,$chA) = split(/\./,$a);
 my ($lineB,$chB) = split(/\./,$b);
 my ($lineC,$chC) = split(/\./,$c);
 if ($lineB < $lineC+2)
  {
   $total = length($w->get($b,$c));
   if ($total <= 2)
    {
     return;
    }
   if (length($w->get($b,$a)) < $total/2)
    {
     $w->mark("set","anchor","sel.last")
    }
   else
    {
     $w->mark("set","anchor","sel.first")
    }
   return;
  }
 if ($lineA-$lineB < $lineC-$lineA)
  {
   $w->mark("set","anchor","sel.last")
  }
 else
  {
   $w->mark("set","anchor","sel.first")
  }
}

1;
