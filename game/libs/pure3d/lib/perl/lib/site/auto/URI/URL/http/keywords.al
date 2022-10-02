# NOTE: Derived from blib\lib\URI\URL\http.pm.  Changes made here will be lost.
package URI::URL::http;

# Note that the following two methods does not return the old
# value if they are used to set a new value.
# The risk of croaking is to high :-)  We will eventually rely
# on undefined wantarray (require perl5.004).

# Handle ...?dog+bones type of query
sub keywords {
    my $self = shift;
    $old = $self->{'query'};
    if (@_) {
	# Try to set query string
	$self->equery(join('+', map { URI::Escape::uri_escape($_, $URI::URL::reserved) } @_));
	return undef;
    }
    return undef unless defined $old;
    Carp::croak("Query is not keywords") if $old =~ /=/;
    map { URI::Escape::uri_unescape($_) } split(/\+/, $old);
}

1;
