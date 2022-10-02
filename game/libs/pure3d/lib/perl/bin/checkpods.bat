@rem = '--*-Perl-*--
@echo off
perl -x -S %0 %1 %2 %3 %4 %5 %6 %7 %8 %9
goto endofperl
@rem ';
#!perl
#line 8
#perl
    eval 'exec c:\perl\bin\perl.exe -S $0 ${1+"$@"}'
	if $running_under_some_shell;
# From roderick@gate.netThu Sep  5 17:19:30 1996
# Date: Thu, 05 Sep 1996 00:11:22 -0400
# From: Roderick Schertler <roderick@gate.net>
# To: perl5-porters@africa.nicoh.com
# Subject: POD lines with only spaces
# 
# There are some places in the documentation where a POD directive is
# ignored because the line before it contains whitespace (and so the
# directive doesn't start a paragraph).  This patch adds a way to check
# for these to the pod Makefile (though it isn't made part of the build
# process, which would be a good idea), and fixes those places where the
# problem currently exists.
#
#  Version 1.00  Original.
#  Version 1.01  Andy Dougherty <doughera@lafcol.lafayette.edu>
#    Trivial modifications to output format for easier auto-parsing
#    Broke it out as a separate function to avoid nasty
#	Make/Shell/Perl quoting problems, and also to make it easier
#	to grow.  Someone will probably want to rewrite in terms of
#	some sort of Pod::Checker module.  Or something.  Consider this
#	a placeholder for the future.
$exit = $last_blank = 0;
while (<>) {
    chop;
    if (/^(=\S+)/ && $last_blank) {
	printf "%s: line %5d, Non-empty line preceeding directive %s\n",
		$ARGV, $., $1;
	$exit = 1;
    }
    $last_blank = /^\s+$/;
    if (eof) {
	close(ARGV);
	$last_blank = 0;
    }
}
exit $exit
__END__
:endofperl
