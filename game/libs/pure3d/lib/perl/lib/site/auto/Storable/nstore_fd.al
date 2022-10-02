# NOTE: Derived from blib\lib\Storable.pm.  Changes made here will be lost.
package Storable;

#
# nstore_fd
#
# Same as store_fd, but in network order.
#
sub nstore_fd {
	my ($self, $file) = @_;
	return _store_fd(1, @_);
}

1;
