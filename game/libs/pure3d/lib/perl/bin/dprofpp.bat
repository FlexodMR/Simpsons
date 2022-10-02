@rem = '--*-Perl-*--
@echo off
perl -S %0.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
goto endofperl
@rem ';
#line 7
#perl
    eval 'exec perl -S $0 "$@"'
	if 0;

require 5.003;

my $VERSION = 19970614;

=head1 NAME

dprofpp - display perl profile data

=head1 SYNOPSIS

dprofpp [B<-a>|B<-z>|B<-l>|B<-v>|B<-U>] [B<-s>|B<-r>|B<-u>] [B<-q>] [B<-F>] [B<-I|-E>] [B<-O cnt>] [profile]

dprofpp B<-T> [B<-F>] [profile]

dprofpp B<-t> [B<-F>] [profile]

dprofpp B<-p script> [B<-Q>] [other opts]

dprofpp B<-V> [profile]

=head1 DESCRIPTION

The I<dprofpp> command interprets profile data produced by a profiler, such
as the Devel::DProf profiler.  Dprofpp will read the file F<tmon.out> and
will display the 15 subroutines which are using the most time.  By default
the times for each subroutine are given exclusive of the times of their
child subroutines.

To profile a Perl script run the perl interpreter with the B<-d> switch.  So
to profile script F<test.pl> with Devel::DProf the following command should
be used.

	$ perl5 -d:DProf test.pl

Then run dprofpp to analyze the profile.

	$ dprofpp -u
	Total Elapsed Time =    1.67 Seconds
		 User Time =    0.61 Seconds
	Exclusive Times
	%Time Seconds     #Calls sec/call Name
	 52.4   0.320          2   0.1600 main::foo
	 45.9   0.280        200   0.0014 main::bar
	 0.00   0.000          1   0.0000 DynaLoader::import
	 0.00   0.000          1   0.0000 main::baz

The dprofpp tool can also run the profiler before analyzing the profile
data.  The above two commands can be executed with one dprofpp command.

	$ dprofpp -u -p test.pl

Consult L<Devel::DProf/"PROFILE FORMAT"> for a description of the raw profile.

=head1 OPTIONS

=over 5

=item B<-a>

Sort alphabetically by subroutine names.

=item B<-E>

(default)  Display all subroutine times exclusive of child subroutine times.

=item B<-F>

Force the generation of fake exit timestamps if dprofpp reports that the
profile is garbled.  This is only useful if dprofpp determines that the
profile is garbled due to missing exit timestamps.  You're on your own if
you do this.  Consult the BUGS section.

=item B<-I>

Display all subroutine times inclusive of child subroutine times.

=item B<-l>

Sort by number of calls to the subroutines.  This may help identify
candidates for inlining.

=item B<-O cnt>

Show only I<cnt> subroutines.  The default is 15.

=item B<-p script>

Tells dprofpp that it should profile the given script and then interpret its
profile data.  See B<-Q>.

=item B<-Q>

Used with B<-p> to tell dprofpp to quit after profiling the script, without
interpreting the data.

=item B<-q>

Do not display column headers.

=item B<-r>

Display elapsed real times rather than user+system times.

=item B<-s>

Display system times rather than user+system times.

=item B<-T>

Display subroutine call tree to stdout.  Subroutine statistics are
not displayed.

=item B<-t>

Display subroutine call tree to stdout.  Subroutine statistics are not
displayed.  When a function is called multiple consecutive times at the same
calling level then it is displayed once with a repeat count.

=item B<-U>

Do not sort.  Display in the order found in the raw profile.

=item B<-u>

Display user times rather than user+system times.

=item B<-V>

Print dprofpp's version number and exit.  If a raw profile is found then its
XS_VERSION variable will be displayed, too.

=item B<-v>

Sort by average time spent in subroutines during each call.  This may help
identify candidates for inlining. 

=item B<-z>

(default) Sort by amount of user+system time used.  The first few lines
should show you which subroutines are using the most time.

=back

=head1 ENVIRONMENT

