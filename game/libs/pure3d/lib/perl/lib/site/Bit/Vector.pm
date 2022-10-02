
#  Copyright (c) 1995, 1996, 1997 by Steffen Beyer. All rights reserved.
#  This package is free software; you can redistribute it and/or modify
#  it under the same terms as Perl itself.

package Bit::Vector;

use strict;
use vars qw(@ISA @EXPORT @EXPORT_OK $VERSION);

require Exporter;
require DynaLoader;

@ISA = qw(Exporter DynaLoader);

@EXPORT = qw();

@EXPORT_OK = qw();

$VERSION = '4.2';

bootstrap Bit::Vector $VERSION;

use Carp;

use overload
      '""' => '_string',
     'neg' => '_complement',
       '~' => '_complement',
    'bool' => '_boolean',
       '!' => '_not_boolean',
     'abs' => '_norm',
      '++' => '_increment',
      '--' => '_decrement',
       '+' => '_union',
       '|' => '_union',                # alternative for '+'
       '-' => '_difference',
       '*' => '_intersection',
       '&' => '_intersection',         # alternative for '*'
       '^' => '_exclusive_or',
      '<<' => '_move_left',
      '>>' => '_move_right',
      '+=' => '_assign_union',
      '|=' => '_assign_union',         # alternative for '+='
      '-=' => '_assign_difference',
      '*=' => '_assign_intersection',
      '&=' => '_assign_intersection',  # alternative for '*='
      '^=' => '_assign_exclusive_or',
     '<<=' => '_assign_move_left',
     '>>=' => '_assign_move_right',
      '==' => '_equal',
      '!=' => '_not_equal',
       '<' => '_true_sub_set',
      '<=' => '_sub_set',
       '>' => '_true_super_set',
      '>=' => '_super_set',
     'cmp' => '_compare',              # also enables lt, le, gt, ge, eq, ne
       '=' => '_clone',
'fallback' =>   undef;

sub Shadow
{
    croak "Usage: \$other_vector = \$some_vector->Shadow();"
      if (@_ != 1);

    my($object) = @_;
    my($result);

    $result = $object->new($object->Size());
    return($result);
}

sub Clone
{
    croak "Usage: \$twin_vector = \$some_vector->Clone();"
      if (@_ != 1);

    my($object) = @_;
    my($result);

    $result = $object->new($object->Size());
    $result->Copy($object);
    return($result);
}

sub to_ASCII
{
    croak "Usage: \$string = \$vector->to_ASCII();"
      if (@_ != 1);

    my($object) = @_;
    my($start,$string);
    my($min,$max);

    $start = 0;
    $string = '';
    while (($start < $object->Size()) &&
        (($min,$max) = $object->Interval_Scan_inc($start)))
    {
        $start = $max + 2;
        if    ($min == $max)   { $string .= "${min},"; }
        elsif ($min == $max-1) { $string .= "${min},${max},"; }
        else                   { $string .= "${min}-${max},"; }
    }
    $string =~ s/,$//;
    return($string);
}

sub from_ASCII
{
    croak "Usage: \$vector->from_ASCII(\$string);"
      if (@_ != 2);

    my($object,$string) = @_;
    my(@intervals,$interval);
    my($min,$max);

    croak "Bit::Vector::from_ASCII(): syntax error in input string"
      unless ($string =~ /^ (?: \d+ (?: - \d+ )? )
                      (?: , (?: \d+ (?: - \d+ )? ) )* $/x);

    $object->Empty();

    @intervals = split(/,/, $string);

    foreach $interval (@intervals)
    {
        if ($interval =~ /-/)
        {
            ($min,$max) = split(/-/, $interval);

            croak "Bit::Vector::from_ASCII(): minimum index out of range"
              if (($min < 0) || ($min >= $object->Size()));

            croak "Bit::Vector::from_ASCII(): maximum index out of range"
              if (($max < 0) || ($max >= $object->Size()));

            croak "Bit::Vector::from_ASCII(): minimum > maximum index"
              if ($min > $max);

            $object->Interval_Fill($min,$max);
        }
        else
        {
            croak "Bit::Vector::from_ASCII(): index out of range"
              if (($interval < 0) || ($interval >= $object->Size()));

            $object->Bit_On($interval);
        }
    }
}

sub new_from_String
{
    croak "Usage: \$vector = Bit::Vector->new_from_String(\$string);"
      if (@_ != 2);

    my $proto  = shift;
    my $class  = ref($proto) || $proto || 'Bit::Vector';
    my $string = shift;
    my($length);
    my($result);

    $length = length($string) * 4;

    if ($length > 0)
    {
        $result = Bit::Vector::new( $class, $length );

        if (defined($result) && ref($result) && (${$result} != 0))
        {
            if ($result->from_string($string))
            {
                return($result);
            }
            else
            {
                croak
"Bit::Vector::new_from_String(): syntax error in input string";
            }
        }
        else
        {
            croak
"Bit::Vector::new_from_String(): unable to create new 'Bit::Vector' object";
        }
    }
    else
    {
        croak
"Bit::Vector::new_from_String(): zero length 'Bit::Vector' object not permitted";
    }
}

sub _string
{
    my($object,$argument,$flag) = @_;
#   my($name) = '""'; #&_trace($name,$object,$argument,$flag);

    return( $object->to_ASCII() );
}

sub _complement
{
    my($object,$argument,$flag) = @_;
#   my($name) = "'~'"; #&_trace($name,$object,$argument,$flag);
    my($result);

    $result = $object->new($object->Size());
    $result->Complement($object);
    return($result);
}

sub _boolean
{
    my($object,$argument,$flag) = @_;
#   my($name) = "bool"; #&_trace($name,$object,$argument,$flag);

    return( ! $object->is_empty() );
}

sub _not_boolean
{
    my($object,$argument,$flag) = @_;
#   my($name) = "'!'"; #&_trace($name,$object,$argument,$flag);

    return( $object->is_empty() );
}

sub _norm
{
    my($object,$argument,$flag) = @_;
#   my($name) = "abs"; #&_trace($name,$object,$argument,$flag);

    return( $object->Norm() );
}

sub _increment
{
    my($object,$argument,$flag) = @_;
#   my($name) = "'++'"; #&_trace($name,$object,$argument,$flag);

    return( $object->increment() );
}

sub _decrement
{
    my($object,$argument,$flag) = @_;
#   my($name) = "'--'"; #&_trace($name,$object,$argument,$flag);

    return( $object->decrement() );
}

sub _union
{
    my($object,$argument,$flag) = @_;
    my($name) = "'+'"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && ref($argument) &&
        (ref($argument) !~ /^SCALAR$|^ARRAY$|^HASH$|^CODE$|^REF$/))
    {
        if (defined $flag)
        {
            $result = $object->new($object->Size());
            $result->Union($object,$argument);
            return($result);
        }
        else
        {
            $object->Union($object,$argument);
            return($object);
        }
    }
    elsif ((defined $argument) && !(ref($argument)))
    {
        if (defined $flag)
        {
            $result = $object->new($object->Size());
            $result->Copy($object);
            $result->Bit_On($argument);
            return($result);
        }
        else
        {
            $object->Bit_On($argument);
            return($object);
        }
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
}

