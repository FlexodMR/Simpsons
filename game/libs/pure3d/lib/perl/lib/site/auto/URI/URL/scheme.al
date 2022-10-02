# NOTE: Derived from blib\lib\URI\URL.pm.  Changes made here will be lost.
package URI::URL;

sub scheme {
    my $self = shift;
    my $old = $self->{'scheme'};
    return $old unless @_;

    my $newscheme = shift;
    if (defined($newscheme) && length($newscheme)) {
	# reparse URL with new scheme
	my $str = $self->as_string;
	$str =~ s/^[\w+\-.]+://;
	my $newself = new URI::URL "$newscheme:$str";
	%$self = %$newself;
	bless $self, ref($newself);
    } else {
	$self->{'scheme'} = undef;
    }
    $old;
}

1;