The environment variable B<DPROFPP_OPTS> can be set to a string containing
options for dprofpp.  You might use this if you prefer B<-I> over B<-E> or
if you want B<-F> on all the time.

This was added fairly lazily, so there are some undesirable side effects.
Options on the commandline should override options in DPROFPP_OPTS--but
don't count on that in this version.

=head1 BUGS

Applications which call C<die> from within an eval for exception handling
(catch/throw) or for setjmp/longjmp may not generate a readable profile.
See the B<-F> option.

Applications which call C<exit> from within a subroutine will leave an
incomplete profile.  See the B<-F> option.

Any bugs in Devel::DProf, or any profiler generating the profile data, could
be visible here.  See L<Devel::DProf/BUGS>.

Mail bug reports and feature requests to the perl5-porters mailing list at
F<E<lt>perl5-porters@africa.nicoh.comE<gt>>.  Bug reports should include the
output of the B<-V> option.

=head1 FILES

	dprofpp		- profile processor
	tmon.out	- raw profile

=head1 SEE ALSO

L<perl>, L<Devel::DProf>, times(2)

=cut

use Getopt::Std 'getopts';
use Config '%Config';

Setup: {
	my $options = 'O:lzavuTtqrsUFEIp:QV';

	$Monfile = 'tmon.out';
	if( exists $ENV{DPROFPP_OPTS} ){
		my @tmpargv = @ARGV;
		@ARGV = split( ' ', $ENV{DPROFPP_OPTS} );
		getopts( $options );
		if( @ARGV ){
			# there was a filename.
			$Monfile = shift;
		}
		@ARGV = @tmpargv;
	}

	getopts( $options );
	if( @ARGV ){
		# there was a filename, it overrides any earlier name.
		$Monfile = shift;
	}

# -O cnt	Specifies maximum number of subroutines to display.
# -a		Sort by alphabetic name of subroutines.
# -z		Sort by user+system time spent in subroutines. (default)
# -l		Sort by number of calls to subroutines.
# -v		Sort by average amount of time spent in subroutines.
# -T		Show call tree.
# -t		Show call tree, compressed.
# -q		Do not print column headers.
# -u		Use user time rather than user+system time.
# -s		Use system time rather than user+system time.
# -r		Use real elapsed time rather than user+system time.
# -U		Do not sort subroutines.
# -E		Sub times are reported exclusive of child times. (default)
# -I		Sub times are reported inclusive of child times.
# -V		Print dprofpp's version.
# -p script	Specifies name of script to be profiled.
# -Q		Used with -p to indicate the dprofpp should quit after
#		profiling the script, without interpreting the data.

	if( defined $opt_V ){
		my $fh = 'main::fh';
		print "$0 version: $VERSION\n";
		open( $fh, "<$Monfile" ) && do {
			local $XS_VERSION = 'early';
			header($fh);
			close( $fh );
			print "XS_VERSION: $XS_VERSION\n";
		};
		exit(0);
	}
	$cnt = $opt_O || 15;
	$sort = 'by_time';
	$sort = 'by_calls' if defined $opt_l;
	$sort = 'by_alpha' if defined $opt_a;
	$sort = 'by_avgcpu' if defined $opt_v;
	$incl_excl = 'Exclusive';
	$incl_excl = 'Inclusive' if defined $opt_I;
	$whichtime = 'User+System';
	$whichtime = 'System' if defined $opt_s;
	$whichtime = 'Real' if defined $opt_r;
	$whichtime = 'User' if defined $opt_u;

	if( defined $opt_p ){
		my $prof = 'DProf';
		my $startperl = $Config{'startperl'};

		$startperl =~ s/^#!//; # remove shebang
		run_profiler( $opt_p, $prof, $startperl );
		$Monfile = 'tmon.out';  # because that's where it is
		exit(0) if defined $opt_Q;
	}
	elsif( defined $opt_Q ){
		die "-Q is meaningful only when used with -p\n";
	}
}