sub _difference
{
    my($object,$argument,$flag) = @_;
    my($name) = "'-'"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && ref($argument) &&
        (ref($argument) !~ /^SCALAR$|^ARRAY$|^HASH$|^CODE$|^REF$/))
    {
        if (defined $flag)
        {
            $result = $object->new($object->Size());
            if ($flag) { $result->Difference($argument,$object); }
            else       { $result->Difference($object,$argument); }
            return($result);
        }
        else
        {
            $object->Difference($object,$argument);
            return($object);
        }
    }
    elsif ((defined $argument) && !(ref($argument)))
    {
        if (defined $flag)
        {
            $result = $object->new($object->Size());
            if ($flag)
            {
                unless ($object->bit_test($argument))
                { $result->Bit_On($argument); }
            }
            else
            {
                $result->Copy($object);
                $result->Bit_Off($argument);
            }
            return($result);
        }
        else
        {
            $object->Bit_Off($argument);
            return($object);
        }
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
}

sub _intersection
{
    my($object,$argument,$flag) = @_;
    my($name) = "'*'"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && ref($argument) &&
        (ref($argument) !~ /^SCALAR$|^ARRAY$|^HASH$|^CODE$|^REF$/))
    {
        if (defined $flag)
        {
            $result = $object->new($object->Size());
            $result->Intersection($object,$argument);
            return($result);
        }
        else
        {
            $object->Intersection($object,$argument);
            return($object);
        }
    }
    elsif ((defined $argument) && !(ref($argument)))
    {
        if (defined $flag)
        {
            $result = $object->new($object->Size());
            if ($object->bit_test($argument))
            { $result->Bit_On($argument); }
            return($result);
        }
        else
        {
            $flag = $object->bit_test($argument);
            $object->Empty();
            if ($flag) { $object->Bit_On($argument); }
            return($object);
        }
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
}

sub _exclusive_or
{
    my($object,$argument,$flag) = @_;
    my($name) = "'^'"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && ref($argument) &&
        (ref($argument) !~ /^SCALAR$|^ARRAY$|^HASH$|^CODE$|^REF$/))
    {
        if (defined $flag)
        {
            $result = $object->new($object->Size());
            $result->ExclusiveOr($object,$argument);
            return($result);
        }
        else
        {
            $object->ExclusiveOr($object,$argument);
            return($object);
        }
    }
    elsif ((defined $argument) && !(ref($argument)))
    {
        if (defined $flag)
        {
            $result = $object->new($object->Size());
            $result->Copy($object);
            $result->bit_flip($argument);
            return($result);
        }
        else
        {
            $object->bit_flip($argument);
            return($object);
        }
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
}

sub _move_left
{
    my($object,$argument,$flag) = @_;
    my($name) = "'<<'"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && !(ref($argument)))
    {
        if (defined $flag)
        {
            unless ($flag)
            {
                $result = $object->new($object->Size());
                $result->Copy($object);
                $result->Move_Left($argument);
                return($result);
            }
            else
            {
                croak "Bit::Vector $name: wrong argument type";
            }
        }
        else
        {
            $object->Move_Left($argument);
            return($object);
        }
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
}

sub _move_right
{
    my($object,$argument,$flag) = @_;
    my($name) = "'>>'"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && !(ref($argument)))
    {
        if (defined $flag)
        {
            unless ($flag)
            {
                $result = $object->new($object->Size());
                $result->Copy($object);
                $result->Move_Right($argument);
                return($result);
            }
            else
            {
                croak "Bit::Vector $name: wrong argument type";
            }
        }
        else
        {
            $object->Move_Right($argument);
            return($object);
        }
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
}

sub _assign_union
{
    my($object,$argument,$flag) = @_;
#   my($name) = "'+='"; #&_trace($name,$object,$argument,$flag);

    return( &_union($object,$argument,undef) );
}

sub _assign_difference
{
    my($object,$argument,$flag) = @_;
#   my($name) = "'-='"; #&_trace($name,$object,$argument,$flag);

    return( &_difference($object,$argument,undef) );
}

sub _assign_intersection
{
    my($object,$argument,$flag) = @_;
#   my($name) = "'*='"; #&_trace($name,$object,$argument,$flag);

    return( &_intersection($object,$argument,undef) );
}

sub _assign_exclusive_or
{
    my($object,$argument,$flag) = @_;
#   my($name) = "'^='"; #&_trace($name,$object,$argument,$flag);

    return( &_exclusive_or($object,$argument,undef) );
}

sub _assign_move_left
{
    my($object,$argument,$flag) = @_;
#   my($name) = "'<<='"; #&_trace($name,$object,$argument,$flag);

    return( &_move_left($object,$argument,undef) );
}

sub _assign_move_right
{
    my($object,$argument,$flag) = @_;
#   my($name) = "'>>='"; #&_trace($name,$object,$argument,$flag);

    return( &_move_right($object,$argument,undef) );
}

sub _equal
{
    my($object,$argument,$flag) = @_;
    my($name) = "'=='"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && ref($argument) &&
        (ref($argument) !~ /^SCALAR$|^ARRAY$|^HASH$|^CODE$|^REF$/))
    {
        $result = $argument;
    }
    elsif ((defined $argument) && !(ref($argument)))
    {
        $result = $object->new($object->Size());
        $result->Bit_On($argument);
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
    return( $object->equal($result) );
}

sub _not_equal
{
    my($object,$argument,$flag) = @_;
    my($name) = "'!='"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && ref($argument) &&
        (ref($argument) !~ /^SCALAR$|^ARRAY$|^HASH$|^CODE$|^REF$/))
    {
        $result = $argument;
    }
    elsif ((defined $argument) && !(ref($argument)))
    {
        $result = $object->new($object->Size());
        $result->Bit_On($argument);
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
    return( !($object->equal($result)) );
}

sub _true_sub_set
{
    my($object,$argument,$flag) = @_;
    my($name) = "'<'"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && ref($argument) &&
        (ref($argument) !~ /^SCALAR$|^ARRAY$|^HASH$|^CODE$|^REF$/))
    {
        $result = $argument;
    }
    elsif ((defined $argument) && !(ref($argument)))
    {
        $result = $object->new($object->Size());
        $result->Bit_On($argument);
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
    if ((defined $flag) && $flag)
    {
        return( !($result->equal($object)) &&
                 ($result->subset($object)) );
    }
    else
    {
        return( !($object->equal($result)) &&
                 ($object->subset($result)) );
    }
}

sub _sub_set
{
    my($object,$argument,$flag) = @_;
    my($name) = "'<='"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && ref($argument) &&
        (ref($argument) !~ /^SCALAR$|^ARRAY$|^HASH$|^CODE$|^REF$/))
    {
        $result = $argument;
    }
    elsif ((defined $argument) && !(ref($argument)))
    {
        $result = $object->new($object->Size());
        $result->Bit_On($argument);
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
    if ((defined $flag) && $flag)
    {
        return( $result->subset($object) );
    }
    else
    {
        return( $object->subset($result) );
    }
}

sub _true_super_set
{
    my($object,$argument,$flag) = @_;
    my($name) = "'>'"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && ref($argument) &&
        (ref($argument) !~ /^SCALAR$|^ARRAY$|^HASH$|^CODE$|^REF$/))
    {
        $result = $argument;
    }
    elsif ((defined $argument) && !(ref($argument)))
    {
        $result = $object->new($object->Size());
        $result->Bit_On($argument);
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
    if ((defined $flag) && $flag)
    {
        return( !($object->equal($result)) &&
                 ($object->subset($result)) );
    }
    else
    {
        return( !($result->equal($object)) &&
                 ($result->subset($object)) );
    }
}

