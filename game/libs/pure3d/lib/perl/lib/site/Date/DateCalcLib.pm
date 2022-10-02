
#  Copyright (c) 1997 by Steffen Beyer. All rights reserved.
#  This package is free software; you can redistribute it
#  and/or modify it under the same terms as Perl itself.

package Date::DateCalcLib;

use strict;
use vars qw(@ISA @EXPORT @EXPORT_OK %EXPORT_TAGS $VERSION);

require Exporter;

@ISA = qw(Exporter);

@EXPORT = qw();

@EXPORT_OK = qw( nth_wday_of_month_year decode_date_us decode_date_eu
year_month_day_offset parse_date easter_sunday calendar );

%EXPORT_TAGS = (all => [@EXPORT_OK]);

$VERSION = '3.2';

use Carp;

use Date::DateCalc qw(:all);

sub nth_wday_of_month_year
{
    croak "Usage: (\$year,\$mm,\$dd) = nth_wday_of_month_year(\$nth,\$wday,\$month,\$year);"
      if (@_ != 4);

    my($nth,$wday,$month,$year) = @_;
    my($first,$offset);
    my($yy,$mm,$dd);

    return()
      if (($nth < 1) || ($nth > 5) ||
          ($wday < 1) || ($wday > 7) ||
          ($month < 1) || ($month > 12) ||
          ($year < 1));

    $first = day_of_week($year,$month,1);

    $offset = $wday - $first;
    $offset += 7 if ($offset < 0);
    $offset += --$nth * 7;

    return()
      unless (($yy,$mm,$dd) = calc_new_date($year,$month,1,$offset));

    return()
      if ($mm != $month);

    return($yy,$mm,$dd);
}

sub decode_date_us
{
    croak "Usage: (\$year,\$mm,\$dd) = decode_date_us(\$date);"
      if (@_ != 1);

    my($buffer) = @_;
    my($yy,$mm,$dd,$len);

    if ($buffer =~ /^[^A-Za-z0-9]*  ([A-Za-z]+)  [^A-Za-z0-9]*  0*(\d+)  \D*$/x)
    {
        ($mm,$buffer) = ($1,$2);
        $mm = decode_month($mm);
        unless ($mm > 0)
        {
            return(); # can't decode month!
        }
        $len = length($buffer);
        if    ($len == 2)
        {
            $dd = substr($buffer,0,1);
            $yy = substr($buffer,1,1);
        }
        elsif ($len == 3)
        {
            $dd = substr($buffer,0,1);
            $yy = substr($buffer,1,2);
        }
        elsif ($len == 4)
        {
            $dd = substr($buffer,0,2);
            $yy = substr($buffer,2,2);
        }
        elsif ($len == 5)
        {
            $dd = substr($buffer,0,1);
            $yy = substr($buffer,1,4);
        }
        elsif ($len == 6)
        {
            $dd = substr($buffer,0,2);
            $yy = substr($buffer,2,4);
        }
        else { return(); } # wrong number of digits!
    }
    elsif ($buffer =~ /^[^A-Za-z0-9]*  ([A-Za-z]+)  [^A-Za-z0-9]*  (\d+)  \D+  (\d+)  \D*$/x)
    {
        ($mm,$dd,$yy) = ($1,$2,$3);
        $mm = decode_month($mm);
        unless ($mm > 0)
        {
            return(); # can't decode month!
        }
    }
    elsif ($buffer =~ /^\D*  0*(\d+)  \D*$/x)
    {
        $buffer = $1;
        $len = length($buffer);
        if    ($len == 3)
        {
            $mm = substr($buffer,0,1);
            $dd = substr($buffer,1,1);
            $yy = substr($buffer,2,1);
        }
        elsif ($len == 4)
        {
            $mm = substr($buffer,0,1);
            $dd = substr($buffer,1,1);
            $yy = substr($buffer,2,2);
        }
        elsif ($len == 5)
        {
            $mm = substr($buffer,0,1);
            $dd = substr($buffer,1,2);
            $yy = substr($buffer,3,2);
        }
        elsif ($len == 6)
        {
            $mm = substr($buffer,0,2);
            $dd = substr($buffer,2,2);
            $yy = substr($buffer,4,2);
        }
        elsif ($len == 7)
        {
            $mm = substr($buffer,0,1);
            $dd = substr($buffer,1,2);
            $yy = substr($buffer,3,4);
        }
        elsif ($len == 8)
        {
            $mm = substr($buffer,0,2);
            $dd = substr($buffer,2,2);
            $yy = substr($buffer,4,4);
        }
        else { return(); } # wrong number of digits!
    }
    elsif ($buffer =~ /^\D*  (\d+)  \D+  (\d+)  \D+  (\d+)  \D*$/x)
    {
        ($mm,$dd,$yy) = ($1,$2,$3);
    }
    else { return(); } # no match at all!

    if ($yy < 100) { $yy += 1900; }

    if (check_date($yy,$mm,$dd))
    {
        return($yy,$mm,$dd);
    }
    else { return(); } # not a valid date!
}

