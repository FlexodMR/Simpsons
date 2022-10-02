package String::Approx;

=head1 NAME

String::Approx - match and substitute approximately (aka fuzzy matching)

=head1 SYNOPSIS

	use String::Approx qw(amatch asubstitute);

=head1 DESCRIPTION

B<Approximate> is defined here as I<k-differences>.  One I<difference>
is an insertion, a deletion, or a substitution of one character.
The I<k> in the I<k-differences> is the maximum number of differences.

For example I<1-difference> means that a match is found if there is
one character too many (insertion) or one character missing (deletion)
or one character changed (substitution).  Those are I<exclusive or>s:
that is, I<not> one of each type of modification but I<exactly one>.

=head2 The default approximateness

The default approximateness is I<10 %> of the length of the
approximate pattern or I<at least 1>: I<0-differences> being the exact
matching which can be done very effectively using the usual Perl
function C<index()> or normal regular expression matching.

=head2 amatch

	use String::Approx qw(amatch);

	amatch("PATTERN");
	amatch("PATTERN", @LIST);
	amatch("PATTERN", [ @MODS ]);
	amatch("PATTERN", [ @MODS ], @LIST);

The PATTERN is B<a string>, not a regular expression.  The regular
expression metanotation (C<. ? * + {...,...} ( ) | [ ] ^ $ \w ...>)
will be understood as literal characters, that is, a C<*> means in
regex terms C<\*>, not I<"match 0 or more times">.

The LIST is the list of strings to match against the pattern.
If no LIST is given matches against C<$_>.

The MODS are the modifiers that tell how approximately to match.
See below for more detailed explanation.
B<NOTE>: The syntax really is C<[ @MODS ]>, the square
brackets C<[ ]> must be in there.  See below for examples.

In scalar context C<amatch()> returns the number of successful
matches.  In list context C<amatch()> returns the strings that
had matches.

Example:

	use String::Approx qw(amatch);

	open(WORDS, '/usr/dict/words') or die;

	while (<WORDS>) {
	    print if amatch('perl');
	}

or the same ignoring case:

	use String::Approx qw(amatch);

	open(WORDS, '/usr/dict/words') or die;

	while (<WORDS>) {
	    print if amatch('perl', ['i']);
	}

=head2 asubstitute

	use String::Approx qw(asubstitute);

	asubstitute("PATTERN", "SUBSTITUTION");
	asubstitute("PATTERN", "SUBSTITUTION", @LIST);
	asubstitute("PATTERN", "SUBSTITUTION", [ @MODS ]);
	asubstitute("PATTERN", "SUBSTITUTION", [ @MODS ], @LIST);

The PATTERN is B<a string>, not a regular expression.  The regular
expression metanotation (C<. ? * + {...,...} ( ) | [ ] ^ $ \w ...>)
will be understood as literal characters, that is, a C<*> means in
regex terms C<\*>, not I<"match 0 or more times">.

Also the SUBSTITUTION is B<a string>, not a regular expression.  Well,
mostly.  I<Most of the> regular expression metanotation (C<.>, C<?>,
C<*>, C<+>, ...) will be not understood as literal characters, that
is, a C<*> means in regex terms C<\*>, not I<"match 0 or more times">.
The understood notations are

=over 8

