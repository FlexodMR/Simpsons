# NOTE: Derived from blib\lib\LWP\IO.pm.  Changes made here will be lost.
package LWP::IO;

sub read
{
    my $fd      = shift;
    # data is now $_[0]
    my $size    = $_[1];
    my $offset  = $_[2] || 0;
    my $timeout = $_[3];

    my $rin = '';
    vec($rin, fileno($fd), 1) = 1;
    my $err;
    my $nfound = select($rin, undef, $err = $rin, $timeout);
    if ($nfound == 0) {
	die "Timeout";
    } elsif ($nfound < 0) {
	die "Select failed: $!";
    } elsif ($err =~ /[^\0]/) {
	die "Exception while reading on socket handle";
    } else {
	my $n = sysread($fd, $_[0], $size, $offset);
	# Since so much data might pass here we cheat about debugging
	if ($LWP::Debug::current_level{'conns'}) {
	    LWP::Debug::debug("Read $n bytes");
	    LWP::Debug::conns($_[0]) if $n;
	}
	return $n;
    }
}

1;
