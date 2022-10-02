# NOTE: Derived from blib\lib\Storable.pm.  Changes made here will be lost.
package Storable;

#
# nfreeze
#
# Same as freeze but in network order.
#
sub nfreeze {
	_freeze(1, @_);
}

1;
