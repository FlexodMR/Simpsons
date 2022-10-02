# NOTE: Derived from ../LIB\DynaLoader.pm.  Changes made here will be lost.
package DynaLoader;

sub dl_find_symbol_anywhere
{
    my $sym = shift;
    my $libref;
    foreach $libref (@dl_librefs) {
	my $symref = dl_find_symbol($libref,$sym);
	return $symref if $symref;
    }
    return undef;
}

1;
