# NOTE: Derived from ./blib/lib/Mail/Internet.pm.  Changes made here will be lost.
package Mail::Internet;

sub add_signature
{
 my $me = shift;
 carp "add_signature depriciated, use ->sign" if $^W;
 $me->sign(File => shift || "$ENV{HOME}/.signature");
}

1;