sub decode_date_eu
{
    croak "Usage: (\$year,\$mm,\$dd) = decode_date_eu(\$date);"
      if (@_ != 1);

    my($buffer) = @_;
    my($yy,$mm,$dd,$len);

    if ($buffer =~ /^\D*  (\d+)  [^A-Za-z0-9]*  ([A-Za-z]+)  [^A-Za-z0-9]*  (\d+)  \D*$/x)
    {
        ($dd,$mm,$yy) = ($1,$2,$3);
        $mm = decode_month($mm);
        unless ($mm > 0)
        {
            return(); # can't decode month!
        }
    }
    elsif ($buffer =~ /^\D*  0*(\d+)  \D*$/x)
    {
        $buffer = $1;
        $len = length($buffer);
        if    ($len == 3)
        {
            $dd = substr($buffer,0,1);
            $mm = substr($buffer,1,1);
            $yy = substr($buffer,2,1);
        }
        elsif ($len == 4)
        {
            $dd = substr($buffer,0,1);
            $mm = substr($buffer,1,1);
            $yy = substr($buffer,2,2);
        }
        elsif ($len == 5)
        {
            $dd = substr($buffer,0,1);
            $mm = substr($buffer,1,2);
            $yy = substr($buffer,3,2);
        }
        elsif ($len == 6)
        {
            $dd = substr($buffer,0,2);
            $mm = substr($buffer,2,2);
            $yy = substr($buffer,4,2);
        }
        elsif ($len == 7)
        {
            $dd = substr($buffer,0,1);
            $mm = substr($buffer,1,2);
            $yy = substr($buffer,3,4);
        }
        elsif ($len == 8)
        {
            $dd = substr($buffer,0,2);
            $mm = substr($buffer,2,2);
            $yy = substr($buffer,4,4);
        }
        else { return(); } # wrong number of digits!
    }
    elsif ($buffer =~ /^\D*  (\d+)  \D+  (\d+)  \D+  (\d+)  \D*$/x)
    {
        ($dd,$mm,$yy) = ($1,$2,$3);
    }
    else { return(); } # no match at all!

    if ($yy < 100) { $yy += 1900; }

    if (check_date($yy,$mm,$dd))
    {
        return($yy,$mm,$dd);
    }
    else { return(); } # not a valid date!
}

sub year_month_day_offset
{
    croak "Usage: (\$year,\$mm,\$dd) = year_month_day_offset(\$year,\$mm,\$dd,\$y_offs,\$m_offs,\$d_offs);"
      if (@_ != 6);

    my($year,$mm,$dd,$y_offset,$m_offset,$d_offset) = @_;
    my($y_diff);

    $year     = int($year);
    $mm       = int($mm);
    $dd       = int($dd);

    $y_offset = int($y_offset);
    $m_offset = int($m_offset);
    $d_offset = int($d_offset);

    return()
      unless (check_date($year,$mm,$dd));

    if ($d_offset != 0)
    {
        return()
          unless (($year,$mm,$dd) = calc_new_date($year,$mm,$dd,$d_offset));
    }

    $y_diff = 0;

    if ($m_offset != 0)
    {
        $mm += --$m_offset;       # "--" because $mm is in the range 1..12

        $y_diff = int($mm / 12);
        $mm -= $y_diff * 12;

        if ($mm < 0) { $mm += 12; $y_diff--; }

        $mm++;                    # shift $mm back into the range 1..12
    }

    $year += $y_diff + $y_offset;

    if ($year > 0)
    {
        if (($dd == 29) && ($mm == 2) && (!leap($year))) { $dd = 1; $mm = 3; }
        return($year,$mm,$dd);
    }
    else { return(); }
}