sub _super_set
{
    my($object,$argument,$flag) = @_;
    my($name) = "'>='"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && ref($argument) &&
        (ref($argument) !~ /^SCALAR$|^ARRAY$|^HASH$|^CODE$|^REF$/))
    {
        $result = $argument;
    }
    elsif ((defined $argument) && !(ref($argument)))
    {
        $result = $object->new($object->Size());
        $result->Bit_On($argument);
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
    if ((defined $flag) && $flag)
    {
        return( $object->subset($result) );
    }
    else
    {
        return( $result->subset($object) );
    }
}

sub _compare
{
    my($object,$argument,$flag) = @_;
    my($name) = "cmp"; #&_trace($name,$object,$argument,$flag);
    my($result);

    if ((defined $argument) && ref($argument) &&
        (ref($argument) !~ /^SCALAR$|^ARRAY$|^HASH$|^CODE$|^REF$/))
    {
        $result = $argument;
    }
    elsif ((defined $argument) && !(ref($argument)))
    {
        $result = $object->new($object->Size());
        $result->Bit_On($argument);
    }
    else
    {
        croak "Bit::Vector $name: wrong argument type";
    }
    if ((defined $flag) && $flag)
    {
        return( $result->Compare($object) );
    }
    else
    {
        return( $object->Compare($result) );
    }
}

sub _clone
{
    my($object,$argument,$flag) = @_;
#   my($name) = "'='"; #&_trace($name,$object,$argument,$flag);
    my($result);

    $result = $object->new($object->Size());
    $result->Copy($object);
    return($result);
}

sub _trace
{
    my($text,$object,$argument,$flag) = @_;

    unless (defined $object)   { $object   = 'undef'; };
    unless (defined $argument) { $argument = 'undef'; };
    unless (defined $flag)     { $flag     = 'undef'; };
    if (ref($object))   { $object   = ref($object);   }
    if (ref($argument)) { $argument = ref($argument); }
    print "$text: \$obj='$object' \$arg='$argument' \$flag='$flag'\n";
}

1;

__END__

=head1 NAME

Bit::Vector - bit vectors of arbitrary length (base class)

Versatile implementation of bit vectors of arbitrary length
with efficient and easy-to-use methods for various applications,
especially sets.

Base class for all applications and classes using bit vectors as
their underlying data type.

Provides overloaded arithmetic and relational operators for maximum
comfort.

For an analysis of the time complexity of the methods implemented in
this module, please refer to the file "COMPLEXITY" in the "Bit::Vector"
distribution directory!

=head1 SYNOPSIS

=head2 METHODS IMPLEMENTED IN C (fastest)

  Version
      $version = Bit::Vector::Version(); # version of "Vector.xs"

  new
      $vector = new Bit::Vector($elements);
      $vector = Bit::Vector->new($elements);
      $vector = $any_vector->new($elements);

  Resize
      $vector->Resize($elements);

  Size
      $elements = $vector->Size();

  Empty
      $vector->Empty();

  Fill
      $vector->Fill();

  Flip
      $vector->Flip();

  Interval_Empty
      $vector->Interval_Empty($min,$max);

  Interval_Fill
      $vector->Interval_Fill($min,$max);

  Interval_Flip
      $vector->Interval_Flip($min,$max);

  Interval_Scan_inc
      while (($min,$max) = $vector->Interval_Scan_inc($start))

  Interval_Scan_dec
      while (($min,$max) = $vector->Interval_Scan_dec($start))

  Bit_Off
      $vector->Bit_Off($index);
      $vector->Delete($index);           # (deprecated)

  Bit_On
      $vector->Bit_On($index);
      $vector->Insert($index);           # (deprecated)

  bit_flip
      $bit = $vector->bit_flip($index);
      if ($vector->bit_flip($index))
      $bit = $vector->flip($index);      # (deprecated)
      if ($vector->flip($index))         # (deprecated)

  bit_test
      $bit = $vector->bit_test($index);
      if ($vector->bit_test($index))
      $bit = $vector->contains($index);
      if ($vector->contains($index))
      $bit = $vector->in($index);        # (deprecated)
      if ($vector->in($index))           # (deprecated)

  is_empty
      if ($vector->is_empty())

  is_full
      if ($vector->is_full())

  equal
      if ($vector1->equal($vector2))

  lexorder
      if ($vector1->lexorder($vector2))

  Compare
      $cmp = $vector1->Compare($vector2);

  Copy
      $vector1->Copy($vector2);

  rotate_left
      $carry_out = $vector->rotate_left();

  rotate_right
      $carry_out = $vector->rotate_right();

  shift_left
      $carry_out = $vector->shift_left($carry_in);

  shift_right
      $carry_out = $vector->shift_right($carry_in);

  Move_Left
      $vector->Move_Left($bits);

  Move_Right
      $vector->Move_Right($bits);

  increment
      $carry = $vector->increment();

  decrement
      $carry = $vector->decrement();

  to_String
      $string = $vector->to_String();    # e.g., "A08A28AC"

  from_string
      $ok = $vector->from_string($string);

  Union
      $set1->Union($set2,$set3);         # in-place is possible!

  Intersection
      $set1->Intersection($set2,$set3);  # in-place is possible!

  Difference
      $set1->Difference($set2,$set3);    # in-place is possible!

  ExclusiveOr
      $set1->ExclusiveOr($set2,$set3);   # in-place is possible!

  Complement
      $set1->Complement($set2);          # in-place is possible!

  subset
      if ($set1->subset($set2))
      if ($set1->inclusion($set2))       # (deprecated)

  Norm
      $norm = $set->Norm();

  Min
      $min = $set->Min();

  Max
      $max = $set->Max();

  Multiplication
      $matrix1->Multiplication($rows1,$cols1,
      $matrix2,$rows2,$cols2,
      $matrix3,$rows3,$cols3);

  Closure
      $matrix->Closure($rows,$cols);

=head2 METHODS IMPLEMENTED IN PERL

  Version
      $version = $Bit::Vector::VERSION;  # version of "Vector.pm"

  Shadow
      $other_vector = $some_vector->Shadow();

  Clone
      $twin_vector = $some_vector->Clone();

  new_from_String
      eval { $vector = Bit::Vector->new_from_String($string); };

  to_ASCII
      $string = $vector->to_ASCII();     # e.g., "2,3,5-7,11,13-19"

  from_ASCII
      eval { $vector->from_ASCII($string); };

=head2 OVERLOADED OPERATORS (slowest)

      # "$index" is a number or a Perl scalar variable containing a
      # number which represents the set containing only that element:

  Emptyness
      if ($vector) # if not empty
      if (! $vector) # if empty
      unless ($vector) # if empty

  Equality
      if ($vector1 == $vector2)
      if ($vector1 != $vector2)
      if ($vector == $index)
      if ($vector != $index)

  Lexical Comparison
      $cmp = $vector1 cmp $vector2;
      if ($vector1 lt $vector2)
      if ($vector1 le $vector2)
      if ($vector1 gt $vector2)
      if ($vector1 ge $vector2)
      if ($vector1 eq $vector2)
      if ($vector1 ne $vector2)
      $cmp = $vector cmp $index;
      if ($vector lt $index)
      if ($vector le $index)
      if ($vector gt $index)
      if ($vector ge $index)
      if ($vector eq $index)
      if ($vector ne $index)

  Move Left
      $vector1 = $vector2 << $bits;
      $vector <<= $bits;

  Move Right
      $vector1 = $vector2 >> $bits;
      $vector >>= $bits;

  Increment
      ++$vector;
      $vector++;

  Decrement
      --$vector;
      $vector--;

  String Conversion
      $string = "$vector";
      print "\$vector = '$vector'\n";

  Union
      $set1 = $set2 + $set3;
      $set1 += $set2;
      $set1 = $set2 | $set3;
      $set1 |= $set2;
      $vector1 = $vector2 + $index;
      $vector += $index;
      $vector1 = $vector2 | $index;
      $vector |= $index;

  Intersection
      $set1 = $set2 * $set3;
      $set1 *= $set2;
      $set1 = $set2 & $set3;
      $set1 &= $set2;
      $vector1 = $vector2 * $index;
      $vector *= $index;
      $vector1 = $vector2 & $index;
      $vector &= $index;

  Difference
      $set1 = $set2 - $set3;
      $set1 -= $set2;
      $set1 = $set2 - $set1;
      $vector1 = $vector2 - $index;
      $vector1 = $index - $vector2;
      $vector -= $index;

  ExclusiveOr
      $set1 = $set2 ^ $set3;
      $set1 ^= $set2;
      $vector1 = $vector2 ^ $index;
      $vector ^= $index;

  Complement
      $set1 = -$set2;
      $set1 = ~$set2;
      $set = -$set;
      $set = ~$set;

  Subset Relationship
      if ($set1 <= $set2)

  True Subset Relationship
      if ($set1 < $set2)

  Superset Relationship
      if ($set1 >= $set2)

  True Superset Relationship
      if ($set1 > $set2)

  Norm
      $norm = abs($set);

