# NOTE: Derived from blib\lib\Tk\TextUndo.pm.  Changes made here will be lost.
package Tk::TextUndo;

sub OldSave
{
 my $text = shift;
 my $file = (@_) ? shift : $text->{FILE};
 $text->BackTrace("No filename defined") unless (defined $file);
 if (open(FILE,">$file"))
  {
   print FILE $text->get('1.0','end');
   delete $text->{UNDO} if (close(FILE));
  }
 else
  {
   $text->BackTrace("Cannot open $file:$!");
  }
}

1;