sub parse_date
{
    croak "Usage: (\$year,\$mm,\$dd) = parse_date(\$date);"
      if (@_ != 1);

    my($date) = @_;
    my($yy,$mm,$dd);
    unless ($date =~ /\b([JFMASOND][aepuco][nbrynlgptvc])\s+([0123]??\d)\b/)
    {
        return();
    }
    $mm = $1;
    $dd = $2;
    unless ($date =~ /\b(19\d\d|20\d\d)\b/)
    {
        return();
    }
    $yy = $1;
    $mm = decode_month($mm);
    unless ($mm > 0)
    {
        return();
    }
    unless (check_date($yy,$mm,$dd))
    {
        return();
    }
    return($yy,$mm,$dd);
}

sub easter_sunday  #  Gauss'sche Regel (Gauss' Rule)
{
    # Quelle / Source:

    # H. H. Voigt, "Abriss der Astronomie", Wissenschaftsverlag,
    # Bibliographisches Institut, Seite 9.

    croak "Usage: (\$year,\$mm,\$dd) = easter_sunday(\$year);"
      if (@_ != 1);

    my($year) = @_;
    my($a,$b,$c,$d,$e,$m,$n);
    my($mm,$dd);

    return()
      if (($year < 1583) || ($year > 2299));

    if    ($year < 1700) { $m = 22; $n = 2; }
    elsif ($year < 1800) { $m = 23; $n = 3; }
    elsif ($year < 1900) { $m = 23; $n = 4; }
    elsif ($year < 2100) { $m = 24; $n = 5; }
    elsif ($year < 2200) { $m = 24; $n = 6; }
    else                 { $m = 25; $n = 0; }

    $a = $year % 19;
    $b = $year % 4;
    $c = $year % 7;
    $d = (19 * $a + $m) % 30;
    $e = (2 * $b + 4 * $c + 6 * $d + $n) % 7;
    $dd = 22 + $d + $e;
    $mm = 3;

    if ($dd > 31)
    {
        $dd -= 31;  #  $dd = $d + $e - 9;
        $mm++;
    }

    if (($dd == 26) && ($mm == 4))
    { $dd = 19; }

    if (($dd == 25) && ($mm == 4) && ($d == 28) && ($e == 6) && ($a > 10))
    { $dd = 18; }

    return($year,$mm,$dd);
}

# Carnival Monday / Rosenmontag / Veille du Mardi Gras  : Easter Sunday - 48
# Mardi Gras / Karnevalsdienstag / Mardi Gras           : Easter Sunday - 47
# Ash Wednesday / Aschermittwoch / Mercredi des Cendres : Easter Sunday - 46
# Palm Sunday / Palmsonntag / Dimanche des Rameaux      : Easter Sunday - 7
# Easter Friday / Karfreitag / Vendredi Saint           : Easter Sunday - 2
# Easter Saturday / Ostersamstag / Samedi de Paques     : Easter Sunday - 1
# Easter Monday / Ostermontag / Lundi de Paques         : Easter Sunday + 1
# Ascension of Christ / Christi Himmelfahrt / Ascension : Easter Sunday + 39
# Whitsunday / Pfingstsonntag / Dimanche de Pentecote   : Easter Sunday + 49
# Whitmonday / Pfingstmontag / Lundi de Pentecote       : Easter Sunday + 50
# Feast of Corpus Christi / Fronleichnam / Fete-Dieu    : Easter Sunday + 60

