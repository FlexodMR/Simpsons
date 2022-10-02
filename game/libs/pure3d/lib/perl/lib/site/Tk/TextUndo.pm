# Copyright (c) 1995-1997 Nick Ing-Simmons. All rights reserved.
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl itself.
package Tk::TextUndo;
require Tk::Text;
use AutoLoader;

@ISA = qw(Tk::Text);

Construct Tk::Widget 'TextUndo';

sub ClassInit
{
 my ($class,$mw) = @_;
 $mw->bind($class,'<L4>','undo');
 return $class->SUPER::ClassInit($mw);
}

sub undo
{
 my ($w) = @_; 
 if (exists $w->{UNDO})
  {
   if (@{$w->{UNDO}})
    {
     my ($op,@args) = @{pop(@{$w->{UNDO}})};
     $w->$op(@args);   
     $w->SetCursor($args[0]);
     return;
    }
  }
 $w->bell;
}

sub addUndo
{
 my ($w,$op,@args) = @_;
 $w->{UNDO} = [] unless (exists $w->{UNDO});
 push(@{$w->{UNDO}},['SUPER::'.$op,@args]);
 # print "add(",join(',',$op,@args),")\n";
}

sub topUndo
{
 my ($w) = @_;
 return undef unless (exists $w->{UNDO});
 return $w->{UNDO}[-1];
}

sub insert
{
 my ($w,$index,$str,@tags) = @_;
 my $s = $w->index($index);
 $w->markSet('notepos' => $s);
 $w->SUPER::insert($s,$str,@tags);
 # Combine 'trivial' inserts into clumps
 if (length($str) == 1 && $str ne "\n")
  {
   my $t = $w->topUndo;
   if ($t && $t->[0] =~ /delete$/ && $w->compare($t->[2],'==',$s))
    {
     $t->[2] = $w->index('notepos');
     return;
    }
  }
 $w->addUndo('delete',$s,$w->index('notepos'));
}

sub delete
{
 my $w = shift;
 my $str = $w->get(@_);
 my $s = $w->index(shift);
 $w->SUPER::delete($s,@_);
 $w->addUndo('insert',$s,$str);
}

1;
__END__

sub Save
{
 my $text = shift;
 my $file = (@_) ? shift : $text->{FILE};
 $text->BackTrace("No filename defined") unless (defined $file);
 if (open(FILE,">$file"))
  {
   my $index = '1.0';
   while ($text->compare($index,'<','end'))
    {
     my $end = $text->index("$index + 1024 chars");
     print FILE $text->get($index,$end);
     $index = $end;
    }
   delete $text->{UNDO} if (close(FILE));
  }
 else
  {
   $text->BackTrace("Cannot open $file:$!");
  }
}



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

sub Load
{
 my ($text,$file) = @_;
 if (open(FILE,"<$file"))
  {
   $text->MainWindow->Busy;
   $text->SUPER::delete('1.0','end');
   delete $text->{UNDO};
   while (<FILE>)
    {
     $text->SUPER::insert('end',$_);
    }
   close(FILE);
   $text->{FILE} = $file;
   $text->MainWindow->Unbusy;
  }
 else
  {
   $text->BackTrace("Cannot open $file:$!");
  }
}

#   Should one add/document a Filename(?$newfilename?) method, or
#   document the $text->{FILE} instance variable, or
#   leave the housekeeping to the programmer?

#   We have here no <L4> on our keyboard :-(  So TextUndo needs

#	- document the 'undo' method. so other can use Bind
#	- an BindUndo method
#	- or use/document *textUndo.undo resource (defaults
#	  to <L4>

=head1 NAME

Tk::TextUndo - perl/tk text widget with bindings to undo changes.

=head1 SYNOPSIS

    use Tk::TextUndo;
    ...
    $testundo = $parent->TextUndo(?option => value, ...?);
    ...

=head1 DESCRIPTION

This IS-A text widget with an unlimited 'undo' history but without
a re'undo' capability.

=head2 Bindings

The C<TextUndo> widget has the same bindings as the L<Text> widget.
Additionally to the L<Text> widget there are the following bindings:

=over 4

=item Event <L4>

undo the last change.  Pressing <L4> several times undo
step by step the changes made to the text widget.


=back

=head2 Methods

The C<TextUndo> widget has the same methods as C<Text> widget.
Additional method for the C<TextUndo> widget are:

=over 4

=item $text->Load($filename);

Loads the contents of the $filename into the text widget. Load()
delete the previous contents of the text widget as well as it's
undo history of the previous file.

=item $text->Save(?$otherfilename?)

Save contents of the text widget to a file. If the
$otherfilename is not specified, the text widget contents
writes the file of $filename used in the last Load()
call.  If no file was previously Load()'ed an error message
pops up.  The default filename of the last Load() call
is not overwriten by $otherfilename.

=back

=head1 KEYS

widget, text, undo

=head1 SEE ALSO

Tk::Text(3), Tk::ROText(3)

=cut