Main: {
	my $monout = $Monfile;
	my $fh = 'main::fh';
	local $names = {};
	local $times = {};  # times in hz
	local $calls = {};
	local $persecs = {}; # times in seconds
	local $idkeys = [];
	local $runtime; # runtime in seconds
	my @a = ();
	my $a;
	local $rrun_utime = 0;	# user time in hz
	local $rrun_stime = 0;	# system time in hz
	local $rrun_rtime = 0;	# elapsed run time in hz
	local $rrun_ustime = 0;	# user+system time in hz
	local $hz = 0;

	open( $fh, "<$monout" ) || die "Unable to open $monout\n";

	header($fh);

	$rrun_ustime = $rrun_utime + $rrun_stime;

	settime( \$runtime, $hz );

	$~ = 'STAT';
	if( ! $opt_q ){
		$^ = 'CSTAT_top';
	}

	parsestack( $fh, $names, $calls, $times, $idkeys );

	exit(0) if $opt_T || $opt_t;

	if( $opt_v ){
		percalc( $calls, $times, $persecs, $idkeys );
	}
	if( ! $opt_U ){
		@a = sort $sort @$idkeys;
		$a = \@a;
	}
	else {
		$a = $idkeys;
	}
	display( $runtime, $hz, $names, $calls, $times, $cnt, $a );
}


# Sets $runtime to user, system, real, or user+system time.  The
# result is given in seconds.
#
sub settime {
	my( $runtime, $hz ) = @_;

	if( $opt_r ){
		$$runtime = $rrun_rtime/$hz;
	}
	elsif( $opt_s ){
		$$runtime = $rrun_stime/$hz;
	}
	elsif( $opt_u ){
		$$runtime = $rrun_utime/$hz;
	}
	else{
		$$runtime = $rrun_ustime/$hz;
	}
}


# Report the times in seconds.
sub display {
	my( $runtime, $hz, $names, $calls , $times, $cnt, $idkeys ) = @_;
	my( $x, $key, $s );
	#format: $ncalls, $name, $secs, $percall, $pcnt

	for( $x = 0; $x < @$idkeys; ++$x ){
		$key = $idkeys->[$x];
		$ncalls = $calls->{$key};
		$name = $names->{$key};
		$s = $times->{$key}/$hz;
		$secs = sprintf("%.3f", $s );
		$percall = sprintf("%.4f", $s/$ncalls );
		$pcnt = sprintf("%.2f",
				$runtime? (($secs / $runtime) * 100.0): 0 );
		write;
		$pcnt = $secs = $ncalls = $percall = "";
		write while( length $name );
		last unless --$cnt;
	}
}


sub parsestack {
	my( $fh, $names, $calls, $times, $idkeys ) = @_;
	my( $dir, $name );
	my( $t, $syst, $realt, $usert );
	my( $x, $z, $c );
	my @stack = ();
	my @tstack = ();
	my $tab = 3;
	my $in = 0;

	# remember last call depth and function name
	my $l_in = $in;
	my $l_name = '';
	my $repcnt = 0;
	my $repstr = '';

	while(<$fh>){
		next if /^#/;
		last if /^PART/;
		chop;
		($dir, $usert, $syst, $realt, $name) = split;

		if   ( $opt_u )	{	$t = $usert		}
		elsif( $opt_s )	{	$t = $syst		}
		elsif( $opt_r )	{	$t = $realt		}
		else		{	$t = $usert + $syst	}

		if( $dir eq '+' ){
			if( $opt_T ){
				print ' ' x $in, "$name\n";
				$in += $tab;
			}
			elsif( $opt_t ){
				# suppress output on same function if the
				# same calling level is called.
				if ($l_in == $in and $l_name eq $name) {
					$repcnt++;
				} else {
					$repstr = ' ('.++$repcnt.'x)'
						 if $repcnt;
					print ' ' x $l_in, "$l_name$repstr\n"
						if $l_name ne '';
					$repstr = '';
					$repcnt = 0;
					$l_in = $in;
					$l_name = $name;
				}
				$in += $tab;
			}
			if( ! defined $names->{$name} ){
				$names->{$name} = $name;
				$times->{$name} = 0;
				push( @$idkeys, $name );
			}
			$calls->{$name}++;
			$x = [ $name, $t ];
			push( @stack, $x );

			# my children will put their time here
			push( @tstack, 0 );

			next;
		}
		if( $dir eq '-' ){
			exitstamp( \@stack, \@tstack, $t, $times,
				  $name, \$in, $tab );
			next;
		}
		die "Bad profile: $_";
	}
	if( $opt_t ){
		$repstr = ' ('.++$repcnt.'x)' if $repcnt;
		print ' ' x $l_in, "$l_name$repstr\n";
	}

	if( @stack ){
		if( ! $opt_F ){
			warn "Garbled profile is missing some exit time stamps:\n";
			foreach $x (@stack) {
				print $x->[0],"\n";
			}
			die "Try rerunning dprofpp with -F.\n";
			# I don't want -F to be default behavior--yet
			#  9/18/95 dmr
		}
		else{
			warn( "Faking " . scalar( @stack ) . " exit timestamp(s).\n");
			foreach $x ( reverse @stack ){
				$name = $x->[0];
				exitstamp( \@stack, \@tstack, $t, $times,
					  $name, \$in, $tab );
			}
		}
	}
}

