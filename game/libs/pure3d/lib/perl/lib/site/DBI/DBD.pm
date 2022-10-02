# $Id: DBD.pm,v 1.5 1997/07/22 23:17:50 timbo Exp $
#
# Copyright (c) 1997 Jonathan Leffler and Tim Bunce
#
# You may distribute under the terms of either the GNU General Public
# License or the Artistic License, as specified in the Perl README file.

# This module serves two purposes:
#
#	Firstly it holds documentation to assist people writing drivers.
#	Secondly it holds perl code that's used in the driver configuring
#	and building process (typically called by the drivers Makefile.PL)

=head1 NAME

DBI::DBD - DBD Driver Writer's Guide (draft)

=head1 SYNOPSIS

    perldoc DBI::FAQ

=head1 VERSION and VOLATILITY

	$Revision: 1.5 $
	$Date: 1997/07/22 23:17:50 $

This document is very much a minimal draft which will need to be revised
frequently (and extensively).

The changes will occur both because the DBI specification is changing
and hence the requirements on DBD drivers change, and because feedback
from people reading this document will suggest improvements to it.

Please read the DBI documentation first and fully, including the DBI FAQ.

=head1 DESCRIPTION

This document is primarily intended to help people writing new
database drivers for the Perl Database Interface (Perl DBI).
It may also help others interested in discovering why the internals of
a DBD driver are written the way they are.

This is a guide.  Few (if any) of the statements in it are completely
authoritative under all possible circumstances.  This means you will
need to use judgement in applying the guidelines in this document.

=head1 REGISTERING A NEW DRIVER

Before writing a new driver, it is in your interests to find out
whether there already is a driver for your database.
If there is such a driver, it should be easier to make use of it than
to write your own.

	[...More info TBS...]

=head2 Locating drivers

The primary web-site for locating Perl software is
L<http://www.perl.com/CPAN>.
You should look under the various modules listings for the software
you are after.
Two of the main pages you should look at are:

  http://www.perl.org/CPAN/modules/by-category/07_Database_Interfaces/DBI

  http://www.perl.org/CPAN/modules/by-category/07_Database_Interfaces/DBD

The primary web-site for locating DBI software and information is
http://www.hermetica.com/technologia/DBI.

=head2 DBI Mailing Lists