=item	C<$`>

the part I<before> the approximate match

=item	C<$&>

the approximately matched part

=item	C<$'>

the part I<after> the approximate match

=back

The MODS are the modifiers that tell how approximately to match.
See below for more detailed explanation.
B<NOTE>: Yes, the syntax is really C<[ @MODS ]>, the square
brackets C<[ ]> must be in there.  See below for examples.

The LIST is the list of strings to substitute against the pattern.
If no LIST is given substitutes against C<$_>.

In scalar context C<asubstitute()> returns the number of successful
substitutions.  In list context C<asubstitute()> returns the strings
that had substitutions.

Examples:

	use String::Approx qw(asubstitute);

	open(WORDS, '/usr/dict/words') or die;
	while (<WORDS>) {
	    print if asubstitute('perl', '($&)');
	}

or the same ignoring case:

	use String::Approx qw(asubstitute);

	open(WORDS, '/usr/dict/words') or die;
	while (<WORDS>) {
	    print if asubstitute('perl', '($&)', [ 'i' ]);
	}

=head2 Modifiers

The MODS argument both in amatch() and asubstitute() is a list of
strings that control the matching of PATTERN.  The first two, B<i> and
B<g>, are the usual regular expression match/substitute modifiers, the
rest are special for approximate matching/substitution.

=over 8

=item	i

Match/Substitute ignoring case, case-insensitively.

=item	g

Substitute I<globally>, that is, all the approximate matches, not just
the first one.

=item	I<k>

The maximum number of differences.
For example 2.

=item	II<k>

The maximum number of insertions.
For example 'I2'.

=item	DI<k>

The maximum number of deletions.
For example 'D2'.

=item	SI<k>

The maximum number of substitutions.
For example 'S2'.

=item	I<k>%

The maximum relative number of differences.
For example '10%'.

=item	II<k>%

The maximum relative number of insertions.
For example 'I5%'.

=item	DI<k>%

The maximum relative number of deletions.
For example 'D5%'.

=item	SI<k>%

The maximum relative number of substitutions.
For example 'S5%'.

=back

I<The regular expression modifiers> C<o m s x> I<are> B<not supported>
because their definitions for approximate matching are less than clear.

The relative number of differences is relative to the length of the
PATTERN, rounded up: if, for example, the PATTERN is C<'bouillabaise'>
and the MODS is C<['20%']> the I<k> becomes I<3>.

If you want to B<disable> a particular kind of difference you need
to explicitly set it to zero: for example C<'D0'> allows no deletions.

In case of conflicting definitions the later ones silently override,
for example:

	[2, 'I3', 'I1']

equals

	['I1', 'D2', 'S2']

=head1 EXAMPLES

The following examples assume the following template:

	use String::Approx qw(amatch asubstitute);

	open(WORDS, "/usr/dict/words") or die;
	while (<WORDS>) {
		# <---
	}

and the following examples just replace the above 'C<# E<lt>--->' line.

=head2 Matching from the C<$_>

=over 8

=item Match 'perl' with one difference

	print if amatch('perl');

The I<one difference> is automatically the result in this case because
first the rule of the I<10 %> of the length of the pattern ('C<perl>')
is used and then the I<at least 1> rule.

=item Match 'perl' with case ignored

	print if amatch('perl', [ 'i' ]);

The case is ignored in matching (C<i>).

=item Match 'perl' with one insertion

	print if amatch('perl', [ '0', 'I1' ]);

The I<one insertion> is easiest achieved with first disabling any
approximateness (C<0>) and then enabling one insertion (C<I1>).

=item Match 'perl' with zero deletions

	print if amatch('perl', [ 'D0' ]);

The I<zero deletion> is easily achieved with simply disabling any
deletions (C<D0>), the other types of differences, the insertions and
substitutions, are still enabled.

=item Substitute 'perl' approximately with HTML emboldening

	print if amatch('perl', '<B>$&</B>', [ 'g' ]);

All (C<g>) of the approximately matching parts of the input are
surrounded by the C<HTML> emboldening markup.

=back

=head2 Matching from a list

The above examples match against the default variable B<$_>.
The rest of the examples show how the match from a list.
The template is now:

	use String::Approx qw(amatch asubstitute);

	open(WORDS, "/usr/dict/words") or die;
	@words = <words>;
	# <---

and the examples still go where the 'C<# E<lt>--->' line is.

=over 8

=item Match 'perl' with one difference from a list

	@matched = amatch('perl', @words);

The C<@matched> contains the elements of the C<@words> that matched
approximately.

=item Substitute 'perl' approximately with HTML emphasizing from a list

	@substituted = asubstitute('perl', '<EM>$&</EM>', [ 'g' ], @words);

The C<@substituted> contains B<with all> (C<g>) B<the substitutions>
the elements of the C<@words> that matched approximately.

=back

=head1 ERROR MESSAGES

=over 8

=item amatch: $_ is undefined: what are you matching against?

=item asubstitute: $_ is undefined: what are you matching against?

These happen when you have nothing in C<$_> and try to C<amatch()> or
C<asubstitute()>.  Perhaps you are using the Perl option C<-e> but you
did forget the Perl option C<-n>?

=item amatch: too long pattern.

This happens when the pattern is too long for matching.

When matching long patterns, C<String::Approx> attempts to partition
the match.  In other words, it tries to do the matching incrementally
in smaller parts.

If this fails the above message is shown.  Please try using shorter
match patterns.

See below for L<LIMITATIONS/Pattern length> for more detailed
explanation why this happens.

=item asubstitute: too long pattern.

This happens when the pattern is too long for substituting.

The partitioning scheme explained above that is used for matching long
patterns cannot, sadly enough, be used substituting.

Please try using shorter substitution patterns.

See below for L<LIMITATIONS/Pattern length> for more detailed
explanation why this happens.

=back

=head1 VERSION

Version 2.1.

=head1 LIMITATIONS

=head2 Fixed pattern

The PATTERNs of C<amatch()> and C<asubstitute()> are fixed strings,
they are not regular expressions.  The I<SUBSTITUTION> of
C<asubstitute()> is a bit more flexible than that but not by much.

=head2 Pattern length

The approximate matching algorithm is B<very aggressive>.  In
mathematical terms it is I<O(exp(n) * x**2)>. This means that
when the pattern length and/or the approximateness grows the
matching or substitution take much longer time and memory.

For C<amatch()> this can be avoided by I<partitioning> the pattern,
matching it in shorter subpatterns.  This makes matching a bit slower
and a bit more fuzzier, more approximate.  For C<asubstitute()> this
partitioning cannot be done, the absolute maximum for the substitution
pattern length is B<19> but sometimes, for example it the approximateness
is increased, even shorter patterns are too much.  When this happens,
you must use shorter patterns.

=head2 Speed

I<Despite the about 20-fold speed increase> from the C<String::Approx>
I<version 1> B<agrep is still faster>.  If you do not know what
C<agrep> is: it is a program like the UNIX grep but it knows, among
other things, how to do approximate matching.  C<agrep> is still about
30 times faster than I<Perl> + C<String::Approx>.  B<NOTE>: all these
speeds were measured in one particular system using one particular set
of tests: your mileage will vary.

For long patterns, more than about B<40>, the first 

=head2 Incompatibilities with C<String::Approx> I<v1.*>

If you have been using regular expression modifiers (B<i>, B<g>) you
lose.  Sorry about that.  The syntax simply is not compatible.  I had
to choose between having C<amatch()> match and C<asubstitute()>
substitute elsewhere than just in $_ I<and> the old messy way of
having an unlimited number of modifiers.  The first need won.

B<There is a backward compability mode>, though, if you do not want to
change your C<amatch()> and C<asubstitute()> calls.  You B<have> to
change your C<use> line, however:

	use String::Approx qw(amatch compat1);

That is, you must add the C<compat1> symbol if you want to be
compatible with the C<String::Approx> version 1 call syntax.

=head1 AUTHOR

Jarkko Hietaniemi C<E<lt>jhi@iki.fiE<gt>>

=head1 ACKNOWLEDGEMENTS

Nathan Torkington C<E<lt>gnat@frii.comE<gt>>

=cut

require 5;

use strict;
$^W = 1;

use vars qw($PACKAGE $VERSION $compat1
	    @ISA @EXPORT_OK
	    %P @aL @dL @Pl %Pp);

$PACKAGE = 'String::Approx';
$VERSION = '2.0';

$compat1 = 0;

require Exporter;

@ISA = qw(Exporter);

@EXPORT_OK = qw(amatch asubstitute);

# Catch the 'compat1' tag.

sub import {
    my $this = shift;
    my (@list, $sym);
    for $sym (@_) { $sym eq 'compat1' ? $compat1 = 1 : push(@list, $sym) }
    local $Exporter::ExportLevel = 1; 
    Exporter::import($this, @list);
}

sub _estimate {
    my ($l, $m) = @_;
    my $p = 5 ** ($m + 2);

    (3 * $p * $l ** 2 + (8 - $p) * $l - $p) / 8;
}

sub _compile {
    my ($pattern, $I, $D, $S) = @_;
#    print STDERR "_compile(@_)\n";
    my ($j, $p, %p, %q, $l, $k, $mxm);
    my @p = ();

    $mxm = $I;
    $mxm = $D if ($D > $mxm);
    $mxm = $S if ($S > $mxm);

    $l = length($pattern);

#    print "mxm = $mxm, l = $l\n";

    # the estimated length of the resulting pattern must be less than 32767

    my $est = _estimate($l, $mxm);

    if ($est > 32767) {
	my ($a, $b, $i);
	my $mp;

#	print "est = $est\n";

	# compute and cache the partitions per length

	unless (defined $Pl[$l][$mxm]) {
	    my ($np, $sp, $fp, $gp);

	    $np = int(log($l)) + 1;
	    $np = 2 if ($np < 2);
	    $sp = int($l / $np);
	    $fp = $l - $np * $sp;
	    $gp = $sp + $fp;
	    $mp = int($mxm / $np);
	    $mp = 1 if ($mp < 1);

#	    print "  np = $np, sp = $sp, fp = $fp, gp = $gp, mp = $mp\n";

	    $est = _estimate($gp, $mp);

#	    print "  est = $est\n";

	    while ($est > 32767) {
		# same rule here as above about the length of the pattern.
		$sp--;
		$np = int($l / $sp);
		$fp = $l - $np * $sp;
		$gp = $sp + $fp;
		$mp = int($mxm / $np);
		$mp = 1 if ($mp < 1);
#		print "    np = $np, sp = $sp, fp = $fp, gp = $gp, mp = $mp\n";
		$est = _estimate($gp, $mp);
#		print "  est = $est\n";
	    }

	    ($a, $b) = (0, $sp + $fp);
	    push(@{$Pl[$l][$mxm]}, [$a, $b]);
	    $a += $fp;
	    $b  = $sp;
	    for ($i = 1; $i < $np; $i++) {
		$a += $sp;
#		print "a = $a, b = $b\n";
		push(@{$Pl[$l][$mxm]}, [$a, $b]);
	    }
	}

	my $pi = $I ? int($mp / $I + 0.9) : 0;
	my $pd = $D ? int($mp / $D + 0.9) : 0;
	my $ps = $S ? int($mp / $S + 0.9) : 0;

	# compute and cache the pattern partitions

	unless (defined $Pp{$pattern}[$mxm]) {
	    for $i (@{$Pl[$l][$mxm]}) {
		push(@{$Pp{$pattern}[$mxm]},
		     [substr($pattern, $$i[0], $$i[1]), $pi, $pd, $ps]);
	    }
	}

	@p = @{$Pp{$pattern}[$mxm]};
	
    } else {
	push(@p, [$pattern, $I, $D, $S]);
    }

    my $i0 = 1;		# The start index for the insertions.

    my $pp;		# The current partition.

    for $pp (@p) {	# The partition loop.

	%p = ();

	my ($i, $d, $s) = @$pp[1..4];	# The per-partition I, D, S.

	$pp = $$pp[0];			# The partition string itself.

#	print STDERR "$pp $i $d $s\n";

	$p{$pp} = length($pp);

	while ($i or $d or $s) {

	    %q = ();
	
	    # the insertions

	    if ($i) {
		$i--;
		while (($p, $l) = each %p) {
		    my $lp1 = $l + 1;

		    for ($j = $i0; $j < $l; $j++) {
			$k = $p;
			substr($k, $j) = '.' . substr($k, $j);
			$q{$k} = $lp1;
		    }
		}

		# After the first partition we want one insertion
		# before every partition - at index 0.  $i0 was
		# initialized before the partition loop as 1 and
		# thus the first partition does not get the one insertion
		# in front of it.

		$i0 = 0;
	    }

	    # the deletions

	    if ($d) {
		$d--;
		while (($p, $l) = each %p) {
		    if ($l) {
			my $lm1 = $l - 1;

			for ($j = 0; $j < $l; $j++) {
			    $k = $p;
			    substr($k, $j) = substr($k, $j + 1);
			    $q{$k} = $lm1;
			}
		    }
		}
	    }

	    # the substitutions

	    if ($s) {
		$s--;
		while (($p, $l) = each %p) {
		    for ($j = 0; $j <= $l; $j++) {
			$k = $p;
			substr($k, $j, 1) = '.';
			$q{$k} = $l;
		    }
		}
	    }

	    while (($k, $l) = each %q) { $p{$k} = $l }
	}

	# the pattern

	push(@{$P{$pattern}[$I][$D][$S]},
	     join('|', sort { length($b) <=> length($a) } keys %p));

    }
}

sub _mods {
    my ($mods, $aI, $aD, $aS, $rI, $rD, $rS) = @_;
    my $remods = '';
    my $mod;

    for $mod (@$mods) {
	while ($mod ne '') {
	    if ($mod =~ s/^([IDS]?)(\d+)(%?)//) {
		if ($1 ne '') {
		    if ($3 ne '') {
			if    ($1 eq 'I') { $$rI = 0.01 * $2 }
			elsif ($1 eq 'D') { $$rD = 0.01 * $2 }
			else              { $$rS = 0.01 * $2 }
		    } else {
			if    ($1 eq 'I') { $$aI = $2 }
			elsif ($1 eq 'D') { $$aD = $2 }
			else              { $$aS = $2 }
		    }
		} else {
		    if ($3 ne '') {
			$$rI = $$rD = $$rS = 0.01 * $2;
		    } else {
			$$aI = $$aD = $$aS = $2;
		    }
		}
	    } elsif ($compat1 and $mod =~ s/^([igmsxo])//) {
		$remods .= $1;
	    } elsif ($mod =~ s/^([ig])//) {
		$remods .= $1;
	    } else {
		die $PACKAGE, ": unknown modifier '$mod'\n";
	    }
	}
    }

    $remods ne '' ? $remods : undef;
}

sub _mids {
    my ($len, $aI, $aD, $aS, $rI, $rD, $rS) = @_;

    my $r = int(0.1 * $len + 0.9);

    if    (    defined $rI) { $aI = int($rI * $len) }
    elsif (not defined $aI) { $aI = $r }

    if    (    defined $rD) { $aD = int($rD * $len) }
    elsif (not defined $aD) { $aD = $r }

    if    (    defined $rS) { $aS = int($rS * $len) }
    elsif (not defined $aS) { $aS = $r }

    ($aI, $aD, $aS);
}

sub amatch {
    my ($pattern, @list) = @_;
    my ($aI, $aD, $aS, $rI, $rD, $rS);

    my $len = length($pattern);

    my $remods;

    if ($compat1 or ref $list[0]) {
	my $mods;

	if ($compat1) {
	    $mods = [ @list ];
	    @list = ();
	} else {
	    $mods = shift(@list);
	}

	$remods = _mods($mods, \$aI, \$aD, \$aS, \$rI, \$rD, \$rS);

	($aI, $aD, $aS) = _mids($len, $aI, $aD, $aS, $rI, $rD, $rS);
    } else {
	$dL[$len] = int(0.1 * $len + 0.9) unless $dL[$len];
	$aI = $aD = $aS = $dL[$len];
    }

    die "amatch: \$_ is undefined: what are you matching against?\n"
	if (not defined $_ and @list == 0);

    _compile($pattern, $aI, $aD, $aS)
	unless ref $P{$pattern}[$aI][$aD][$aS];

    my @mpat = @{$P{$pattern}[$aI][$aD][$aS]};
    my $mpat;

    # match against the @list

    if (@mpat == 1) {

	# the simple non-partitioned match

	$mpat = $mpat[0];

	$mpat = '(?' . $remods . ')' . $mpat if defined $remods;

#	print STDERR "mpat = $mpat\n";

	if (@list) {

	    # match against the @list

	    my @m = eval { grep /$mpat/, @list };
	    die "amatch: too long pattern.\n"
		if ($@ =~ /regexp too big/);
	    return @m;
	}

	# match against the $_

	my $m;

	eval { $m = /$mpat/ };
	die "amatch: too long pattern.\n"
	    if ($@ =~ /regexp too big/);
	return ($_) if $m;

    } else {

	# the partitioned match

	if (@list) {

	    # match against the @list

	    my @pos = ();
	    my @bad = ();
	    my ($i, $bad);

	    for $mpat (@mpat) {
		if (@pos) {
		    for $i (@list) {
			pos($i) = shift(@pos);
		    }
		} else {
		    @pos = ();
		}
		for ($i = $bad = 0; $i < @list; $i++) {
		    unless ($bad[$i]) {
			if (eval { $list[$i] =~ /$mpat/g }) {
			    die "amatch: too long pattern.\n"
				if ($@ =~ /regexp too big/);
			    $pos[$i] = pos($list[$i]);
			} else {
			    $bad[$i] = $bad++;
			    return () if $bad == @list;
			}
		    }
		}
	    }
	    
	    my @got = ();

	    for ($i = 0; $i < @list; $i++) {
		push(@got) unless $bad[$i];
	    }

	    return @got;
	}
	
	# match against the $_

	while ($mpat = shift(@mpat)) {
	    return () unless eval { /$mpat/g };
	    die "amatch: too long pattern.\n"
		if ($@ =~ /regexp too big/);
	    return ($_) if (@mpat == 0);
	}
    }

    return ();
}

sub _subst {
    my ($sub, $pre, $match, $post) = @_;

    $sub =~ s/\$`/$pre/g;
    $sub =~ s/\$&/$match/g;
    $sub =~ s/\$'/$post/g;

    $sub;
}