sub calendar
{
    croak "Usage: \$string = calendar(\$year,\$month);"
      if (@_ != 2);

    my($year,$month) = @_;
    my($first,$last);
    my($i,$j);
    my($cal);

    return()
      if (($month < 1) || ($month > 12) || ($year < 1));

    $cal = center((month_name_tab($month) . ' ' . $year), 27);
    $cal .= "\nMon Tue Wed Thu Fri Sat Sun\n";

    $first = day_of_week($year,$month,1);
    $last = days_in_month($year,$month);

    $j = $first - 1;

    $cal .= ('    ' x $j);

    for ( $i = 1; $i <= $last; $i++, $j++ )
    {
        if ($j >= 7)
        {
            $j = 0;
            $cal .= "\n";
        }
        $cal .= sprintf(" %2d ", $i);
    }
    $cal .= "\n";
    return($cal);
}

sub center
{
    my($string,$width) = @_;
    my($length,$left,$right);

    $length = length($string);
    return($string) if ($length >= $width);
    $length = $width - $length;
    $left = int($length / 2);
    $right = $length - $left;
    return( (' ' x $left) . $string . (' ' x $right) );
}

1;

__END__

=head1 NAME

Date::DateCalcLib - Date Calculations Library

Library of useful date calculation functions

=head1 SYNOPSIS

=over 4

=item *

C<use Date::DateCalcLib qw( nth_wday_of_month_year>
C<decode_date_us decode_date_eu year_month_day_offset>
C<parse_date easter_sunday calendar );>

=item *

C<use Date::DateCalcLib qw(:all);>

=item *

C<($year,$mm,$dd) = nth_wday_of_month_year($nth,$wday,$month,$year);>

=item *

C<($year,$mm,$dd) = decode_date_us($date);>

=item *

C<($year,$mm,$dd) = decode_date_eu($date);>

=item *

C<($year,$mm,$dd) = year_month_day_offset($year,$mm,$dd,$y_offs,$m_offs,$d_offs);>

=item *

C<($year,$mm,$dd) = parse_date(`/bin/date`);>

=item *

C<($year,$mm,$dd) = easter_sunday($year);>

=item *

C<$string = calendar($year,$month);>

=back

=head1 DESCRIPTION

This module expands the functionality of the "Date::DateCalc" module
(see L<Date::DateCalc(3)> for more details), which is intended to be
a rather basic set of tools, with functions for various special tasks
like:

=over 4

=item *

calculating the n-th weekday for a given month and year

=item *

parsing dates in U.S. american and european format

=item *

calculating a new date with a year, month and/or day offset

=item *

parsing the current date or the submission date of an e-mail message

=item *

calculating easter sunday and all the related christian feast days

=item *

printing a calendar for a given month and year

=back

For a detailed description of each function, see below:

=over 4

=item *

C<use Date::DateCalcLib qw( nth_wday_of_month_year>
C<decode_date_us decode_date_eu year_month_day_offset>
C<parse_date easter_sunday calendar );>

Use this statement to make the functions of this module
available in your module or script.

You can also use any subset of the functions listed above
that you like by only including the names of the functions
you actually need between the parentheses of the "qw()"
operator above.

=item *

C<use Date::DateCalcLib qw(:all);>

Alternate and simpler way of importing ALL the functions
exported by this module into your module or script.

=item *

C<($year,$mm,$dd) = nth_wday_of_month_year($nth,$wday,$month,$year);>

This function calculates the n-th weekday for a given month and year,
for example the 3rd Thursday of a given month and year.

"C<$nth>" must be in the range 1 to 5 (for "the first" to "the fifth"),
"C<$wday>" must be in the range 1 to 7 (1 = Monday, 7 = Sunday),
"C<$month>" must (of course) be in the range 1 to 12 and "C<$year>"
must be greater than zero.

The function returns an empty list if any of its parameters is illegal
or if the requested date cannot be calculated (for instance, if there
is no fifth "C<$wday>" in the given month and year!).

Example:

Suppose you have a meeting (of some user group, for instance) in regular
intervals, let's say the first Friday of each month, and that you want to
send a mail to all members saying: "Remember: Tomorrow is our user group's
meeting!" on the day before.

