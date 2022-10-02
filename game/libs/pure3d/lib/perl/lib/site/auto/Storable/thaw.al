# NOTE: Derived from blib\lib\Storable.pm.  Changes made here will be lost.
package Storable;

#
# thaw
#
# Recreate objects in memory from an existing frozen image created
# by freeze.
#
sub thaw {
	my ($frozen) = @_;
	my $self;
	eval { $self = mretrieve($frozen) };	# Call C routine
	croak $@ if $@ =~ s/\.?\n$/,/;
	return $self;
}

1;