sub asubstitute {
    my ($pattern, $sub, @list) = @_;
    my ($aI, $aD, $aS, $rI, $rD, $rS);

    my $len = length($pattern);

    my $remods;

    if ($compat1 or ref $list[0]) {
	my $mods;

	if ($compat1) {
	    $mods = [ @list ];
	    @list = ();
	} else {
	    $mods = shift(@list);
	}

	$remods = _mods($mods, \$aI, \$aD, \$aS, \$rI, \$rD, \$rS);

	($aI, $aD, $aS) = _mids($len, $aI, $aD, $aS, $rI, $rD, $rS);
    } else {
	$dL[$len] = $len < 11 ? 1 : int(0.1 * $len) unless $dL[$len];
	$aI = $aD = $aS = $dL[$len];
    }

    die "asubstitute: \$_ is undefined: what are you matching against?\n"
	if (not defined $_ and @list == 0);

    _compile($pattern, $aI, $aD, $aS)
	unless defined $P{$pattern}[$aI][$aD][$aS];

    my @spat = @{$P{$pattern}[$aI][$aD][$aS]};
    my $spat = $spat[0];
    
    $spat = '(?' . $remods . ')' . $spat if defined $remods;

    if (@list) {
	my (@m, $sm, $s);

	for $sm (@list) {
	    eval { $s = $sm =~ s/($spat)/_subst($sub, $`, $1, $')/e };
	    die "asubstitute: too long pattern, maximum pattern length 19.\n"
		if ($@ =~ /regexp too big/);
	    push(@m, $sm) if ($s);
	}

	return @m;
    }

    die "asubstitute: \$_ is undefined: what are you matching against?\n"
	unless defined $_;

    my $s;

    eval { $s = s/($spat)/_subst($sub, $`, $1, $')/e };
    die "asubstitute: too long pattern, maximum pattern length 19.\n"
	if ($@ =~ /regexp too big/);
    return ($_) if $s;

    ();
}

1;

# eof