Given the current date, you would go about this as follows:

Convert the current date into days using the function "calc_days()"
of the "Date::DateCalc" module. We'll refer to this number as "the
number of days of the current date" below.

Calculate the first Friday of the current month.

Convert the resulting date into days using the function "calc_days()"
of the "Date::DateCalc" module.

See if the number of days of the current date *plus one* is the same
as the number of days of the first Friday of the current month.

If so, send your mail!

If not, calculate the first Friday of the NEXT month (beware: if the
month is equal to 12, you need to "wrap" it back to 1 and to increment
the year number!).

(This is necessary because the first Friday of any given month could
fall on the first day of that month, which means that the day before
that (when you want to send your mail!) is in the PREVIOUS month!)

Convert the resulting date into days using the function "calc_days()"
of the "Date::DateCalc" module.

See if the number of days of the current date *plus one* is the same
as the number of days of the first Friday of the next month.

If so, send your mail!

If not, you're done for today!

(On a UNIX system, you would normally use a "cron" job running once
every day to automatically carry out these calculations and to send
the reminder mail.)

=item *

C<($year,$mm,$dd) = decode_date_us($date);>

Using this function, you can parse dates in almost any format,
provided the date is given as "month - day - year".

(To decode dates in european format, i.e., dates given as
"day - month - year", see the function "decode_date_eu()"
in this module or the function "decode_date()" in the
"Date::DateCalc" module.)

The day and the year must be given as numbers, the month may be
specified either by a number or its name in English (however,
only up to the 3 first characters are compared, any extra
characters are ignored). The latter comparison is carried out
in a case-insensitive manner.

If they uniquely identify the month, one or two letters are
sufficient (e.g., "s" for september or "ja" for january).

The year may be abbreviated as well, for instance "97" instead
of "1997". (Year numbers below 100 are incremented by 1900.)

Note that leading zeros are ignored for all numeric values
(= contiguous strings of digits).

If the month given in the input string isn't numeric, any number of
non-alphanumeric characters (i.e., all characters NOT in [A-Za-z0-9])
may precede and follow the month, and any number of non-digits (i.e.,
all characters NOT in [0-9]) may precede and follow the year.

If separating non-digits between the day and year are missing, the
string of digits following the month is automatically mapped to the
day and year depending on its length, as intuitively as possible, as
follows:

		Length:        Mapping:
		  2              dy
		  3              dyy
		  4              ddyy
		  5              dyyyy
		  6              ddyyyy

If the month given in the input string is numeric, any number of
non-digits may precede the month, separate the month from the day
and the day from the year, and follow the year.

If separating non-digits are missing, the string of digits contained
in the input string is automatically mapped to the month, day and year
depending on its length, as intuitively as possible, as follows:

		Length:        Mapping:
		  3              mdy
		  4              mdyy
		  5              mddyy
		  6              mmddyy
		  7              mddyyyy
		  8              mmddyyyy

Example:

All the following strings will be recognized as "January 3rd 1964":

		      1 3 64
		      1.3.64
		     01.03.64
		     01/03/64
		    Jan 3 1964
		 January 3rd, 1964
		    Jan 3. '64
		     Jan-3-64
		     Jan3.1964
		       ja364
		       1364

If no valid date can be derived from the input string, the function
returns an empty list.

=item *

C<($year,$mm,$dd) = decode_date_eu($date);>

Using this function, you can parse dates in almost any format,
provided the date is given as "day - month - year".

(To decode dates in U.S. american format, i.e., dates given
as "month - day - year", see the function "decode_date_us()"
in this module.)

The day and the year must be given as numbers, the month may be
specified either by a number or its name in English (however,
only up to the 3 first characters are compared, any extra
characters are ignored). The latter comparison is carried out
in a case-insensitive manner.

If they uniquely identify the month, one or two letters are
sufficient (e.g., "s" for september or "ja" for january).

The year may be abbreviated as well, for instance "97" instead
of "1997". (Year numbers below 100 are incremented by 1900.)

