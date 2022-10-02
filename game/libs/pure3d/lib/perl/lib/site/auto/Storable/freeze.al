# NOTE: Derived from blib\lib\Storable.pm.  Changes made here will be lost.
package Storable;

#
# freeze
#
# Store oject and its hierarchy in memory and return a scalar
# containing the result.
#
sub freeze {
	_freeze(0, @_);
}

1;
