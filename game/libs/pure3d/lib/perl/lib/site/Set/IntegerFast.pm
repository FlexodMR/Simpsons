
#  Copyright (c) 1995, 1996, 1997 by Steffen Beyer. All rights reserved.
#  This package is free software; you can redistribute it and/or modify
#  it under the same terms as Perl itself.

package Set::IntegerFast;

use Bit::Vector;

use Carp;

require Exporter;

@ISA = qw(Exporter);

@EXPORT = qw();

@EXPORT_OK = qw();

$VERSION = '4.2';

sub new
{
    croak "Usage: \$set = Set::IntegerFast->new(\$elements);"
      if (@_ != 2);

    my $proto = shift;
    my $class = ref($proto) || $proto || 'Set::IntegerFast';
    my $elements = shift;

    return( Bit::Vector::new( $class, $elements ) );
}

sub Version
{
    return( $Set::IntegerFast::VERSION );
}

sub AUTOLOAD
{
    $AUTOLOAD =~ s/^(.*::)?/Bit::Vector::/;

    return( &{$AUTOLOAD}(@_) );
}

1;

__END__

=head1 NAME

Set::IntegerFast - Sets of Integers

Easy manipulation of sets of integers
(intervals from zero to some positive integer)

=head1 SYNOPSIS

Please refer to L<Bit::Vector(3)> for an overview and description of
the methods supplied by this module!

=head1 DESCRIPTION

This module is kept "alive" for backward compatibility only; it is
strongly recommended that you use the "Bit::Vector" module in your
application(s) instead!

You will need to apply the following changes to your existing
application(s):

    "Set::IntegerFast"    -->    "Bit::Vector"         (required)

    "Empty_Interval("     -->    "Interval_Empty("     (recommended)
    "Fill_Interval("      -->    "Interval_Fill("      (recommended)
    "Flip_Interval("      -->    "Interval_Flip("      (recommended)
    "Delete("             -->    "Bit_On("             (recommended)
    "Insert("             -->    "Bit_Off("            (recommended)
    "flip("               -->    "bit_flip("           (recommended)
    "in("                 -->    "bit_test("           (recommended)
    "in("                 -->    "contains("           (alternative)
    "inclusion("          -->    "subset("             (recommended)

Please refer to the file "CHANGES" in the "Bit::Vector" distribution
for more details!

=head1 SEE ALSO

Bit::Vector(3), Set::IntegerRange(3), Math::MatrixBool(3),
Math::MatrixReal(3), DFA::Kleene(3), Math::Kleene(3),
Graph::Kruskal(3).

=head1 VERSION

This man page documents "Set::IntegerFast" version 4.2.

=head1 AUTHOR

Steffen Beyer <sb@sdm.de>.

=head1 COPYRIGHT

Copyright (c) 1995, 1996, 1997 by Steffen Beyer. All rights reserved.

=head1 LICENSE

This package is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

