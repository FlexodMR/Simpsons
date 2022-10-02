@rem = '--*-Perl-*--
@echo off
perl -x -S %0 %1 %2 %3 %4 %5 %6 %7 %8 %9
goto endofperl
@rem ';
#!perl
#line 8
#perl -w
    eval 'exec perl -S $0 "$@"'
	if 0;

# $Id: lwp-mirror.PL,v 1.16 1996/05/19 11:22:34 aas Exp $
#
# Simple mirror utility using LWP

=head1 NAME

lwp-mirror - Simple mirror utility for WWW

=head1 SYNOPSIS

 lwp-mirror [-v] [-t timeout] <url> <local file>

=head1 DESCRIPTION

This program can be used to mirror a document from a WWW server.  The
document is only transfered if the remote copy is newer than the local
copy.  If the local copy is newer nothing happens.

Use the C<-v> option to print the version number of this program.

The timeout value specified with the C<-t> option.  The timeout value
is the time that the program will wait for response from the remote
server before it fails.  The default unit for the timeout value is
seconds.  You might append "m" or "h" to the timeout value to make it
minutes or hours, repectively.

Because this program is implemented using the LWP library, it only
supports the protocols that LWP supports.

=head1 SEE ALSO

L<lwp-request>, L<LWP>

=head1 AUTHOR

Gisle Aas <aas@a.sn.no>

=cut


use LWP::Simple;
use Getopt::Std;

$0 =~ s,.*/,,;  # use basename only

$VERSION = sprintf("%d.%02d", q$Revision: 1.16 $ =~ /(\d+)\.(\d+)/);

$opt_h = undef;  # print usage
$opt_v = undef;  # print version
$opt_t = undef;  # timeout

unless (getopts("hvt:")) {
    usage();
}

if ($opt_v) {
    require LWP;
    my $DISTNAME = 'libwww-perl-' . LWP::Version();
    die <<"EOT";
This is lwp-mirror version $VERSION ($DISTNAME)

Copyright 1995-1996, Gisle Aas.

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.
EOT
}

$url  = shift or usage();
$file = shift or usage();
usage() if $opt_h or @ARGV;

if (defined $opt_t) {
    $opt_t =~ /^(\d+)([smh])?/;
    die "$0: Illegal timeout value!\n" unless defined $1;
    $timeout = $1;
    $timeout *= 60   if ($2 eq "m");
    $timeout *= 3600 if ($2 eq "h");
    $LWP::Simple::ua->timeout($timeout);
}

$rc = mirror($url, $file);

if ($rc == 304) {
    print STDERR "$0: $file is up to date\n"
} elsif (!is_success($rc)) {
    print STDERR "$0: $rc ", status_message($rc), "   ($url)\n";
    exit 1;
}
exit;


sub usage
{
    die <<"EOT";
Usage: $0 [-options] <url> <file>
    -v           print version number of program
    -t <timeout> Set timeout value
EOT
}
__END__
:endofperl