=head1 IMPORTANT NOTES

=head2 GENERAL HINTS

=over 2

=item *

Method naming convention

Method names completely in lower case indicate a boolean return value!

(Except for method "C<new()>", of course.)

=item *

Boolean return values

Boolean return values in this class are always a numerical (!)
zero ("0") for "false" and a numerical (!) one ("1") for "true".

This means that you can use the methods of this class with boolean
return values as the conditional expression in "if", "unless" and
"while" statements.

=item *

Version

The function "C<Bit::Vector::Version()>" (the version of the "Vector.xs"
file) should always return the same version number as contained in the
variable "C<$Bit::Vector::VERSION>" (the version of the "Vector.pm" file).

=back

=head2 METHODS IMPLEMENTED IN C

=over 2

=item *

C<$vector = Bit::Vector-E<gt>new($elements);>

This is the bit vector constructor method.

Call this method to create a new bit vector containing
"$elements" bits (with indices from C<0> to C<$elements - 1>).

The method returns a reference to the new bit vector.

A new bit vector is always initialized so that all bits are cleared
(turned off).

An exception will be raised if the method is unable to allocate the
necessary memory.

An exception will also be raised if you try to create a bit vector
with zero elements (i.e., with length zero).

Note that if you specify a negative number for "$elements" it
will be interpreted as a large positive number due to its internal
2's complement binary representation!

In such a case, the bit vector constructor method will obediently attempt
to create a bit vector of that size, probably resulting in an exception,
as explained above.

=item *

C<$vector-E<gt>Resize($elements);>

Changes the size of the given vector to the specified number of bits.

This method allows you to change the size of an existing bit vector or
set, preserving as many bits from the old vector as will fit into the
new one (i.e., all bits with indices smaller than the minimum of the
sizes of the two vectors, old and new).

If the number of machine words needed to store the new vector is smaller
than or equal to the number of words needed to store the old vector, the
memory allocated for the old vector is reused for the new one, and only
the relevant book-keeping information is adjusted accordingly.

This means that even if the number of bits increases, new memory is not
necessarily being allocated (i.e., if the old and the new number of bits
fit into the same number of machine words)!

If the number of machine words needed to store the new vector is greater
than the number of words needed to store the old vector, new memory is
allocated for the new vector, the old vector is copied to the new one,
the remaining bits in the new vector are cleared (turned off) and the old
vector is deleted, i.e., the memory that was allocated for it is released.

This also means that if you decrease the size of a given vector so that
it will use fewer machine words, and increase it again later so that it
will use more words than before but still less than the original vector,
new memory will be allocated anyway because the information about the
size of the original vector is lost when you downsize it.

Note also that if you specify a negative number for "$elements" it
will be interpreted as a large positive number due to its internal
2's complement binary representation!

In such a case, "Resize()" will obediently attempt to create a bit
vector of that size, probably resulting in an exception, as explained
above (see method "new()").

Finally, note that resizing a bit vector to a size of zero elements (length
zero) is disallowed; an exception will be raised if you try to do so.

=item *

C<$elements = $vector-E<gt>Size();>

Returns the size (number of bits) the given vector was created with
(or "C<Resize()>"d to).

=item *

C<$vector-E<gt>Empty();>

Clears all bits in the given vector.

=item *

C<$vector-E<gt>Fill();>

Sets all bits in the given vector.

=item *

C<$vector-E<gt>Flip();>

Flips (i.e., complements) all bits in the given vector.

=item *

C<$vector-E<gt>Interval_Empty($min,$max);>

Clears all bits in the interval C<[$min..$max]> (including both limits)
in the given vector.

"C<$min>" and "C<$max>" may have the same value; this is the same
as clearing a single bit with "C<Bit_Off()>" (but less efficient).

Note that C<$vector-E<gt>Interval_Empty(0,$vector-E<gt>Size()-1);>
is the same as C<$vector-E<gt>Empty();> (but less efficient).

=item *

C<$vector-E<gt>Interval_Fill($min,$max);>

Sets all bits in the interval C<[$min..$max]> (including both limits)
in the given vector.

"C<$min>" and "C<$max>" may have the same value; this is the same
as setting a single bit with "C<Bit_On()>" (but less efficient).

Note that C<$vector-E<gt>Interval_Fill(0,$vector-E<gt>Size()-1);>
is the same as C<$vector-E<gt>Fill();> (but less efficient).

=item *

C<$vector-E<gt>Interval_Flip($min,$max);>

Flips (i.e., complements) all bits in the interval C<[$min..$max]>
(including both limits) in the given vector.

"C<$min>" and "C<$max>" may have the same value; this is the same
as flipping a single bit with "C<bit_flip()>" (but less efficient).

Note that C<$vector-E<gt>Interval_Flip(0,$vector-E<gt>Size()-1);>
is the same as C<$vector-E<gt>Flip();> and
C<$vector-E<gt>Complement($vector);>
(but less efficient).

=item *

C<($min,$max) = $vector-E<gt>Interval_Scan_inc($start)>

Returns the minimum and maximum indices of the next contiguous block
of set bits (i.e., bits in the "on" state).

The search starts at index "$start" (i.e., C<"$min" E<gt>= "$start">)
and proceeds upwards (i.e., C<"$max" E<gt>= "$min">), thus repeatedly
increments the search pointer "$start" (internally).

Note though that the contents of the variable (or scalar literal value)
"$start" is not altered! I.e., you have to set it to the desired value
yourself prior to each call to "Interval_Scan_inc()"! (See also the
example given below!)

Actually, the bit vector is not searched bit by bit, but one machine
word at a time, in order to speed up execution (this means that this
method is quite efficient!).

An empty list is returned if no such block can be found.

Note that a single set bit (surrounded by cleared bits) is a valid
block by this definition. In that case the return values for "$min"
and "$max" are the same.

Typical use:

    $start = 0;
    while (($start < $vector->Size()) &&
        (($min,$max) = $vector->Interval_Scan_inc($start)))
    {
        $start = $max + 2;

        # do something with $min and $max
    }

=item *

C<($min,$max) = $vector-E<gt>Interval_Scan_dec($start)>

Returns the minimum and maximum indices of the next contiguous block
of set bits (i.e., bits in the "on" state).

The search starts at index "$start" (i.e., C<"$max" E<lt>= "$start">)
and proceeds downwards (i.e., C<"$min" E<lt>= "$max">), thus repeatedly
decrements the search pointer "$start" (internally).