Note that this function is a little more flexible than the function
"decode_date()" in the "Date::DateCalc" module since it allows any
number of leading zeros for numeric values and any number of letters
for the name of the month.

If the month given in the input string isn't numeric, any number of
non-alphanumeric characters (i.e., all characters NOT in [A-Za-z0-9])
may precede and follow the month (separating it from the day and the
year), and any number of non-digits (i.e., all characters NOT in [0-9])
may precede the day and follow the year.

If the month given in the input string is numeric, any number of
non-digits may precede the day, separate the day from the month
and the month from the year, and follow the year.

In the latter case, if separating non-digits are missing, the string
of digits contained in the input string is automatically mapped to the
day, month and year depending on its length, as intuitively as possible,
as follows:

		Length:        Mapping:
		  3              dmy
		  4              dmyy
		  5              dmmyy
		  6              ddmmyy
		  7              dmmyyyy
		  8              ddmmyyyy

Example:

All the following strings will be recognized as "January 3rd 1964":

		      3.1.64
		      3 1 64
		     03.01.64
		     03/01/64
		    3. Jan 1964
		  3 January 1964
		    3. Jan '64
		     03-Jan-64
		     3.Jan1964
		      3Jan64
		       3ja64
		       3164

If no valid date can be derived from the input string, the function
returns an empty list.

=item *

C<($year,$mm,$dd) = year_month_day_offset($year,$mm,$dd,$y_offs,$m_offs,$d_offs);>

Many people have asked for a function to calculate a new date, starting
with a given date and a year, month and/or day offset. So here it is!

Note that all parameters must be integers.

The function ensures this by applying the "int()" function to every
parameter.

An empty list is returned if the given date or any (intermediate or
final) result is invalid.

Note that the day offset is added first using the "calc_new_date()"
function of the "Date::DateCalc" module (see L<Date::DateCalc(3)>).

Beware that an empty list is returned if this intermediate result
is not a valid date!

After this, the month offset is added and finally the year offset
(with a possible carry over from the month) is added.

Note that all three offsets may have any (integer) value (provided
that all (intermediate or final) results are valid dates) and any
sign (independently from each other!).

If the final result happens to be the 29th of February in a non-leap
year, it is substituted by the 1st of March.

BEWARE that because the three offsets are always applied in the
same order, and also because of the substitution mentioned above,
the transformation calculated by this function is NOT REVERSIBLE,
in general!

(Unlike the "calc_new_date()" function of the "Date::DateCalc" module!)

I.e.,

    ($year,$mm,$dd) =
    year_month_day_offset(
    year_month_day_offset($year,$mm,$dd, $y_offs,$m_offs,$d_offs),
    -$y_offs,-$m_offs,-$d_offs);

will not, in general, return the original date!

In the formula above, in order to reverse the effect of the first call
to "year_month_day_offset()", the offsets do not only need to have the
opposite sign, but they would also need to be applied in reverse order
in the second call to "year_month_day_offset()"!

=item *

C<($year,$mm,$dd) = parse_date($date);>

This function is a (special!) relative of the "decode_date_us()" and
"decode_date_eu()" function.

In contrast to the "decode_date_us()" and "decode_date_eu()" function,
however, the month is required to be a three-letter abbreviation of
the month's name (in English).

Moreover, the month's name is required to be followed by the day's number,
separated by whitespace.

Another restriction is that year numbers must lie in the range 1900 to 2099.

In compensation, the year number may come before or after the month/day
pair.

This function is especially designed to parse dates returned by the UNIX
"date" command:

=back

=over 4

=item

C<-   >Parse today's date:

    ($year,$mm,$dd) = parse_date(`/bin/date`);

=item

C<-   >Parse date of submission of an e-mail:

    while (<MAIL>)
    {
        if (/^From \S/)
        {
            ($year,$mm,$dd) = parse_date($_);
            ...
        }
        ...
    }

=item

The function returns an empty list if it can't extract a valid date
from the input string.

=back

=over 4

=item *

C<($year,$mm,$dd) = easter_sunday($year);>

Calculates the date of easter sunday for years in the range 1583 to 2299
using Gauss' Rule.