sub exitstamp {
	my( $stack, $tstack, $t, $times, $name, $in, $tab ) = @_;
	my( $x, $c, $z );

	$x = pop( @$stack );
	if( ! defined $x ){
		die "Garbled profile, missing an enter time stamp";
	}
	if( $x->[0] ne $name ){
		die "Garbled profile, unexpected exit time stamp";
	}
	if( $opt_T || $opt_t ){
		$$in -= $tab;
	}
	# collect childtime
	$c = pop( @$tstack );
	# total time this func has been active
	$z = $t - $x->[1];
	# If collecting inclusive times...
	if( defined $opt_I ){
		# do not subtract my child time
		$times->{$name} += $z;
	}
	# else collecting exclusive times...
	else{
		# less time spent in child funcs.
		#   prepare to accept that the children may account
		#   for all of my time.
		$times->{$name} += ($z > $c)? $z - $c: $c - $z;
	}

	# pass my time to my parent
	if( @$tstack ){
		$c = pop( @$tstack );
		push( @$tstack, $c + $z );
	}
}


sub header {
	my $fh = shift;
	chop($_ = <$fh>);
	if( ! /^#fOrTyTwO$/ ){
		die "Not a perl profile";
	}
	while(<$fh>){
		next if /^#/;
		last if /^PART/;
		eval;
	}
}


# Report avg time-per-function in seconds
sub percalc {
	my( $calls, $times, $persecs, $idkeys ) = @_;
	my( $x, $t, $n, $key );

	for( $x = 0; $x < @$idkeys; ++$x ){
		$key = $idkeys->[$x];
		$n = $calls->{$key};
		$t = $times->{$key} / $hz;
		$persecs->{$key} = $t ? $t / $n : 0;
	}
}


# Runs the given script with the given profiler and the given perl.
sub run_profiler {
	my $script = shift;
	my $profiler = shift;
	my $startperl = shift;

	system $startperl, "-d:$profiler", $script;
	if( $? / 256 > 0 ){
		die "Failed: $startperl -d:$profiler $script: $!";
	}
}


sub by_time { $times->{$b} <=> $times->{$a} }
sub by_calls { $calls->{$b} <=> $calls->{$a} }
sub by_alpha { $names->{$a} cmp $names->{$b} }
sub by_avgcpu { $persecs->{$b} <=> $persecs->{$a} }


format CSTAT_top =
Total Elapsed Time = @>>>>>> Seconds
($rrun_rtime / $hz)
  @>>>>>>>>>> Time = @>>>>>> Seconds
$whichtime, $runtime
@<<<<<<<< Times
$incl_excl
%Time Seconds     #Calls sec/call Name
.

format STAT =
 ^>>>   ^>>>> ^>>>>>>>>>   ^>>>>> ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
$pcnt, $secs, $ncalls, $percall, $name
.

__END__
:endofperl