Note though that the contents of the variable (or scalar literal value)
"$start" is not altered! I.e., you have to set it to the desired value
yourself prior to each call to "Interval_Scan_dec()"! (See also the
example given below!)

Actually, the bit vector is not searched bit by bit, but one machine
word at a time, in order to speed up execution (this means that this
method is quite efficient!).

An empty list is returned if no such block can be found.

Note that a single set bit (surrounded by cleared bits) is a valid
block by this definition. In that case the return values for "$min"
and "$max" are the same.

Typical use:

    $start = $vector->Size() - 1;
    while (($start >= 0) &&
        (($min,$max) = $vector->Interval_Scan_dec($start)))
    {
        $start = $min - 2;

        # do something with $min and $max
    }

=item *

C<$vector-E<gt>Bit_Off($index);>

Clears the bit with index "$index" in the given vector.

This is equivalent to removing the element "$index"
from the given set.

Note that if you specify a negative number for "$index"
it will be interpreted as a large positive number due
to its internal 2's complement binary representation!

An exception is raised if "$index" lies outside the
permitted range from "C<0>" to "C<$vector-E<gt>Size()-1>".

=item *

C<$vector-E<gt>Bit_On($index);>

Sets the bit with index "$index" in the given vector.

This is equivalent to adding the element "$index"
to the given set.

Note that if you specify a negative number for "$index"
it will be interpreted as a large positive number due
to its internal 2's complement binary representation!

An exception is raised if "$index" lies outside the
permitted range from "C<0>" to "C<$vector-E<gt>Size()-1>".

=item *

C<$vector-E<gt>bit_flip($index)>

Flips (i.e., complements) the bit with index "$index"
in the given vector.

This is equivalent to adding the element "$index"
to the given set if it is NOT contained yet and
removing it if it IS contained.

Also returns the NEW state of the specified bit, i.e.,
returns "0" if it is cleared (in the "off" state) or
"1" if it is set (in the "on" state).

In other words it returns "true" if the specified
element is contained in the given set and "false"
otherwise.

Note that if you specify a negative number for "$index"
it will be interpreted as a large positive number due
to its internal 2's complement binary representation!

An exception is raised if "$index" lies outside the
permitted range from "C<0>" to "C<$vector-E<gt>Size()-1>".

=item *

C<$vector-E<gt>bit_test($index)>

Returns the current state of the bit with index "$index"
in the given vector, i.e., returns "0" if it is cleared
(in the "off" state) or "1" if it is set (in the "on" state).

In other words it returns "true" if the specified
element is contained in the given set and "false"
otherwise.

Note that if you specify a negative number for "$index"
it will be interpreted as a large positive number due
to its internal 2's complement binary representation!

An exception is raised if "$index" lies outside the
permitted range from "C<0>" to "C<$vector-E<gt>Size()-1>".

=item *

C<$vector-E<gt>is_empty()>

Tests wether the given bit vector is empty, i.e., wether ALL of
its bits are cleared (in the "off" state).

Returns "true" ("1") if the bit vector is empty and "false" ("0")
otherwise.

=item *

C<$vector-E<gt>is_full()>

Tests wether the given bit vector is full, i.e., wether ALL of
its bits are set (in the "on" state).

Returns "true" ("1") if the bit vector is full and "false" ("0")
otherwise.

=item *

C<$vector1-E<gt>equal($vector2)>

Tests the two given bit vectors for equality.

Returns "true" ("1") if the two bit vectors are exact
copies of one another and "false" ("0") otherwise.

An exception is raised if the two bit vectors have
different sizes, i.e., if C<$vector1-E<gt>Size()>
C<!=> C<$vector2-E<gt>Size()>.

=item *

C<$vector1-E<gt>lexorder($vector2)>

Tests the lexical order of the two given bit vectors.

I.e., the two bit vectors are regarded as two large
(positive) numbers in binary representation which
are compared.

The least significant bit (LSB) of this binary number
is the bit with index "C<0>", the most significant bit
(MSB) is the bit with index "C<$vector-E<gt>Size()-1>".

Returns "true" ("1") if the first bit vector is less
than or equal to the second bit vector and "false"
("0") otherwise.

An exception is raised if the two bit vectors have
different sizes, i.e., if C<$vector1-E<gt>Size()>
C<!=> C<$vector2-E<gt>Size()>.

=item *

C<$vector1-E<gt>Compare($vector2)>

Compares the two given bit vectors.

I.e., the two bit vectors are regarded as two large
(positive) numbers in binary representation which
are compared.

The least significant bit (LSB) of this binary number
is the bit with index "C<0>", the most significant bit
(MSB) is the bit with index "C<$vector-E<gt>Size()-1>".

Returns "-1" if the first bit vector is less than the
second bit vector, "0" if the two bit vectors are exact
copies of one another and "1" if the first bit vector
is greater than the second bit vector.

An exception is raised if the two bit vectors have
different sizes, i.e., if C<$vector1-E<gt>Size()>
C<!=> C<$vector2-E<gt>Size()>.

=item *

C<$vector1-E<gt>Copy($vector2);>

Copies the contents of bit vector "$vector2" to
bit vector "$vector1".

The previous contents of bit vector "$vector1"
get overwritten, i.e., are lost.

Both vectors must exist beforehand, i.e., this method
does not CREATE any new bit vector object!

An exception is raised if the two bit vectors have
different sizes, i.e., if C<$vector1-E<gt>Size()>
C<!=> C<$vector2-E<gt>Size()>.

=item *

C<$carry_out = $vector-E<gt>rotate_left();>

  carry             MSB           vector:           LSB
   out:
  +---+            +---+---+---+---     ---+---+---+---+
  |   |  <---+---  |   |   |   |    ...    |   |   |   |  <---+
  +---+      |     +---+---+---+---     ---+---+---+---+      |
             |                                                |
             +------------------------------------------------+

The least significant bit (LSB) is the bit with index "C<0>", the most
significant bit (MSB) is the bit with index "C<$vector-E<gt>Size()-1>".

=item *

C<$carry_out = $vector-E<gt>rotate_right();>

          MSB           vector:           LSB            carry
                                                          out:
         +---+---+---+---     ---+---+---+---+           +---+
  +--->  |   |   |   |    ...    |   |   |   |  ---+---> |   |
  |      +---+---+---+---     ---+---+---+---+     |     +---+
  |                                                |
  +------------------------------------------------+

The least significant bit (LSB) is the bit with index "C<0>", the most
significant bit (MSB) is the bit with index "C<$vector-E<gt>Size()-1>".

=item *

C<$carry_out = $vector-E<gt>shift_left($carry_in);>

  carry         MSB           vector:           LSB         carry
   out:                                                      in:
  +---+        +---+---+---+---     ---+---+---+---+        +---+
  |   |  <---  |   |   |   |    ...    |   |   |   |  <---  |   |
  +---+        +---+---+---+---     ---+---+---+---+        +---+

The least significant bit (LSB) is the bit with index "C<0>", the most
significant bit (MSB) is the bit with index "C<$vector-E<gt>Size()-1>".

=item *

C<$carry_out = $vector-E<gt>shift_right($carry_in);>

  carry         MSB           vector:           LSB         carry
   in:                                                       out:
  +---+        +---+---+---+---     ---+---+---+---+        +---+
  |   |  --->  |   |   |   |    ...    |   |   |   |  --->  |   |
  +---+        +---+---+---+---     ---+---+---+---+        +---+

The least significant bit (LSB) is the bit with index "C<0>", the most
significant bit (MSB) is the bit with index "C<$vector-E<gt>Size()-1>".