Returns an empty list for all arguments outside this range.

Other christian feast days depend on easter sunday and can be calculated
using the function "calc_new_date()" of the "Date::DateCalc" module (see
L<Date::DateCalc(3)> for more info) as follows:

=back

=over 4

=item

C<*   >Easter Sunday - 48

    ($year,$mm,$dd) = calc_new_date(easter_sunday($year),-48);

    Carnival Monday / Rosenmontag / Veille du Mardi Gras

=item

C<*   >Easter Sunday - 47

    ($year,$mm,$dd) = calc_new_date(easter_sunday($year),-47);

    Mardi Gras / Faschingsdienstag, Karnevalsdienstag / Mardi Gras

=item

C<*   >Easter Sunday - 46

    ($year,$mm,$dd) = calc_new_date(easter_sunday($year),-46);

    Ash Wednesday / Aschermittwoch / Mercredi des Cendres

=item

C<*   >Easter Sunday - 7

    ($year,$mm,$dd) = calc_new_date(easter_sunday($year),-7);

    Palm Sunday / Palmsonntag / Dimanche des Rameaux

=item

C<*   >Easter Sunday - 2

    ($year,$mm,$dd) = calc_new_date(easter_sunday($year),-2);

    Easter Friday / Karfreitag / Vendredi Saint

=item

C<*   >Easter Sunday - 1

    ($year,$mm,$dd) = calc_new_date(easter_sunday($year),-1);

    Easter Saturday / Ostersamstag / Samedi de Paques

=item

C<*   >Easter Sunday + 1

    ($year,$mm,$dd) = calc_new_date(easter_sunday($year),1);

    Easter Monday / Ostermontag / Lundi de Paques

=item

C<*   >Easter Sunday + 39

    ($year,$mm,$dd) = calc_new_date(easter_sunday($year),39);

    Ascension of Christ / Christi Himmelfahrt / Ascension

=item

C<*   >Easter Sunday + 49

    ($year,$mm,$dd) = calc_new_date(easter_sunday($year),49);

    Whitsunday / Pfingstsonntag / Dimanche de Pentecote

=item

C<*   >Easter Sunday + 50

    ($year,$mm,$dd) = calc_new_date(easter_sunday($year),50);

    Whitmonday / Pfingstmontag / Lundi de Pentecote

=item

C<*   >Easter Sunday + 60

    ($year,$mm,$dd) = calc_new_date(easter_sunday($year),60);

    Feast of Corpus Christi / Fronleichnam / Fete-Dieu

=back

=over 4

=item

For more information about easter sunday and how to calculate it,
see also on USENET in news.answers

    Calendar FAQ, v. 1.6 (modified 26 Dec 1996) Part 1/3
    Calendar FAQ, v. 1.6 (modified 26 Dec 1996) Part 2/3
    Calendar FAQ, v. 1.6 (modified 26 Dec 1996) Part 3/3

or

    http://www.math.uio.no/faq/calendars/faq.html

or

    http://www.pip.dknet.dk/~pip10160/calendar.html

All authored by

    Claus Tondering <c-t@pip.dknet.dk>

=back

=over 4

=item *

C<$string = calendar($year,$month);>

This function returns a string containing a calendar for the given
month and year (which looks pretty much like the output of the UNIX
"cal" command).

The calendar is not printed directly but rather returned as a string
in order to make post-processing possible, i.e., like staggering multiple
month calendars together on one page to produce a calendar of a complete
year, or transforming the day numbers into hyperlinks for incorporation
of the calendar (with clickable day numbers) into an HTML page.

The function returns an empty list if the given month or year is invalid.

=back

=head1 SEE ALSO

Date::DateCalc(3).

=head1 VERSION

This man page documents "Date::DateCalcLib" version 3.2.

=head1 AUTHOR

Steffen Beyer <sb@sdm.de>.

=head1 COPYRIGHT

Copyright (c) 1997 by Steffen Beyer. All rights reserved.

=head1 LICENSE

This package is free software; you can redistribute it
and/or modify it under the same terms as Perl itself.

