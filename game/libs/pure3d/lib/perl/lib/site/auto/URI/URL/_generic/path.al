# NOTE: Derived from blib\lib\URI\URL\_generic.pm.  Changes made here will be lost.
package URI::URL::_generic;

sub path {
    my $self = shift;
    my $old = $self->_elem('path',
			   map { uri_escape($_,
					    $URI::URL::reserved_no_slash)
			       } @_);

    if ($URI::URL::COMPAT_VER_3) {
	# We used to get rid of the leading "/" in the path
	if (defined $old) {
	    $old =~ s|^/||;
	    Carp::croak("Path components contain '/' (you must call epath)")
		if $old =~ /%2[fF]/;
	    return uri_unescape($old);
	}
	return undef;
    }

    return '/' if !defined($old) || !length($old);
    Carp::croak("Path components contain '/' (you must call epath)")
	if $old =~ /%2[fF]/ and !@_;
    $old = "/$old" if $old !~ m|^/| && defined $self->{'netloc'};
    return uri_unescape($old);
}

1;
