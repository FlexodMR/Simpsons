# NOTE: Derived from ./blib/lib/Mail/Internet.pm.  Changes made here will be lost.
package Mail::Internet;

sub escape_from
{
 my $me = shift;

 my $body = $me->body;
 local $_;

 scalar grep { s/\A(>*From) />$1 /o } @$body;
}

1;
