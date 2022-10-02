package DBI;

# $Id: W32ODBC.pm,v 1.3 1997/06/11 23:03:50 timbo Exp $
#
# Copyright (c) 1997, Tim Bunce
#
# You may distribute under the terms of either the GNU General Public
# License or the Artistic License, as specified in the Perl README file.

=head1 NAME

DBI::W32ODBC - An experimental DBI emulation layer for Win32::ODBC

=head1 SYNOPSIS

  use DBI::W32ODBC;

  # apart from the line above everything is just the same as with
  # the real DBI when using a basic driver with few features.

  $dbh = DBI->connect(...);

  $rc  = $dbh->do($statement);

  $sth = $dbh->prepare($statement);

  $rc = $sth->execute;

  @row_ary = $sth->fetchrow;
  $row_ref = $sth->fetch;

  $rc = $sth->finish;

  $rv = $sth->rows;

  $rc = $dbh->disconnect;

  $sql = $dbh->quote($string);

  $rv  = $h->err;
  $str = $h->errstr;

=head1 DESCRIPTION

THIS IS A VERY EXPERIMENTAL PURE PERL DBI EMULATION LAYER FOR Win32::ODBC

It was developed for use with an Access database and the quote() method
is very likely to need reworking.

If you can improve this code I'd be interested in hearing out it. If
you are having trouble using it please respect the fact that it's very
experimental.

=cut

$VERSION = $VERSION = '0.01';
my $Revision = substr(q$Revision: 1.3 $, 10);

sub DBI::W32ODBC::import { }		# must trick here since we're called DBI/W32ODBC.pm


use Carp;

use Win32::ODBC;

@ISA = qw(Win32::ODBC);

use strict;

$DBI::dbi_debug = $ENV{PERL_DBI_DEBUG} || 0;
carp "Loaded DBI.pm (debug $DBI::dbi_debug)" if $DBI::dbi_debug;



sub connect {
    my ($class, $dbname, $dbuser, $dbpasswd, $module, $attr) = @_;
    $dbname .= ";UID=$dbuser"   if $dbuser;
    $dbname .= ";PWD=$dbpasswd" if $dbpasswd;
    my $h = new Win32::ODBC $dbname;
    warn "Error connecting to $dbname: ".Win32::ODBC::Error()."\n" unless $h;
    bless $h, $class if $h;	# rebless into our class
    $h;
}


sub quote {
    my ($h, $string) = @_;
    # don't know if this is correct but seems to work for Access
    $string =~ s/'/''/g;
    $string =~ s/\r/' & chr\$(13) & '/g;
    $string =~ s/\n/' & chr\$(10) & '/g;
    "'$string'";
}

sub do {
    my($h, $statement, $attribs, @params) = @_;
    Carp::carp "\$h->do() attribs unused\n" if $attribs;
    $h = $h->prepare($statement) or return undef;
    $h->execute(@params) or return undef;
    my $rows = $h->rows;
    ($rows == 0) ? "0E0" : $rows;
}

# ---

sub prepare {
    my ($h, $sql) = @_;
    $h->{'__prepare'} = $sql;
	$h->{NAME} = [];
	$h->{NUM_OF_FIELDS} = -1;
    return $h;
}

sub execute {
    my ($h) = @_;
    my $rc = $h->Sql($h->{'__prepare'});
    return undef if $rc;
    my @fields = $h->FieldNames;
    $h->{NAME} = \@fields;
    $h->{NUM_OF_FIELDS} = scalar @fields;
    $h;	# return dbh as pseudo sth
}

sub fetchrow {
    my $h = shift;
    return () unless $h->FetchRow();
    my $fields_r = $h->{NAME};
    $h->Data(@$fields_r);
}

sub fetch {
    my @row = shift->fetchrow;
    return undef unless @row;
    return \@row;
}

sub rows {
    shift->RowCount;
}

sub finish {
    # shift->Close;
}

# ---

sub commit {
	undef;
}
sub rollback {
	undef;
}

sub disconnect {
    shift->Close
}

sub err {
    (shift->Error)[0];
}
sub errstr {
    scalar( shift->Error );
}

# ---

1;