=item *

C<$vector-E<gt>Move_Left($bits);>

Shifts the given bit vector left by "$bits" bits, i.e., inserts "$bits"
new bits at the lower end (least significant bit) of the bit vector,
moving all other bits up by "$bits" places, thereby losing the "$bits"
most significant bits.

The inserted new bits are all cleared (set to the "off" state).

This method does nothing if "$bits" is equal to zero.

Beware that the whole bit vector is cleared WITHOUT WARNING if "$bits"
is greater than or equal to the size of the given bit vector!

Beware also that if you specify a negative number for "$bits", it will be
interpreted as a large positive number due to its internal 2's complement
binary representation, which will probably empty your bit vector!

In fact this method is equivalent to

  for ( $i = 0; $i < $bits; $i++ ) { $vector->shift_left(0); }

except that it is much more efficient (for "$bits" greater than or
equal to the number of bits in a machine word on your system) than
this straightforward approach.

=item *

C<$vector-E<gt>Move_Right($bits);>

Shifts the given bit vector right by "$bits" bits, i.e., deletes the
"$bits" least significant bits of the bit vector, moving all other bits
down by "$bits" places, thereby creating "$bits" new bits at the upper
end (most significant bit) of the bit vector.

These new bits are all cleared (set to the "off" state).

This method does nothing if "$bits" is equal to zero.

Beware that the whole bit vector is cleared WITHOUT WARNING if "$bits"
is greater than or equal to the size of the given bit vector!

Beware also that if you specify a negative number for "$bits", it will be
interpreted as a large positive number due to its internal 2's complement
binary representation, which will probably empty your bit vector!

In fact this method is equivalent to

  for ( $i = 0; $i < $bits; $i++ ) { $vector->shift_right(0); }

except that it is much more efficient (for "$bits" greater than or
equal to the number of bits in a machine word on your system) than
this straightforward approach.

=item *

C<$carry = $vector-E<gt>increment();>

This method is crucial for generating all possible patterns of set
and cleared bits for a given bit vector in an ordered fashion, a
feature needed in many applications to cycle through all possible
values a bit vector of the given length can assume.

The method increments the given bit vector as though it was a large
(positive) number in binary representation.

The least significant bit (LSB) of this binary number
is the bit with index "C<0>", the most significant bit
(MSB) is the bit with index "C<$vector-E<gt>Size()-1>".

This method returns "true" ("1") if a carry-over occurred, i.e.,
if the bit vector was completely filled with set bits before this
operation took place (the bit vector will contain only cleared bits
after this operation in that case) and "false" ("0") otherwise.

This can be used as the terminating condition in a "while" loop,
for instance.

=item *

C<$carry = $vector-E<gt>decrement();>

This method is crucial for generating all possible patterns of set
and cleared bits for a given bit vector in an ordered fashion, a
feature needed in many applications to cycle through all possible
values a bit vector of the given length can assume.

The method decrements the given bit vector as though it was a large
(positive) number in binary representation.

The least significant bit (LSB) of this binary number
is the bit with index "C<0>", the most significant bit
(MSB) is the bit with index "C<$vector-E<gt>Size()-1>".

This method returns "true" ("1") if a carry-over occurred, i.e.,
if the bit vector was completely filled with cleared bits before
this operation took place (the bit vector will contain only set bits
after this operation in that case) and "false" ("0") otherwise.

This can be used as the terminating condition in a "while" loop,
for instance.

=item *

C<$string = $vector-E<gt>to_String();>

Returns a hexadecimal string representing the given bit vector.

Note that this representation is quite compact, in that it only
needs twice the number of bytes needed to store the bit vector
itself, internally!

The rightmost hexadecimal digit in this string represents the
four least significant bits of the given bit vector (i.e., the
bits with indices "3", "2", "1" and "0").

The leftmost hexadecimal digit(s) in the string represent(s) the
most significant and/or unused bits - this is due to the fact
that this class uses machine words as its basic storage unit (to
increase efficiency).

Since a hexadecimal digit is always worth four bits, the length
of the string always corresponds to a multiple of four bits anyway.

To spare extra overhead, the most significant machine word is always
completely converted into hexadecimal characters - which may produce
some (innocuous) leading hexadecimal zeros at the left end of the string
representing the unused bits of that bit vector.

=item *

C<$vector-E<gt>from_string($string)>

Allows to read in the contents of a bit vector from a hexadecimal
string, such as returned by the method "to_String()" (described
immediately above), for instance.

The string is read from right to left (!), and the bits corresponding
to each hexadecimal digit are assigned to the bits in the given bit
vector in ascending order of their indices, i.e., the rightmost
hexadecimal digit is assigned to the bits with indices "0", "1", "2"
and "3", the second rightmost hexadecimal digit is assigned to the
bits with indices "4", "5", "6" and "7", and so on.

If the given string contains less hexadecimal digits than are needed
to completely fill the given bit vector, the remaining bits are all
cleared.

In other words, even if the given string does not contain enough digits
to completely fill the given bit vector, the previous contents of the
bit vector are erased completely.

If the given string is longer than it needs to fill the given bit vector,
the superfluous characters are simply ignored.

(In fact they are ignored completely - they are not even checked for
proper syntax! See also immediately below.)

This behaviour is intentional so that you may read in the string
representing one bit vector into another bit vector of different
size, i.e., as much of it as will fit!

If during the process of reading the given string any character is
encountered which is not a hexadecimal digit, an error ensues.

In such a case the bit vector is filled up with zeros starting at
the point of the error and the method returns "false" ("0").

If all goes well the method returns "true" ("1").

=item *

C<$set1-E<gt>Union($set2,$set3);>

This method calculates the union of "$set2" and "$set3" and stores
the result in "$set1".

This is usually written as "C<$set1 = $set2 u $set3>" in set theory
(where "u" is the "cup" operator).

(On systems where the "cup" character is unavailable this operator
is often denoted by a plus sign "+".)

In-place calculation is also possible, i.e., "$set1" may be identical
with "$set2" or "$set3" or both.

An exception is raised if the sizes of the three sets do not match.

=item *

C<$set1-E<gt>Intersection($set2,$set3);>

This method calculates the intersection of "$set2" and "$set3" and
stores the result in "$set1".

This is usually written as "C<$set1 = $set2 n $set3>" in set theory
(where "n" is the "cap" operator).

(On systems where the "cap" character is unavailable this operator
is often denoted by an asterisk "*".)

In-place calculation is also possible, i.e., "$set1" may be identical
with "$set2" or "$set3" or both.

An exception is raised if the sizes of the three sets do not match.

=item *

C<$set1-E<gt>Difference($set2,$set3);>

This method calculates the difference of "$set2" less "$set3" and
stores the result in "$set1".

