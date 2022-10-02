require 5.003;

=head1 NAME

Devel::DProf - a Perl code profiler

=head1 SYNOPSIS

	perl5 -d:DProf test.pl

=head1 DESCRIPTION

The Devel::DProf package is a Perl code profiler.  This will collect
information on the execution time of a Perl script and of the subs in that
script.  This information can be used to determine which subroutines are
using the most time and which subroutines are being called most often.  This
information can also be used to create an execution graph of the script,
showing subroutine relationships.

To profile a Perl script run the perl interpreter with the B<-d> debugging
switch.  The profiler uses the debugging hooks.  So to profile script
F<test.pl> the following command should be used:

	perl5 -d:DProf test.pl

When the script terminates the profiler will dump the profile information to
a file called F<tmon.out>.  A tool like I<dprofpp> can be used to interpret
the information which is in that profile.  The following command will print
the top 15 subroutines which used the most time:

	dprofpp

To print an execution graph of the subroutines in the script use the
following command:

	dprofpp -T

Consult L<dprofpp> for other options.

=head1 PROFILE FORMAT

The profile is a text file which looks like this:

	#fOrTyTwO
	$hz=100;
	$XS_VERSION='DProf 19970606';
	# All values are given in HZ
	$rrun_utime=2; $rrun_stime=0; $rrun_rtime=7
	PART2
	+ 26 28 566822884 DynaLoader::import
	- 26 28 566822884 DynaLoader::import
	+ 27 28 566822885 main::bar
	- 27 28 566822886 main::bar
	+ 27 28 566822886 main::baz
	+ 27 28 566822887 main::bar
	- 27 28 566822888 main::bar
	[....]

The first line is the magic number.  The second line is the hertz value, or
clock ticks, of the machine where the profile was collected.  The third line
is the name and version identifier of the tool which created the profile.
The fourth line is a comment.  The fifth line contains three variables
holding the user time, system time, and realtime of the process while it was
being profiled.  The sixth line indicates the beginning of the sub
entry/exit profile section.

The columns in B<PART2> are:

	sub entry(+)/exit(-) mark
	app's user time at sub entry/exit mark, in ticks
	app's system time at sub entry/exit mark, in ticks
	app's realtime at sub entry/exit mark, in ticks
	fully-qualified sub name, when possible

=head1 AUTOLOAD

When Devel::DProf finds a call to an C<&AUTOLOAD> subroutine it looks at the
C<$AUTOLOAD> variable to find the real name of the sub being called.  See
L<perlsub/"Autoloading">.

=head1 BUGS

XSUBs, builtin functions, and destructors cannot be measured by Devel::DProf.

Mail bug reports and feature requests to the perl5-porters mailing list at
F<E<lt>perl5-porters@africa.nicoh.comE<gt>>.

=head1 SEE ALSO

L<perl>, L<dprofpp>, times(2)

=cut

package DB;

#
# As of perl5.003_20, &DB::sub stub is not needed (some versions
# even had problems if stub was redefined with XS version).
#

# disable DB single-stepping
BEGIN { $single = 0; }

# This sub is needed during startup.
sub DB { 
#	print "nonXS DBDB\n";
}


require DynaLoader;
@Devel::DProf::ISA = 'DynaLoader';
$Devel::DProf::VERSION = '19970614'; # this version not authorized by
				     # Dean Roehrich. See "Changes" file.

bootstrap Devel::DProf $Devel::DProf::VERSION;

1;
