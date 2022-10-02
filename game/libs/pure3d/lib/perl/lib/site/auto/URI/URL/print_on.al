# NOTE: Derived from blib\lib\URI\URL.pm.  Changes made here will be lost.
package URI::URL;

sub print_on
{
    no strict qw(refs);  # because we use strings as filehandles
    my $self = shift;
    my $fh = shift || 'STDOUT';
    my($k, $v);
    print $fh "Dump of URL $self...\n";
    foreach $k (sort keys %$self){
	$v = $self->{$k};
	$v = 'UNDEF' unless defined $v;
	print $fh "  $k\t'$v'\n";
    }
}

1;