This is usually written as "C<$set1 = $set2 \ $set3>" in set theory
(where "\" is the "less" operator).

In-place calculation is also possible, i.e., "$set1" may be identical
with "$set2" or "$set3" or both.

An exception is raised if the sizes of the three sets do not match.

=item *

C<$set1-E<gt>ExclusiveOr($set2,$set3);>

This method calculates the symmetric difference of "$set2" and "$set3"
and stores the result in "$set1".

This can be written as "C<($vec2 u $vec3) \ ($vec2 n $vec3)>" in set
theory (the union of the two sets less their intersection).

When sets are implemented as bit vectors then the above formula is
equivalent to the exclusive-or between corresponding bits of the two
bit vectors (hence the name of this method).

Note that this method is also much more efficient than evaluating the
above formula explicitly since it uses a built-in machine language
instruction internally.

In-place calculation is also possible, i.e., "$set1" may be identical
with "$set2" or "$set3" or both.

An exception is raised if the sizes of the three sets do not match.

=item *

C<$set1-E<gt>Complement($set2);>

This method calculates the complement of "$set2" and stores the result
in "$set1".

In-place calculation is also possible, i.e., "$set1" may be identical
with "$set2".

An exception is raised if the sizes of the two sets do not match.

=item *

C<$set1-E<gt>subset($set2)>

Returns "true" ("1") if "$set1" is a subset of "$set2"
(i.e., completely contained in "$set2") and "false" ("0")
otherwise.

Note that by definition, if two sets are identical they are
also subsets (and also supersets) of each other.

An exception is raised if the sizes of the two sets do not match.

=item *

C<$norm = $set-E<gt>Norm();>

Returns the norm (number of bits which are set) of the given vector.

This is equivalent to the number of elements contained in the given
set.

=item *

C<$min = $set-E<gt>Min();>

Returns the minimum of the given set.

If the set is empty, plus infinity (represented by the constant
"MAX_LONG" on your system) is returned.

=item *

C<$max = $set-E<gt>Max();>

Returns the maximum of the given set.

If the set is empty, minus infinity (represented by the constant
"MIN_LONG" on your system) is returned.

=item *

C<$m1-E<gt>Multiplication($r1,$c1,$m2,$r2,$c2,$m3,$r3,$c3,);>

This method multiplies two boolean matrices (stored as bit vectors)
"$m2" and "$m3" and stores the result in matrix "$m1".

An exception is raised if the product of the number of rows and
columns of any of the three matrices differs from the size of
the corresponding bit vector.

An exception is also raised if the numbers of rows and columns
of the three matrices do not harmonize in the required manner:

  rows1 == rows2
  cols1 == cols3
  cols2 == rows3

This method is used by the "Math::MatrixBool" application class
(see also L<Math::MatrixBool(3)>).

=item *

C<$matrix-E<gt>Closure($rows,$cols);>

This method calculates the reflexive transitive closure of the
given boolean matrix (stored as a bit vector) using Kleene's
algoritm.

(See L<Math::Kleene(3)> for a brief introduction into the
theory behind Kleene's algorithm.)

The reflexive transitive closure answers the question wether
a path exists between any two vortices of a graph whose edges
are given as a matrix:

If a (directed) edge exists going from vortex "i" to vortex "j",
then the element in the matrix with coordinates (i,j) is set to
"1" (otherwise it remains set to "0").

If the edges are undirected the resulting matrix is symmetric,
i.e., elements (i,j) and (j,i) always contain the same value.

The matrix representing the edges of the graph only answers the
question wether an EDGE (!) exists between any two vortices of
the graph or not, whereas the reflexive transitive closure
answers the question wether a PATH (a series of adjacent edges)
exists between any two vortices of the graph!

Note that the contents of the given matrix are modified by
this method, so make a copy of the initial matrix in time
if you are going to need it again later!

An exception is raised if the given matrix is not quadratic,
i.e., if the number of rows and columns of the given matrix
is not identical.

An exception is also raised if the product of the number of
rows and columns of the given matrix differs from the size
of its underlying bit vector.

This method is used by the "Math::MatrixBool" application class
(see also L<Math::MatrixBool(3)>).

=back

=head2 METHODS IMPLEMENTED IN PERL

=over 2

=item *

C<$other_vector = $some_vector-E<gt>Shadow();>

Creates a NEW bit vector of the SAME SIZE as "$some_vector"
which is EMPTY.

Just like a shadow that has the same shape as the object it
originates from, but is flat and has no volume, i.e., contains
nothing.

=item *

C<$twin_vector = $some_vector-E<gt>Clone();>

Creates a NEW bit vector of the SAME SIZE as "$some_vector"
which is an EXACT COPY of "$some_vector".

=item *

C<$vector = Bit::Vector-E<gt>new_from_String($string);>

Creates a new bit vector of the size C<4 * length($string)>
and tries to fill it with the contents of "$string" which
must consist entirely of hexadecimal characters.

Example:

  $vector = Bit::Vector->new_from_String("20208828828208A20A08A28AC");

(Fills "$vector" with all prime numbers below 100.)

Hexadecimal characters "A" through "F" may be in lower or upper case
indiscriminately.

An exception is raised if the string contains other than hexadecimal
characters.

An exception is also raised if the string is empty because bit vectors
of zero elements (length zero) are not permitted in this class.

Finally, an exception is also raised if the necessary memory for the
bit vector cannot be allocated.

=item *

C<$string = $vector-E<gt>to_ASCII();>

Converts the given bit vector or set into an enumeration of single
indices and ranges of indices ("newsrc" style), representing the
bits that are set (i.e., in the "on" state) in the bit vector.

Example:

  $vector = Bit::Vector->new(20);
  $vector->Bit_On(2);
  $vector->Bit_On(3);
  $vector->Bit_On(11);
  $vector->Interval_Fill(5,7);
  $vector->Interval_Fill(13,19);
  print $vector->to_ASCII(), "\n";

which prints "2,3,5-7,11,13-19".

If the given bit vector is empty the resulting string will
also be empty.

=item *

C<$vector-E<gt>from_ASCII($string);>

First empties the given vector and then tries to set the
bits and ranges of bits specified in the given string.

The string "$string" must contain positive integers or
ranges (two positive integers separated by a dash "-")
separated by commas.

All other characters are disallowed (including white space).

An exception will be raised if the string does not obey
this syntax.

In each range the first integer must always be less than
or equal to the second one, otherwise an exception is raised.

An exception is also raised if any of the integers exceeds
the range of permitted indices in the given string, i.e., if
any integer is greater than or equal to C<$vector-E<gt>Size()>.

Example:

  eval { $vector->from_ASCII("2,3,5-7,11,13-19"); };

Note that the order of the indices and ranges is irrelevant,
i.e.,

  eval { $vector->from_ASCII("11,5-7,3,13-19,2"); };

results in the same vector as in the example above.

Ranges and indices may also overlap.

This is because each (single) index in the string is passed
to the method "Bit_On()" and each range to the method
"Interval_Fill()" internally.

So the resulting vector (or set) is just the union of all
the specified elements and ranges.

=back

=head2 OVERLOADED OPERATORS

=over 2

=item *

Emptyness

Note that the method for determining emptyness is quite efficient:

The method stops searching the given bit vector as soon as it finds
the first non-zero machine word.

=item *

Equality

The method for determining equality is also quite efficient:

It stops at the first differing machine word it finds.

=item *

Lexical Comparison

Using the overloaded operator "cmp" to compare two bit vectors as in
"C<$vector1 cmp $vector2>" is essentially the same as comparing the
two corresponding hexadecimal strings returned by the "to_String()"
method, i.e., "C<$vector1-E<gt>to_String() cmp $vector2-E<gt>to_String()>".

The result is exactly the same (provided that both bit vectors have
the same size!), but using the overloaded operator "cmp" is much more
efficient since the additional overhead of converting both bit vectors
into strings is avoided.

Moreover, with the overloaded operator "cmp", the two bit vectors
are compared one machine word (usually 32 or 64 bits) at a time,
which is much faster than comparing one hexadecimal character
(4 bits worth!) at a time in a string comparison.

This comparison ends as soon as two differing words are found, i.e.,
in many cases the operator doesn't even need to look at the entire
bit vector!

Again, since the operator looks at more bits at a time, the search
ends much earlier than in a string comparison.

=item *

Move Left

In its first form, C<$vector1 = $vector2 E<lt>E<lt> $bits;>, creates
a new vector of the same size as "$vector2", copies the contents of
"$vector2" to it, then shifts this new vector left by the indicated
number of bits and finally returns a reference to this new vector.

Note that an exception will be raised if you swap the two arguments
of this operator.

In its second form, C<$vector E<lt>E<lt>= $bits;>, shifts the given
vector "$vector" left by the indicated number of bits.

=item *

Move Right

In its first form, C<$vector1 = $vector2 E<gt>E<gt> $bits;>, creates
a new vector of the same size as "$vector2", copies the contents of
"$vector2" to it, then shifts this new vector right by the indicated
number of bits and finally returns a reference to this new vector.

Note that an exception will be raised if you swap the two arguments
of this operator.

In its second form, C<$vector E<gt>E<gt>= $bits;>, shifts the given
vector "$vector" right by the indicated number of bits.

=item *

String Conversion

Currently, converting a bit vector into a string using the overloaded
operator C<""> is performed using the method "to_ASCII()" internally,
which is probably the preferred behaviour.

If you think that this operator should rather convert any given bit
vector into a hexadecimal string using the method "to_String()", then
you should edit the file "Vector.pm" in this distribution as follows:

Locate the method "sub _string" and change the line

  return( $object->to_ASCII() );

to

  return( $object->to_String() );

=item *

Union

Since there is no "cup" character in the ASCII alphabet, the plus sign "+"
is used here to denote the union operator from set theory.

The pipe symbol (or "vertical bar") "|" may be used as an alias for the
plus sign "+".

=item *

Intersection

Since there is no "cap" character in the ASCII alphabet, the asterisk "*"
is used here to denote the intersection operator from set theory.

The ampersand "&" may be used as an alias for the asterisk "*".

=item *

Difference

Since the backslash "\" is not an (overloadable) operator in Perl
(and a very special character anyway) the minus sign "-" is used
here to denote the "less" operator from set theory.

=item *

ExclusiveOr

Since there is no widely accepted symbol to denote the symmetric
difference in set theory (at least not to my knowledge - unless it
is the dotted minus sign, which alas is also a character unavailable
in the ASCII alphabet), the caret "^" (which is the "exclusive-or"
operator anyway) is simply used here to express the symmetric
difference of two sets.

=item *

Complement

The tilde "~" as well as the unary minus "-" are used here
(interchangeably!) to denote the complement of a set.

=item *

Subset Relationship

Since there is no "contained in or equal" sign in the ASCII alphabet,
the usual operator "<=" is used instead to denote subset relationship.

=item *

True Subset Relationship

Since there is no "contained in" sign in the ASCII alphabet, the usual
operator "<" is used instead to denote (true) subset relationship.

=item *

Superset Relationship

Since there is no "superset of or equal" sign in the ASCII alphabet,
the usual operator ">=" is used instead to denote superset relationship.

=item *

True Superset Relationship

Since there is no "superset of" sign in the ASCII alphabet, the usual
operator ">" is used instead to denote (true) superset relationship.

=item *

Norm

The function "abs()" can be used to return the number of elements in
a given set.

=back

=head1 DESCRIPTION

This class allows you to create bit vectors and sets of arbitrary size
(only limited by the size of a machine word and available memory on your
system) with indices (= elements) in the range from zero to some positive
integer, to dynamically change the size of such bit vectors or sets and to
perform a broad range of basic operations on them, like

=over 4

=item -

adding or removing elements (setting and clearing single bits),

=item -

testing the presence of a certain element (testing a single bit),

=item -

setting or clearing contiguous ranges of bits,

=item -

detecting contiguous ranges of set bits,

=item -

copying bit vectors,

=item -

converting a bit vector into either a compact (hexadecimal) or a
human-readable string representation (allowing you to store bit
vectors in a file, for instance),

=item -

reading in the contents of a bit vector from a string,

=item -

comparing two bit vectors for equality and lexical order,

=item -

performing bitwise shift and rotation operations,

=item -

computing the union, intersection, difference, symmetric difference
or complement of sets,

=item -

testing two sets for equality or inclusion (subset relationship),

=item -

computing the minimum, the maximum and the norm (number of elements)
of a set,

=back

and more.

Note also that it is very easy to implement sets of arbitrary intervals of
integers using this module (negative indices are no obstacle), despite the
fact that only intervals of positive integers (from zero to some positive
integer) are supported directly.

Please refer to the "Set::IntegerRange" module (also contained in this
distribution) and L<Set::IntegerRange(3)> to see how this can be done!

The "Bit::Vector" module is mainly intended for mathematical or algorithmical
computations. There are also a number of efficient algorithms that rely on
sets (and bit vectors).

An example of such an efficient algorithm (which uses a different
representation for sets, however, not bit vectors) is Kruskal's
algorithm for minimal spanning trees in graphs.

(See the module "Graph::Kruskal" and L<Graph::Kruskal(3)> in this
distribution.)

Another famous algorithm using bit vectors is the "Sieve of Erathostenes"
for calculating prime numbers, which is included here as a demo program
(see the file "primes.pl" in this distribution).

An important field of application is the computation of "first", "follow"
and "look-ahead" character sets for the construction of LL, SLR, LR and LALR
parsers for compilers (or a compiler-compiler, like "yacc", for instance).

(That's what the C library in this package was initially written for.)

(See Aho, Hopcroft, Ullman, "The Design and Analysis of Computer Algorithms"
for an excellent book on efficient algorithms and the famous "Dragon Book"
on how to build compilers by Aho, Sethi, Ullman.)

Therefore, this module is primarily designed for efficiency, which is the
reason why most of its methods are implemented in C.

To increase execution speed, the module doesn't use bytes as its basic storage
unit, it rather uses machine words, assuming that a machine word is the most
efficiently handled size of all scalar types on any machine (that's what the
ANSI C standard proposes and assumes anyway).

In order to achieve this, it automatically determines the number of bits
in a machine word on your system and then adjusts its internal configuration
constants accordingly.

The greater the size of this basic storage unit, the better the complexity
(= execution speed) of the methods in this module (but also the greater the
average waste of unused bits in the last word).

Note that the C library of this package ("BitVector.c") is designed in such
a way that it can be used independently from Perl and this Perl extension
module. (!)

For this, you can use the file "BitVector.o" exactly as it is produced when
building this module! It contains no references to Perl, and it doesn't need
any Perl header files in order to compile. (It only needs "Definitions.h" and
some system header files.)

Note however that this C library does not perform any bounds checking
whatsoever! (This is your application's duty!)

(See the respective explanation in the file "BitVector.c" for more details
and the file "Vector.xs" for an example of how this can be done!)

In this module, all bounds and type checking (which should be absolutely
fool-proof, BTW!) is done in the XSUB routines (in C).

For more details about the modules in this distribution, please refer to
their respective man pages!

=head1 SEE ALSO

Set::IntegerFast(3), Set::IntegerRange(3), Math::MatrixBool(3),
Math::MatrixReal(3), DFA::Kleene(3), Math::Kleene(3), Graph::Kruskal(3).

perl(1), perlsub(1), perlmod(1), perlref(1), perlobj(1), perlbot(1),
perltoot(1), perlxs(1), perlxstut(1), perlguts(1), overload(3).

=head1 VERSION

This man page documents "Bit::Vector" version 4.2.

=head1 AUTHOR

Steffen Beyer <sb@sdm.de>.

=head1 COPYRIGHT

Copyright (c) 1995, 1996, 1997 by Steffen Beyer. All rights reserved.

=head1 LICENSE

This package is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

