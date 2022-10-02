# NOTE: Derived from blib\lib\LWP\IO.pm.  Changes made here will be lost.
package LWP::IO;

sub write
{
    my $fd = shift;
    my $timeout = $_[1];  # we don't want to copy data in $_[0]

    my $len = length $_[0];
    my $offset = 0;
    while ($offset < $len) {
	my $win = '';
	vec($win, fileno($fd), 1) = 1;
	my $err;
	my $nfound = select(undef, $win, $err = $win, $timeout);
	if ($nfound == 0) {
	    die "Timeout";
	} elsif ($nfound < 0) {
	    die "Select failed: $!";
	} elsif ($err =~ /[^\0]/) {
	    die "Exception while writing on socket handle";
	} else {
	    my $n = syswrite($fd, $_[0], $len-$offset, $offset);
	    return $bytes_written unless defined $n;

	    if ($LWP::Debug::current_level{'conns'}) {
		LWP::Debug::conns("Write $n bytes: '" .
				  substr($_[0], $offset, $n) .
				  "'");
	    }
	    $offset += $n;
	}
    }
    $offset;
}

1;
1;
