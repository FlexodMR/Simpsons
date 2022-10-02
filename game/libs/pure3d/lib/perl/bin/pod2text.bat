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

use Pod::Text;

if(@ARGV) {
	pod2text($ARGV[0]);
} else {
	pod2text("<&STDIN");
}

__END__
:endofperl