There are 2 main and one auxilliary mailing lists for people working
with DBI.  The primary lists are dbi-users@fugue.com for general users
of DBI and DBD drivers, and dbi-dev@fugue.com mainly for DBD driver
writers (don't join the dbi-dev list unless you have a good reason).
The auxilliary list is dbi-announce@fugue.com for announcing new
releases of DBI or DBD drivers.

You can join these lists by accessing the web-site
L<http://www.fugue.com/dbi>.
If you have not got web access, you may send a request to
dbi-request@fugue.com, but this will be handled manually when the
people in charge find the time to deal with it.  Use the web-site.

You should also consider monitoring the comp.lang.perl newsgroups.

=head2 Registering a new driver

Before going through any official registration process, you will need
to establish that there is no driver already in the works.
You'll do that by asking the DBI mailing lists whether there is such a
driver available, or whether anybody is working on one.

	[...More info TBS...]

=head1 CREATING A NEW DRIVER

Creating a new driver from scratch will always be a daunting task.
You can and should greatly simplify your task by taking a good
reference driver implementation and modifying that to match the
database product for which you are writing a driver.

The de facto reference driver is the one for DBD::Oracle, written by
Tim Bunce who is also the author of the DBI package. The DBD::Oracle
module is a good example of a driver implemented around a C-level API.

The DBD::ODBC module is also a good reference for a driver implemented
around an SQL CLI or ODBC based C-level API.

The DBD::Informix driver is a good reference for a driver implemented
using 'embedded SQL'.

	[...More info TBS...]

=head1 REQUIREMENTS ON A DRIVER

T.B.S.

=head1 CODE TO BE WRITTEN

A minimal driver will contain 7 files plus some tests.
Assuming that your driver is called DBD::Driver, these files are:

=over 4

=item Driver.pm

=item Driver.xs

=item Driver.h

=item dbdimp.h

=item dbdimp.c

=item Makefile.PL

=item README

=item MANIFEST

=back

=head2 Driver.pm

The Driver.pm file defines the Perl module DBD::Driver for your driver.
It will define a package DBD::Driver along with some version
information, some variable definitions, and a function driver() which
will have a more or less standard structure.

It will also define a package DBD::Driver::dr (which will define the
driver() and connect() methods), and a package DBD::Driver::db (which
will define a function prepare() etc), and a package DBD::Driver::st.

Each of these classes may define a function errstr(), which will
simply relay its arguments to DBD::Driver::errstr() and implicitly
return the value from DBD::Driver::errstr().  The DBD::Driver::errstr()
function is actually defined in Driver.xs.

The Driver.pm file will also contain the documentation specific to
DBD::Driver in the format used by perldoc.

=head2 Driver.xs

Driver.xs should look like this:

  #include "Driver.h"

  DBISTATE_DECLARE;

  MODULE = DBD::Driver    PACKAGE = DBD::Driver

  INCLUDE: Driver.xsi

  MODULE = DBD::Driver    PACKAGE = DBD::Driver::st


=head2 Driver.h

Driver.h should look like this:

  #define NEED_DBIXS_VERSION 9

  #include <DBIXS.h>      /* installed by the DBI module  */

  #include "dbdimp.h"

  #include <dbd_xsh.h>     /* installed by the DBI module  */


=head2 Implementation header dbdimp.h

T.B.S

=head2 Implementation source dbdimp.c

T.B.S

=head2 Makefile.PL

Driver.xs should look like this:

  use 5.004;
  use ExtUtils::MakeMaker;
  use Config;
  use strict;
  use DBI 0.86;
  use DBI::DBD;

  my %opts = (
    NAME => 'DBD::Driver',
    VERSION_FROM => 'Driver.pm',
    clean => { FILES=> 'Driver.xsi' },
    dist  => { DIST_DEFAULT=> 'clean distcheck disttest ci tardist',
                PREOP => '$(MAKE) -f Makefile.old distdir' },

Add other options here as needed. See ExtUtils::MakeMaker for more info.

  );

  WriteMakefile(%opts);

  exit(0);

  sub MY::postamble {
    return dbd_postamble();
  }


=head2 README file

The README file should describe the pre-requisites for the build
process, the actual build process, and how to report errors.
Note that users will find ways of breaking the driver build and test
process which you would never dream possible.
Therefore, you need to write this document defensively and precisely.
Also, it is in your interests to ensure that your tests work as widely
as possible.
As always, use the README from one of the established drivers as a
basis for your own.

	[...More info TBS...]

=head2 MANIFEST

The MANIFEST will be used by the Makefile'd dist target to build the
distribution tar file that is uploaded to CPAN.

=head2 Tests

The test process should conform as closely as possibly to the Perl
standard test harness.

In particular, most of the tests should be run in the t sub-directory,
and should simply produce an 'ok' when run under 'make test'.
For details on how this is done, see the Camel book and the section in
Chapter 7, "The Standard Perl Library" on Test::Harness.

The tests may need to adapt to the type of database which is being
used for testing, and to the privileges of the user testing the
driver.
The DBD::Informix test code has to adapt in a number of places to the
type of database to which it is connected as different Informix
databases have different capabilities.

	[...More info TBS...]

=head1 METHODS WHICH DO NOT NEED TO BE WRITTEN

The DBI code implements the majority of the methods which are
accessed using the notation DBI->function(), the only exceptions being
DBI->connect() and DBI->data_sources() which require support from the
driver.

=over 4

=item DBI->available_drivers()

=item DBI->neat_list()

=item DBI->neat()

=item DBI->dump_results()

=item DBI->func()

=back

The DBI code implements the following documented driver, database and
statement functions which do not need to be written by the DBD driver
writer.

=over 4

=item $dbh->do()

The default implementation of this function prepares, executes and
destroys the statement.  This should be replaced if there is a better
way to implement this, such as EXECUTE IMMEDIATE.

=item $h->err()

See the comments on $h->errstr() below.

=item $h->state()

See the comments on $h->errstr() below.

=item $h->trace()

The DBD driver does not need to worry about this routine at all.

=item $h->{ChopBlanks}

This attribute needs to be honured during fetch operations, but does
not need to be handled by the attribute handling code.

=item $h->{RaiseError}

The DBD driver does not need to worry about this attribute at all.

=item $h->{PrintError}

The DBD driver does not need to worry about this attribute at all.

=item $sth->bind_col()

Assuming the driver uses the DBIS->get_fbav() function (see below),
the driver does not need to do anything about this routine.

=item $sth->bind_columns()

Regardless of whether the driver uses DBIS->get_fbav(), the driver
does not need to do anything about this routine as it simply
iteratively calls $sth->bind_col().

=back

The DBI code implements a default implementation of the following
functions which do not need to be written by the DBD driver writer
unless the default implementation is incorrect for the Driver.

=over 4

=item $dbh->quote()

This should only be written if the database does not accept the ANSI
SQL standard for quoting strings, with the string enclosed in single
quotes and any embedded single quotes replaced by two consecutive
single quotes.

=item $h->errstr()

As documented previously, this routine should currently be written for
each sub-package (dr, db, st).
It is not clear why the $h->state and $h->err routines are not treated
symmetrically.

=item $dbh->ping()

This should only be written if there is a simple, efficient way to determine
whether the connection to the database is still alive.
Many drivers will accept the default, do-nothing implementation.

=back

=head1 OTHER MISCELLANEOUS INFORMATION

Many details still T.B.S.

=head2 The imp_xyz_t types

T.B.S.

=head2 Using DBIc_IMPSET_on

The driver code which initializes a handle should use DBIc_IMPSET_on()
as soon as its state is such that the cleanup code must be called.
When this happens is determined by your driver code.

Failure to call this can lead to corruption of data structures.
For example, DBD::Informix maintains a linked list of database handles
in the driver, and within each handle, a linked list of statements.
Once a statement is added to the linked list, it is crucial that it is
cleaned up (removed from the list).
When DBIc_IMPSET_on() was being called too late, it was able to cause
all sorts of problems.

=head2 Using DBIc_is(), DBIc_on() and DBIc_off()

Once upon a long time ago, the only way of handling the attributes
such as DBIcf_IMPSET, DBIcf_WARN, DBIcf_COMPAT etc was through macros
such as:

    DBIc_IMPSET     DBIc_IMPSET_on      DBIc_IMPSET_off
    DBIc_WARN       DBIc_WARN_on        DBIc_WARN_off
    DBIc_COMPAT     DBIc_COMPAT_on      DBIc_COMPAT_off

Each of these took an imp_xyz pointer as an argument.

Since then, new attributes have been added such as ChopBlanks,
RaiseError and PrintError, and these do not have the full set of
macros.
The approved method for handling these is now the triplet of macros:

	DBIc_is(imp, flag)
	DBIc_has(imp, flag)    an alias for DBIc_is
	DBIc_on(imp, flag)
	DBIc_off(imp, flag)

Consequently, the DBIc_IMPSET family of macros is now deprecated and
new drivers should avoid using them, even though the older drivers
will probably continue to do so for quite a while yet.

=head2 Using DBIS->get_fbav()

The $sth->bind_col() and $sth->bind_columns() documented in the DBI
specification do not have to be implemented by the driver writer
becuase DBI takes care of the details for you.
However, the key to ensuring that bound columns work is to call the
function DBIS->get_fbav() in the code which fetches a row of data.
This returns an AV, and each element of the AV contains the SV which
should be set to contain the returned data.

=head1 ACKNOWLEDGEMENTS

Tim Bunce (tim.bunce@ig.co.uk) - for writing DBI and managing the DBI
specification and the DBD::Oracle driver.

=head1 AUTHOR

Jonathan Leffler (johnl@informix.com)

=cut


package DBI::DBD;
use Exporter ();
use Carp;
use DBI ();

@ISA = qw(Exporter);

$DBI::DBD::VERSION = $DBI::VERSION;

@EXPORT = (dbd_postamble);


sub dbd_postamble {
    # we must be careful of quotes for Win32 here.
    '
DBI_DRIVER_XST=$(INSTALLSITEARCH)/auto/DBI/Driver.xst

$(BASEEXT).xs: $(BASEEXT).xsi

$(BASEEXT).c: $(BASEEXT).xsi

$(BASEEXT).xsi: $(INSTALLSITEARCH)/auto/DBI/Driver.xst
	perl -p -e "s/~DRIVER~/$(BASEEXT)/g" < $(DBI_DRIVER_XST) > $(BASEEXT).xsi
';
}

1;

__END__
