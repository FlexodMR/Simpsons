# NOTE: Derived from blib\lib\URI\URL\_generic.pm.  Changes made here will be lost.
package URI::URL::_generic;

# The oposite of $url->abs.  Return a URL as much relative as possible
sub rel {
    my($self, $base) = @_;
    my $rel = $self->clone;
    $base = $self->base unless $base;
    return $rel unless $base;
    $base = new URI::URL $base unless ref $base;
    $rel->base($base);

    my($scheme, $netloc, $path) = @{$rel}{qw(scheme netloc path)};
    if (!defined($scheme) && !defined($netloc)) {
	# it is already relative
	return $rel;
    }
    
    my($bscheme, $bnetloc, $bpath) = @{$base}{qw(scheme netloc path)};
    for ($netloc, $bnetloc, $bpath) { $_ = '' unless defined }
    $bpath = "/" unless length $bpath;  # a slash is default
    unless ($scheme eq $bscheme && $netloc eq $bnetloc) {
	# different location, can't make it relative
	return $rel;
    }

    # Make it relative by eliminating scheme and netloc
    $rel->{'scheme'} = undef;
    $rel->netloc(undef);

    # This loop is based on code from Nicolai Langfeldt <janl@ifi.uio.no>.
    # It will remove all common initial path components.
    while (1) {
	#print "PATHS: $path $bpath\n";
	my $i = index($path, '/');
	last unless $i >=0 && $i == index($bpath, '/') &&
                    substr($path,0,$i) eq substr($bpath,0,$i);
	substr($path, 0, $i+1)  = '';
	substr($bpath, 0, $i+1) = '';
    }

    # Add one "../" for each path component left in the base path
    $path = ('../' x $bpath =~ tr|/|/|) . $path;

    $rel->epath($path);
    $rel;
}

1;
