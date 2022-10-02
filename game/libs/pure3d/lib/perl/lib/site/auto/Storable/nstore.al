# NOTE: Derived from blib\lib\Storable.pm.  Changes made here will be lost.
package Storable;

#
# nstore
#
# Same as store, but in network order.
#
sub nstore {
	return _store(1, @_);
}

1;
