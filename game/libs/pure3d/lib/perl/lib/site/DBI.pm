require 5.003;

$DBI::VERSION = '0.89'; # ==> ALSO update the version in the pod text below!

=head1 NAME

DBI - Database independent interface for Perl

=head1 SYNOPSIS

  use DBI;
 
  @data_sources = DBI->data_sources($driver_name);

  $dbh = DBI->connect($data_source, $username, $auth);
  $dbh = DBI->connect($data_source, $username, $auth, \%attr);
 
  $rc  = $dbh->disconnect;
 
  $rv  = $dbh->do($statement);
  $rv  = $dbh->do($statement, \%attr);
  $rv  = $dbh->do($statement, \%attr, @bind_values);
 
  $sth = $dbh->prepare($statement);
  $sth = $dbh->prepare($statement, \%attr);
 
  $rc = $sth->bind_col($col_num, \$col_variable);
  $rc = $sth->bind_columns(\%attr, @list_of_refs_to_vars_to_bind);

  $rv = $sth->bind_param($param_num, $bind_value);
  $rv = $sth->bind_param($param_num, $bind_value, $bind_type);
  $rv = $sth->bind_param($param_num, $bind_value, \%attr);

  $rv = $sth->execute;
  $rv = $sth->execute(@bind_values);
 
  @row_ary  = $sth->fetchrow_array;
  $ary_ref  = $sth->fetchrow_arrayref;
  $hash_ref = $sth->fetchrow_hashref;
 
  $rc = $sth->finish;
 
  $rv = $sth->rows;
 
  $rc  = $dbh->commit;
  $rc  = $dbh->rollback;

  $sql = $dbh->quote($string);
 
  $rc  = $h->err;
  $str = $h->errstr;
  $rv  = $h->state;

=head2 NOTE

This is the draft DBI specification that corresponds to the DBI version 0.89
($Date: 1997/07/25 11:17:49 $).

 * The DBI specification is currently evolving quite quickly so it is
 * important to check that you have the latest copy. The RECENT CHANGES
 * section below has a summary of user-visible changes and the F<Changes>
 * file supplied with the DBI holds more detailed change information.

 * Note also that whenever the DBI changes the drivers take some time to
 * catch up. Recent versions of the DBI have added many new features that
 * may not yet be supported by the drivers you use. Talk to the authors of
 * those drivers if you need the features.

Please also read the DBI FAQ which is installed as a DBI::FAQ module so
you can use perldoc to read it by executing the C<perldoc DBI::FAQ> command.

=head2 RECENT CHANGES 

A brief summary of significant user-visible changes in recent versions
(if a recent version isn't mentioned it simply means that there were no
significant user-visible changes in that version).

=over 4 

=item DBI 0.86 - 16th July 1997

Added $h->{LongReadLen} and $h->{LongTruncOk} attributes for BLOBS.
Added DBI_USER and DBI_PASS env vars. See L</connect> for usage.
Added DBI->trace() to set global trace level (like per-handle $h->trace).
PERL_DBI_DEBUG env var renamed DBI_TRACE (old name still works for now).
Updated docs, including commit, rollback, AutoCommit and Transactions sections.
Added bind_param method and execute(@bind_values) to docs.

=item DBI 0.85 - 25th June 1997

The 'new-style connect' (see below) now defaults to AutoCommit mode unless
{ AutoCommit => 0 } specified in connect attributes (see L</connect>).
New DBI_DSN env var default for connect method (supersedes DBI_DRIVER).
Documented the func method.

=item DBI 0.84 - 20th June 1997

Added $h->{PrintError} attribute which, if set true, causes all errors
to trigger a warn().  New-style DBI->connect call now automatically
sets PrintError=1 unless { PrintError => 0 } specified in the connect
attributes (see L</connect>).  The old-style connect with a separate
driver parameter is deprecated.  Renamed $h->debug to $h->trace() and
added a trace filename arg.

=item DBI 0.83 - 11th June 1997

Added 'new-style' driver specification syntax to the DBI->connect
data_source parameter: DBI->connect( 'dbi:driver:...', $user, $passwd);
The DBI->data_sources method should return data_source names with the
appropriate 'dbi:driver:' prefix.  DBI->connect will warn if \%attr is
true but not a hash ref.  Added new fetchrow methods (fetchrow_array,
fetchrow_arrayref and fetchrow_hashref):  Added the DBI FAQ from
Alligator Descartes in module form for easy reading via "perldoc DBI::FAQ".

=item DBI 0.82 - 23rd May 1997

Added $h->{RaiseError} attribute which, if set true, causes all errors to
trigger a die(). This makes it much easier to implement robust applications
in terms of higher level eval { ... } blocks and rollbacks.
Added DBI->data_sources($driver) method for implementation by drivers.

=back 

=cut

# The POD text continues at the end of the file.

{
package DBI;

my $Revision = substr(q$Revision: 1.82 $, 10);

# $Id: DBI.pm,v 1.82 1997/07/25 11:17:49 timbo Exp $
#
# Copyright (c) 1995,1996,1997, Tim Bunce
#
# You may distribute under the terms of either the GNU General Public
# License or the Artistic License, as specified in the Perl README file.

use Carp;
use DynaLoader ();
use Exporter ();

@ISA = qw(Exporter DynaLoader);

# Make some utility functions available if asked for
@EXPORT_OK = qw();
@EXPORT    = (); # populated by export_tags:
%EXPORT_TAGS = (
   sql_types => [ qw(SQL_CHAR SQL_NUMERIC SQL_DECIMAL SQL_INTEGER SQL_SMALLINT
		    SQL_FLOAT SQL_REAL SQL_DOUBLE SQL_VARCHAR) ],
   utils     => [ qw(neat neat_list dump_results sql) ],
);
Exporter::export_ok_tags('sql_types', 'utils');

use strict;

$DBI::dbi_debug = $ENV{DBI_TRACE} || $ENV{PERL_DBI_DEBUG} || 0;
carp "Loaded DBI.pm (debug $DBI::dbi_debug)\n" if $DBI::dbi_debug;

bootstrap DBI;

my $connect_via = "connect";

# check if user wants a persistent database connection ( Apache + mod_perl )
my $GATEWAY_INTERFACE = $ENV{GATEWAY_INTERFACE} || '';
if (substr($GATEWAY_INTERFACE,0,8) eq 'CGI-Perl' and $INC{'Apache/DBI.pm'}) {
    $connect_via = "Apache::DBI::connect";
    carp "DBI connect via $INC{'Apache/DBI.pm'}\n" if $DBI::dbi_debug;
}


if ($DBI::dbi_debug) {
    # this is a bit of a handy hack for "DBI_TRACE=/tmp/dbi.log"
    if ($DBI::dbi_debug =~ m/^\d/) {
	# dbi_debug is number so debug to stderr at that level
	DBI->trace($DBI::dbi_debug);
    }
    else {
	# dbi_debug is a file name to debug to file at level 2
	# the function will reset $dbi_debug to the value 2.
	DBI->trace(2, $DBI::dbi_debug);
    }
}

%DBI::installed_drh = ();  # maps driver names to installed driver handles


# Setup special DBI dynamic variables. See DBI::var::FETCH for details.
# These are dynamically associated with the last handle used.
tie $DBI::err,    'DBI::var', '*err';    # special case: referenced via IHA list
tie $DBI::state,  'DBI::var', '"state';  # special case: referenced via IHA list
tie $DBI::lasth,  'DBI::var', '!lasth';  # special case: return boolean
tie $DBI::errstr, 'DBI::var', '&errstr'; # call &errstr in last used pkg
tie $DBI::rows,   'DBI::var', '&rows';   # call &rows   in last used pkg
sub DBI::var::TIESCALAR{ my $var = $_[1]; bless \$var, 'DBI::var'; }
sub DBI::var::STORE    { Carp::croak "Can't modify \$DBI::${$_[0]} special variable" }
sub DBI::var::DESTROY  { }


# --- Dynamically create the DBI Standard Interface

my $std = undef;
my $keeperr = { O=>0x04 };

my @TieHash_IF = (	# Generic Tied Hash Interface
	'STORE'   => $std,
	'FETCH'   => $keeperr,
	'FIRSTKEY'=> $keeperr,
	'NEXTKEY' => $keeperr,
	'EXISTS'  => $keeperr,
	'CLEAR'   => $keeperr,
	'DESTROY' => $keeperr,
);
my @Common_IF = (	# Interface functions common to all DBI classes
	func    =>	{				O=>0x06	},
	event   =>	{ U =>[2,0,'$type, @args'],	O=>0x04 },
	trace   =>	{ U =>[1,2,'[$trace_level]'],	O=>0x04 },
	debug   =>	{ U =>[1,2,'[$debug_level]'],	O=>0x04 }, # old name for trace
	private_data =>	{ U =>[1,1],			O=>0x04 },
	err     =>	$keeperr,
	errstr  =>	$keeperr,
	state   =>	{ U =>[1,1], O=>0x04 },
);

my %DBI_IF = (	# Define the DBI Interface:

    dr => {		# Database Driver Interface
	'connect'  =>	{ U =>[1,5,'[$db [,$user [,$passwd [,\%attr]]]]'] },
	'disconnect_all'=>{ U =>[1,1] },
	data_sources => { U =>[1,2] },
	@Common_IF,
	@TieHash_IF,
    },
    db => {		# Database Session Class Interface
	commit     =>	{ U =>[1,1] },
	rollback   =>	{ U =>[1,1] },
	'do'       =>	{ U =>[2,0,'$statement [, \%attribs [, @bind_params ] ]'] },
	prepare    =>	{ U =>[2,3,'$statement [, \%attribs]'] },
	handler    =>	{ U =>[2,2,'\&handler'] },
	ping       =>	{ U =>[1,1] },
	disconnect =>	{ U =>[1,1] },
	tables     =>	{ U =>[1,1] },
	quote      =>	{ U =>[2,2, '$str'] },
	rows       =>	$keeperr,
	@Common_IF,
	@TieHash_IF,
    },
    st => {		# Statement Class Interface
	bind_col   =>	{ U =>[3,4,'$column, \\$var [, \%attribs]'] },
	bind_columns =>	{ U =>[3,0,'\%attribs, \\$var1 [, \\$var2, ...]'] },
	bind_param =>	{ U =>[3,4,'$parameter, $var [, \%attribs]'] },
	bind_param_inout => { U =>[4,5,'$parameter, \\$var, $maxlen, [, \%attribs]'] },
	execute    =>	{ U =>[1,0,'[@args]'] },

	fetch    	  =>	undef, # alias for fetchrow_arrayref
	fetchrow_arrayref =>	undef,
	fetchrow_hashref  =>	undef,
	fetchrow_array    =>	undef,
	fetchrow   	  =>	undef, # old alias for fetchrow_array

	fetchall_arrayref =>	{ U =>[1,1] },

	blob_read  =>	{ U =>[4,5,'$field, $offset, $len [, \\$buf [, $bufoffset]]'] },
	blob_copy_to_file => { U =>[3,3,'$field, $filename_or_handleref'] },
	finish     => 	{ U =>[1,1] },
	rows       =>	$keeperr,
	@Common_IF,
	@TieHash_IF,
    },
);

my($class, $method);
foreach $class (keys %DBI_IF){
    my %pkgif = %{$DBI_IF{$class}};
    foreach $method (keys %pkgif){
	DBI->_install_method("DBI::${class}::$method", 'DBI.pm',
			$pkgif{$method});
    }
}

# End of init code


END {
    print STDERR "    DBI::END\n" if $DBI::dbi_debug >= 2;
    # Let drivers know why we are calling disconnect_all:
    $DBI::PERL_ENDING = $DBI::PERL_ENDING = 1;	# avoid typo warning
    DBI->disconnect_all();
    print STDERR "    DBI::END complete\n" if $DBI::dbi_debug >= 2;
}



# --- The DBI->connect Front Door function

sub connect {
    my $class = shift;
    my($dsn, $user, $pass, $attr, $driver) = @_;
    my $dsn_driver;
    my $dbh;

    # switch $driver<->$attr if called in old style
    ($driver, $attr) = ($attr, $driver) if $attr and !ref($attr);

    $dsn ||= $ENV{DBI_DSN} || $ENV{DBI_DBNAME} || '';
    $user = $ENV{DBI_USER} unless defined $user;
    $pass = $ENV{DBI_PASS} unless defined $pass;

    if ($DBI::dbi_debug) {
	local $^W = 0;	# prevent 'Use of uninitialized value' warnings
	Carp::carp "$class->connect($dsn, $user, $pass, $driver, $attr)\n"
    }
    die 'Usage: $class->connect([$dsn [,$user [,$passwd [, $driver [,\%attr]]]]])'
	    if ( ($driver and ref $driver) or ($attr and not ref $attr));

    # get driver from dsn if possible
    $dsn_driver = $1 if $dsn =~ s/^DBI:(.*?)://i;

    # set driver from dsn if possible and driver arg not given
    $driver = $dsn_driver if $dsn_driver and !$driver;

    my $drh = $class->install_driver($driver)
		or confess "$class->install_driver($driver) failed";
    warn "$class->$connect_via using $driver driver $drh\n" if $DBI::dbi_debug;

    unless ($dbh = $drh->$connect_via($dsn, $user, $pass, $attr)) {
	warn "$class->connect failed: ".($drh->errstr)."\n" if $DBI::dbi_debug;
	return undef;
    }
    warn "$class->connect = $dbh\n" if $DBI::dbi_debug;

    if ($dsn_driver && !$driver) { # new-style connect so new default semantics
	$dbh->{PrintError} = 1;
	$dbh->{AutoCommit} = 1;
    }
    if (ref $attr) {
	my $a;
	foreach $a (qw(PrintError RaiseError AutoCommit)) {
	    $dbh->{$a} = $attr->{$a} if exists $attr->{$a};
	}
    }

    $dbh;
}


sub disconnect_all {
    Carp::carp "DBI::disconnect_all @_\n" if $DBI::dbi_debug;
    foreach(keys %DBI::installed_drh){
	warn "DBI::disconnect_all for '$_'\n" if $DBI::dbi_debug;
	my $drh = $DBI::installed_drh{$_};
	next unless ref $drh;	# avoid problems on premature death
	$drh->disconnect_all();
    }
}


sub install_driver {
    my $class = shift;
    my($driver, $attribs) = @_;
    my $drh;

    $driver ||= $ENV{DBI_DRIVER} || '';

    # allow driver to be specified as a 'dbi:driver:' string
    $driver = $1 if $driver =~ s/^DBI:(.*?)://i;

    Carp::croak "DBI->install_driver: DBD driver not specified.\n"
	unless $driver;

    # already installed
    return $drh if $drh = $DBI::installed_drh{$driver};

    Carp::carp "$class->install_driver($driver)\n" if $DBI::dbi_debug;
    Carp::croak 'usage DBI->install_driver($driver [, \%attribs])'
	unless ($class eq 'DBI' and $driver and @_<=3);

    # --- load the code
    eval "package DBI::_firesafe; require DBD::$driver";
    if ($@) {
	my $advice = "";
	$advice = "\nPerhaps DBD::$driver was statically linked into a new perl binary."
		 ."\nIn which case you need to use that new perl binary."
	    if $@ =~ /Can't find loadable object/;
	confess "install_driver($driver) failed: $@$advice\n"
    }
    Carp::carp "DBI->install_driver($driver) loaded\n" if $DBI::dbi_debug;

    # --- do some behind-the-scenes checks and setups on the driver
    _setup_driver($driver);

    # --- run the driver function
    my $driver_class = "DBD::$driver";
    $drh = eval { $driver_class->driver($attribs || {}) };
    croak "$driver_class initialisation failed: $@"
	unless $drh && ref $drh && !$@;

    $DBI::installed_drh{$driver} = $drh;
    Carp::carp "DBI->install_driver($driver) = $drh\n" if $DBI::dbi_debug;
    $drh;
}

sub _setup_driver {
    my $driver = shift;
    my $type;
    foreach $type (qw(dr db st)){
	my $class = "DBD::${driver}::$type";
	no strict 'refs';
	push(@{"${class}::ISA"},     "DBD::_::$type");
	push(@{"${class}_mem::ISA"}, "DBD::_mem::$type");
    }
}


*internal = \&DBD::Switch::dr::driver;
#sub internal { return DBD::Switch::dr::driver(@_); }


sub available_drivers {
    my($quiet) = @_;
    my(@drivers, $d, $f);
    local(*DBI::DIR);
    my(%seen_dir, %seen_dbd);
    foreach $d (@INC){
	chomp($d); # perl 5 beta 3 bug in #!./perl -Ilib from Test::Harness
	next unless -d "$d/DBD";
	next if $seen_dir{$d};
	$seen_dir{$d} = 1;
	opendir(DBI::DIR,"$d/DBD") || Carp::carp "opendir $d/DBD: $!\n";
	foreach $f (sort readdir(DBI::DIR)){
	    next unless $f =~ s/\.pm$//;
	    if ($seen_dbd{$f}){
		Carp::carp "DBD::$f in $d is hidden by DBD::$f in $seen_dbd{$f}\n"
		    unless $quiet;
            } else {
		push(@drivers, $f);
	    }
	    $seen_dbd{$f} = $d;
	}
	closedir(DBI::DIR);
    }
    @drivers;
}

sub data_sources {
    my($class, $driver) = @_;
    my $drh = $class->install_driver($driver);
    return $drh->data_sources;
}

sub neat_list {
    my($listref, $maxlen, $sep) = @_;
    $maxlen = 0 unless defined $maxlen;	# 0 == use internal default
    $sep = ", " unless defined $sep;
    join($sep, map { neat($_,$maxlen) } @$listref);
}


sub dump_results {
    my($sth, $maxlen, $lsep, $fsep) = @_;
	return 0 unless $sth;
    $maxlen ||= 35;
    $lsep   ||= "\n";
    my $rows = 0;
    my $ref;
    while($ref = $sth->fetch) {
	print $lsep if $rows++ and $lsep;
	print neat_list($ref,$maxlen,$fsep);
    }
    print "\n$rows rows".($DBI::err ? " ($DBI::err: $DBI::errstr)" : "")."\n";
    $rows;
}


sub sql {		# a simple sql shell
    my $prompt = "dbi> ";
    my $dbh;
    $| = 1;
    if (@ARGV) {
	warn "DBI Connecting to @ARGV\n";
	$dbh = DBI->connect(@ARGV);
	die "$DBI::errstr\n" unless $dbh;
    }
    while(1) {
	print "$prompt ";
	my $cmd = <>;
	return unless $cmd;
	chomp $cmd;
	warn("Not connected yet.\n"),next unless $dbh;
	my $sth = $dbh->prepare($cmd);
	if ($sth) {
	    dump_results($sth);
	}
	else {
	    warn "$DBI::errstr\n";
	}
    }
}


sub connect_test_perf {
    my($class, $dsn,$dbuser,$dbpass, $attr) = @_;
	croak "connect_test_perf needs hash ref as fourth arg" unless ref $attr;
    # these are non standard attributes just for this special method
    my $loops ||= $attr->{dbi_loops} || 5;
    my $par   ||= $attr->{dbi_par}   || 1;	# parallelism
    my $verb  ||= $attr->{dbi_verb}  || 1;
    print "$dsn: testing $loops sets of $par connections:\n";
    require Benchmark;
    require FileHandle;
    $| = 1;
    my $t0 = new Benchmark;		# not currently used
    my $drh = $class->install_driver($dsn) or die "Can't install $dsn driver\n";
    my $t1 = new Benchmark;
    my $loop;
    for $loop (1..$loops) {
	my @cons;
	print "Connecting... " if $verb;
	for (1..$par) {
	    print "$_ ";
	    push @cons, ($drh->connect($dsn,$dbuser,$dbpass)
		    or die "Can't connect # $_: $DBI::errstr\n");
	}
	print "\nDisconnecting...\n" if $verb;
	for (@cons) {
	    $_->disconnect or warn "bad disconnect $DBI::errstr"
	}
    }
    my $t2 = new Benchmark;
    my $td = Benchmark::timediff($t2, $t1);
    printf "Made %2d connections in %s\n\n", $loops*$par, Benchmark::timestr($td);
    return $td;
}


sub MakeMakerAttribs {
    # return extra attributes for DBD Makefile.PL WriteMakefile()
    ();
}


# --- Private Internal Function for Creating New DBI Handles

sub _new_handle {
    my($class, $parent, $attr, $imp_data) = @_;
    $parent = '' unless $parent;

    confess 'Usage: DBI::_new_handle'
	.'($class_name, parent_handle, \%attribs, $imp_data)'."\n"
	.'got: ('.join(", ",$class, $parent, $attr, $imp_data).")\n"
	unless(@_ == 4
		and (!$parent or ref $parent)
		and ref $attr eq 'HASH'
		);

    my $imp_class = $attr->{ImplementorClass} or
	croak "_new_handle($class): 'ImplementorClass' attribute not given";

    printf(STDERR "    New $class (for $imp_class, parent=$parent, id=%s)\n",
	    ($imp_data||''))
	if ($DBI::dbi_debug >= 2);

    warn "_new_handle($class): "
		."invalid implementor class '$imp_class' given\n"
	    unless $imp_class =~ m/::(dr|db|st)$/;

    # This is how we create a DBI style Object:
    my(%hash, $i, $h);
    $i = tie    %hash, $class, $attr;  # ref to inner hash (for driver)
    $h = bless \%hash, $class;         # ref to outer hash (for application)
    # The above tie and bless may migrate down into _setup_handle()...
    # Now add magic so DBI method dispatch works
    my @imp_data;
    push(@imp_data, $imp_data) if defined $imp_data;
    DBI::_setup_handle($h, $imp_class, $parent, @imp_data);

    warn "    New $class => $h (inner=$i) for $imp_class\n"
	if ($DBI::dbi_debug >= 2);
    return $h unless wantarray;
    ($h, $i);
}
{   # implement minimum constructors for the tie's (could be moved to xs)
    package DBI::dr; sub TIEHASH { bless $_[1] };
    package DBI::db; sub TIEHASH { bless $_[1] };
    package DBI::st; sub TIEHASH { bless $_[1] };
}


# These three constructors are called by the drivers

sub _new_drh {	# called by DBD::<drivername>::driver()
    my($class, $initial_attr, $imp_data) = @_;
    # Provide default storage for State,Err and Errstr.
    # State must be undef to get automatic faking in DBI::var::FETCH
    my($h_state_store, $h_err_store, $h_errstr_store) = (undef, 0, '');
    my $attr = {
	'ImplementorClass' => $class,
	# these attributes get copied down to child handles
	'Handlers'	=> [],
	'State'		=> \$h_state_store,  # Holder for DBI::state
	'Err'		=> \$h_err_store,    # Holder for DBI::err
	'Errstr'	=> \$h_errstr_store, # Holder for DBI::errstr
	'Debug' 	=> 0,
	%$initial_attr,
	'Type'=>'dr',
    };
    _new_handle('DBI::dr', undef, $attr, $imp_data);
}

sub _new_dbh {	# called by DBD::<drivername>::dr::connect()
    my($drh, $initial_attr, $imp_data) = @_;
    my($imp_class) = $drh->{ImplementorClass};
    $imp_class =~ s/::dr$/::db/;
    confess "new db($drh, $imp_class): not given an driver handle"
	    unless $drh->{Type} eq 'dr';
    my $attr = {
	'ImplementorClass' => $imp_class,
	%$initial_attr,
	'Type'   => 'db',
	'Driver' => $drh,
    };
    _new_handle('DBI::db', $drh, $attr, $imp_data);
}

sub _new_sth {	# called by DBD::<drivername>::db::prepare()
    my($dbh, $initial_attr, $imp_data) = @_;
    my($imp_class) = $dbh->{ImplementorClass};
    $imp_class =~ s/::db$/::st/;
    confess "new st($dbh, $imp_class): not given a database handle"
	unless (ref $dbh eq 'DBI::db' and $dbh->{Type} eq 'db');
    my $attr = {
	'ImplementorClass' => $imp_class,
	%$initial_attr,
	'Type'     => 'st',
	'Database' => $dbh,
    };
    _new_handle('DBI::st', $dbh, $attr, $imp_data);
}

} # end of DBI package scope



# --------------------------------------------------------------------
# === The internal DBI Switch pseudo 'driver' class ===

{   package DBD::Switch::dr;
    DBI::_setup_driver('Switch');	# sets up @ISA
    require Carp;

    $imp_data_size = 0;
    $imp_data_size = 0;	# avoid typo warning
    $err = 0;

    sub driver {
	return $drh if $drh;	# a package global

	my $inner;
	($drh, $inner) = DBI::_new_drh('DBD::Switch::dr', {
		'Name'    => 'Switch',
		'Version' => $DBI::VERSION,
		# the Attribution is defined as a sub as an example
		'Attribution' => sub { "DBI-$DBI::VERSION Switch by Tim Bunce" },
	    }, \$err);
	Carp::confess("DBD::Switch init failed!") unless ($drh && $inner);
	$DBD::Switch::dr::drh;
    }

    sub FETCH {
	my($drh, $key) = @_;
	return DBI->trace if $key eq 'DebugDispatch';
	return undef if $key eq 'DebugLog';	# not worth fetching, sorry
	return $drh->DBD::_::dr::FETCH($key);
	undef;
    }
    sub STORE {
	my($drh, $key, $value) = @_;
	if ($key eq 'DebugDispatch') {
	    DBI->trace($value);
	} elsif ($key eq 'DebugLog') {
	    DBI->trace(-1, $value);
	} else {
	    $drh->DBD::_::dr::STORE($key, $value);
	}
    }
}


# --------------------------------------------------------------------
# === OPTIONAL MINIMAL BASE CLASSES FOR DBI SUBCLASSES ===

# We only define default methods for harmless functions.
# We don't, for example, define a DBD::_::st::prepare()

{   package DBD::_::common; # ====== Common base class methods ======
    use strict;

    # methods common to all handle types:

    # generic TIEHASH default methods:
    sub FIRSTKEY { undef }
    sub NEXTKEY  { undef }
    sub EXISTS   { defined($_[0]->FETCH($_[1])) } # to be sure
    sub CLEAR    { Carp::carp "Can't CLEAR $_[0] (DBI)" }
}


{   package DBD::_::dr;  # ====== DRIVER ======
    @ISA = qw(DBD::_::common);
    use strict;

    sub connect { # normally overridden, but a handy default
	my($drh, $dsn, $user, $auth)= @_;
	my($this) = DBI::_new_dbh($drh, {
	    'Name' => $dsn,
	    'User' => $user,
	    });
	$this;
    }
    sub disconnect_all {	# Driver must take responsibility for this
	Carp::confess "Driver has not implemented the disconnect_all method.";
    }
    sub data_sources {
	Carp::confess "Driver has not implemented the data_sources method.";
    }
}


{   package DBD::_::db;  # ====== DATABASE ======
    @ISA = qw(DBD::_::common);
    use strict;

    sub quote {
	my $self = shift;
	my $str  = shift;
	return "NULL" unless defined $str;
	$str=~s/'/''/g;		# ISO SQL2
	"'$str'";
    }

    sub rows { -1 }

    sub do {
	my($dbh, $statement, $attribs, @params) = @_;
	my $sth = $dbh->prepare($statement, $attribs) or return undef;
	$sth->execute(@params) or return undef;
	my $rows = $sth->rows;
	($rows == 0) ? "0E0" : $rows;
    }

    sub commit	{
	Carp::carp "commit: not supported by $_[0]\n" if $DBI::dbi_debug;
	undef;
    }
    sub rollback{
	Carp::carp "rollback: not supported by $_[0]\n" if $DBI::dbi_debug;
	undef;
    }
    sub ping        { 1 }		# we assume that all is well
    sub disconnect  { undef }
}


{   package DBD::_::st;  # ====== STATEMENT ======
    @ISA = qw(DBD::_::common);
    use strict;

    sub finish  { undef }
    sub rows	{ -1 }
    # bind_param => not implemented - fail

    sub fetchrow_hashref {
	my $sth = shift;
	# This may be recoded in XS. It could work with fb_av and bind_col.
	# Probably best to add an AV*fields_hvav to dbih_stc_t and set it up
	# on the first call to fetchhash which alternate name/value pairs.
	# This implementation is just rather simple and not very optimised.
	my $row = $sth->fetch or return undef;
	my %hash;
	@hash{ @{ $sth->FETCH('NAME') } } = @$row;
	return \%hash;
    }

    sub fetchall_arrayref {
	my $sth = shift;
	my $via = shift || 'fetch';	# XXX not documented: may change
	my @rows;
	my $row;
	if ($via eq 'fetch') {
	    while( $row = $sth->fetch ) {
		# we copy the array here because fetch (currently) always
		# returns the same array ref. Eventually scrolling cursors
		# will be added to the DBI.
		push @rows, [ @$row ];
	    }
	}
	elsif ($via eq 'fetchhash') {
	    while( $row = $sth->fetchhash ) {
		push @rows, $row;
	    }
	}
	else { Carp::croak "fetchall($via) invalid" }
	return \@rows;
    }

    sub blob_copy_to_file {	# returns length or undef on error
	my($self, $field, $filename_or_handleref, $blocksize) = @_;
	my $fh = $filename_or_handleref;
	my($len, $buf) = (0, "");
	$blocksize ||= 512;	# not too ambitious
	local(*FH);
	unless(ref $fh) {
	    open(FH, ">$fh") || return undef;
	    $fh = \*FH;
	}
	while(defined($self->blob_read($field, $len, $blocksize, \$buf))) {
	    print $fh $buf;
	    $len += length $buf;
	}
	close(FH);
	$len;
    }

    # Drivers are required to implement *::st::DESTROY to encourage tidy-up
    sub DESTROY  { Carp::confess "Driver has not implemented DESTROY for @_" }
}

{   # See install_driver
    { package DBD::_mem::dr; @ISA = qw(DBD::_mem::common);	}
    { package DBD::_mem::db; @ISA = qw(DBD::_mem::common);	}
    { package DBD::_mem::st; @ISA = qw(DBD::_mem::common);	}
    # DBD::_mem::common::DESTROY is implemented in DBI.xs
}

1;
__END__

=head1 DESCRIPTION

The Perl DBI is a database access Application Programming Interface
(API) for the Perl Language.  The DBI defines a set of functions,
variables and conventions that provide a consistent database interface
independant of the actual database being used.

It is important to remember that the DBI is just an interface. A thin
layer of 'glue' between an application and one or more Database Drivers.
It is the drivers which do the real work. The DBI provides a standard
interface and framework for the drivers to operate within.

This document is a I<work-in-progress>. Although it is incomplete it
should be useful in getting started with the DBI.


=head2 Architecture of a DBI Application

             |<- Scope of DBI ->|
                  .-.   .--------------.   .-------------.
  .-------.       | |---| XYZ Driver   |---| XYZ Engine  |
  | Perl  |       |S|   `--------------'   `-------------'
  | script|  |A|  |w|   .--------------.   .-------------.
  | using |--|P|--|i|---|Oracle Driver |---|Oracle Engine|
  | DBI   |  |I|  |t|   `--------------'   `-------------'
  | API   |       |c|...
  |methods|       |h|... Other drivers
  `-------'       | |...
                  `-'

The API is the Application Perl-script (or Programming) Interface.  The
call interface and variables provided by DBI to perl scripts. The API
is implemented by the DBI Perl extension.

The 'Switch' is the code that 'dispatches' the DBI method calls to the
appropriate Driver for actual execution.  The Switch is also
responsible for the dynamic loading of Drivers, error checking/handling
and other duties. The DBI and Switch are generally synonymous.

The Drivers implement support for a given type of Engine (database).
Drivers contain implementations of the DBI methods written using the
private interface functions of the corresponding Engine.  Only authors
of sophisticated/multi-database applications or generic library
functions need be concerned with Drivers.

=head2 Notation and Conventions

  DBI    static 'top-level' class name
  $dbh   Database handle object
  $sth   Statement handle object
  $drh   Driver handle object (rarely seen or used in applications)
  $h     Any of the $??h handle types above
  $rc    General Return Code  (boolean: true=ok, false=error)
  $rv    General Return Value (typically an integer)
  @ary   List of values returned from the database, typically a row of data
  $rows  Number of rows processed by a function (if available, else -1)
  $fh    A filehandle
  undef  NULL values are represented by undefined values in perl

Note that Perl will automatically destroy database and statement objects
if all references to them are deleted.

Handle object attributes are shown as:

C<  $h-E<gt>{attribute_name}>   (I<type>)

where I<type> indicates the type of the value of the attribute (if it's
not a simple scalar):

  \$   reference to a scalar: $h->{attr}       or  $a = ${$h->{attr}}
  \@   reference to a list:   $h->{attr}->[0]  or  @a = @{$h->{attr}}
  \%   reference to a hash:   $h->{attr}->{a}  or  %a = %{$h->{attr}}


=head2 General Interface Rules & Caveats

The DBI does not have a concept of a `current session'. Every session
has a handle object (i.e., a $dbh) returned from the connect method and
that handle object is used to invoke database related methods.

Most data is returned to the perl script as strings (null values are
returned as undef).  This allows arbitrary precision numeric data to be
handled without loss of accuracy.  Be aware that perl may not preserve
the same accuracy when the string is used as a number.

Dates and times are returned as character strings in the native format
of the corresponding Engine.  Time Zone effects are Engine/Driver
dependent.

Perl supports binary data in perl strings and the DBI will pass binary
data to and from the Driver without change. It is up to the Driver
implementors to decide how they wish to handle such binary data.

Multiple SQL statements may not be combined in a single statement
handle, e.g., a single $sth.

Non-sequential record reads are not supported in this version of the
DBI. E.g., records can only be fetched in the order that the database
returned them and once fetched they are forgotten.

Positioned updates and deletes are not directly supported by the DBI.
See the description of the CursorName attribute for an alternative.

Individual Driver implementors are free to provide any private
functions and/or handle attributes that they feel are useful.  Private
functions can be invoked using the DBI C<func> method (which is
currently not documented). Private attributes are accessed just like
standard attributes.

Character sets: Most databases which understand character sets have a
default global charset and text stored in the database is, or should
be, stored in that charset (if it's not then that's the fault of either
the database or the application that inserted the data). When text is
fetched it should be (automatically) converted to the charset of the
client (presumably based on the locale). If a driver needs to set a
flag to get that behaviour then it should do so. It should not require
the application to do that.


=head2 Naming Conventions

The DBI package and all packages below it (DBI::*) are reserved for
use by the DBI. Package names beginning with DBD:: are reserved for use
by DBI database drivers.  All environment variables used by the DBI
or DBD's begin with 'DBI_' or 'DBD_'.

The letter case used for attribute names is significant and plays an
important part in the portability of DBI scripts.  The case of the
attribute name is used to signify who defined the meaning of that name
and its values.

  Case of name  Has a meaning defined by
  ------------  ------------------------
  UPPER_CASE    Standards, e.g.,  X/Open, SQL92 etc (portable)
  MixedCase     DBI API (portable), underscores are not used.
  lower_case    Driver or Engine specific (non-portable)

It is of the utmost importance that Driver developers only use
lowercase attribute names when defining private attributes.


=head2 Data Query Methods

The DBI allows an application to `prepare' a statement for later execution.
A prepared statement is identified by a statement handle object, e.g., $sth.

Typical method call sequence for a select statement:

  connect,
    prepare,
      execute, fetch, fetch, ... finish,
      execute, fetch, fetch, ... finish,
      execute, fetch, fetch, ... finish.

Typical method call sequence for a non-select statement:

  connect,
    prepare,
      execute,
      execute,
      execute.


=head2 Placeholders and Bind Values

Some drivers support Placeholders and Bind Values. These drivers allow
a database statement to contain placeholders, sometimes called
parameter markers, that indicate values that will be supplied later,
before the prepared statement is executed.  For example, an application
might use the following to insert a row of data into the SALES table:

  insert into sales (product_code, qty, price) values (?, ?, ?)

or the following, to select the description for a product:

  select product_description from products where product_code = ?

The C<?> characters are the placeholders.  The association of actual
values with placeholders is known as binding and the values are
referred to as bind values. Undefined values or C<undef> can be used
to indicate null values.

Without using placeholders, the insert statement above would have to
contain the literal values to be inserted and it would have to be
re-prepared and re-executed for each row. With placeholders, the insert
statement only needs to be prepared once. The bind values for each row
can be given to the execute method each time it's called. By avoiding
the need to re-prepare the statement for each row the application
typically many times faster! Here's an example:

  my $sth = $dbh->prepare(q{
    insert into sales (product_code, qty, price) values (?, ?, ?)
  }) || die $dbh->errstr;
  while(<>) {
      chop;
      my($product_code, $qty, $price) = split(/,/);
      $sth->execute($product_code, $qty, $price) || die $dbh->errstr;
  }
  $dbh->commit || die $dbh->errstr;

See L</execute> and L</bind_param> for more details.

=head2 SQL - A Query Language

Most DBI drivers require applications to use a dialect of SQL (the
Structured Query Language) to interact with the database engine.  These
links may provide some useful information about SQL:

  http://www.jcc.com/sql_stnd.html
  http://w3.one.net/~jhoffman/sqltut.htm
  http://skpc10.rdg.ac.uk/misc/sqltut.htm

The DBI itself does not mandate or require any particular language to
be used.  It is language independant. In ODBC terms it is always in
pass-thru mode. The only requirement is that queries and other
statements must be expressed as a single string of letters passed
as the first argument to the L</prepare> method.

=head1 THE DBI CLASS

=head2 DBI Class Methods

=over 4

=item B<connect>

  $dbh = DBI->connect($data_source, $username, $password);
  $dbh = DBI->connect($data_source, $username, $password, \%attr);

Establishes a database connection (session) to the requested data_source.
Returns a database handle object.

Multiple simultaneous connections to multiple databases through multiple
drivers can be made via the DBI. Simply make one connect call for each
and keep a copy of each returned database handle.

The $data_source value should begin with 'dbi:driver_name:'. That
prefix will be stripped off and the driver_name part is used to specify
the driver.  As a convenience, if the $data_source field is undefined
or empty the DBI will substitute the value of the environment variable
DBI_DSN if any.

If driver is not specified, the environment variable DBI_DRIVER is
used. If that variable is not set then the connect dies.

If $username or $password are I<undefined> (rather than empty) then the
DBI will substitute the values of the DBI_USER and DBI_PASS environment
variables respectively.  The use of the environment for these values is
not recommended for security reasons. The mechanism is only intended to
simplify testing.

DBI->connect automatically installs the driver if it has not been
installed yet. Driver installation I<always> returns a valid driver
handle or it I<dies> with an error message which includes the string
'install_driver' and the underlying problem. So, DBI->connect will die
on a driver installation failure and will only return undef on a
connect failure, for which $DBI::errstr will hold the error.

The $data_source argument (with the 'dbi:...:' prefix removed) and the
$username and $password arguments are then passed to the driver for
processing. The DBI does not define I<any> interpretation for the
contents of these fields.  The driver is free to interpret the
data_source, username and password fields in any way and supply
whatever defaults are appropriate for the engine being accessed
(Oracle, for example, uses the ORACLE_SID and TWO_TASK env vars if no
data_source is specified).

The AutoCommit and PrintError attributes for each connection default to
default to I<on> (see L</AutoCommit> and L</PrintError> for more information).

The \%attr parameter can be used to alter the default settings of the
PrintError, RaiseError and AutoCommit attributes. For example:

  $dbh = DBI->connect($data_source, $user, $pass, {
	PrintError => 0,
	AutoCommit => 0
  });

These are currently the I<only> defined uses for the DBI->connect \%attr.

Portable applications should not assume that a single driver will be
able to support multiple simultaneous sessions.

Where possible each session ($dbh) is independent from the transactions
in other sessions. This is useful where you need to hold cursors open
across transactions, e.g., use one session for your long lifespan
cursors (typically read-only) and another for your short update
transactions.

For compatibility with old DBI scripts the driver can be specified by
passing its name as the fourth argument to connect (instead of \%attr):

  $dbh = DBI->connect($data_source, $user, $pass, $driver);

In this 'old-style' form of connect the $data_source should not start
with 'dbi:driver_name:' and, even if it does, the embedded driver_name
will be ignored. The $dbh->{AutoCommit} attribute is I<undefined>. The
$dbh->{PrintError} attribute is off. And the old DBI_DBNAME env var is
checked if DBI_DSN is not defined.

=item B<available_drivers>

  @ary = DBI->available_drivers;
  @ary = DBI->available_drivers($quiet);

Returns a list of all available drivers by searching for DBD::* modules
through the directories in @INC. By default a warning will be given if
some drivers are hidden by others of the same name in earlier
directories. Passing a true value for $quiet will inhibit the warning.


=item B<data_sources>

  @ary = DBI->data_sources($driver);

Returns a list of all data sources (databases) available via the named
driver. The driver will be loaded if not already. If $driver is empty
or undef then the value of the DBI_DRIVER environment variable will be
used.

Note that many drivers have no way of knowing what data sources might
be available for it and thus, typically, return an empty list.


=item B<trace>

  DBI->trace($trace_level)
  DBI->trace($trace_level, $trace_file)

DBI trace information can be enabled for all handles using this DBI
class method. To enable trace information for a specific handle use
the similar $h->trace method described elsewhere.

Use $trace_level 2 to see detailed call trace information including
parameters and return values.  The trace output is detailed and
typically I<very> useful.

Use $trace_level 0 to disable the trace.

If $trace_filename is specified then the file is opened in append
mode and I<all> trace output (including that from other handles)
is redirected to that file.

See also the $h->trace() method and L</DEBUGGING> for information
about the DBI_TRACE environment variable.


=back


=head2 DBI Utility Functions

=over 4

=item B<neat>

  $str = DBI::neat($value, $maxlen);

Return a string containing a neat (and tidy) representation of the
supplied value. Strings will be quoted and undefined (NULL) values
will be shown as C<undef>. Unprintable characters will be replaced by
dot (.) and the string will be truncated and terminated with '...'
if longer than $maxlen (0 or undef defaults to 400 characters).

=item B<neat_list>

  $str = DBI::neat_list(\@listref, $maxlen, $field_sep);

Calls DBI::neat on each element of the list and returns a string
containing the results joined with $field_sep. $field_sep defaults
to C<", ">.


=item B<dump_results>

  $rows = DBI::dump_results($sth, $maxlen, $lsep, $fsep, $fh);

Fetches all the rows from $sth, calls DBI::neat_list for each row and
prints the results to $fh (defaults to C<STDOUT>) separated by $lsep
(default C<"\n">). $fsep defaults to C<", "> and $maxlen defaults to 35.
This function is designed as a handy utility for prototyping and
testing queries.

=back


=head2 DBI Dynamic Attributes

These attributes are always associated with the last handle used.

Where an attribute is Equivalent to a method call, then refer to
the method call for all related documentation.

=over 4

=item B<$DBI::err>

Equivalent to $h->err.

=item B<$DBI::errstr>

Equivalent to $h->errstr.

=item B<$DBI::state>

Equivalent to $h->state.

=item B<$DBI::rows>

Equivalent to $h->rows.

=back


=head1 METHODS COMMON TO ALL HANDLES

=over 4

=item B<err>

  $rv = $h->err;

Returns the native database engine error code from the last driver
function called.

=item B<errstr>

  $str = $h->errstr;

Returns the native database engine error message from the last driver
function called.

=item B<state>

  $str = $h->state;

Returns an error code in the standard SQLSTATE five character format.
Note that the specific success code C<00000> is translated to C<0>
(false). If the driver does not support SQLSTATE then state will
return C<S1000> (General Error) for all errors.

=item B<trace>

  $h->trace($trace_level);
  $h->trace($trace_level, $trace_filename);

DBI trace information can be enabled for a specific handle (and any
future children of that handle) by setting the trace level using the
trace method.

Use $trace_level 2 to see detailed call trace information including
parameters and return values.  The trace output is detailed and
typically I<very> useful.

Use $trace_level 0 to disable the trace.

If $trace_filename is specified then the file is opened in append
mode and I<all> trace output (including that from other handles)
is redirected to that file.

See also the DBI->trace() method and L</DEBUGGING> for information
about the DBI_TRACE environment variable.


=item B<func>

  $h->func(@func_arguments, $func_name);

The func method can be used to call private non-standard and
non-portable methods implemented by the driver. Note that the function
name is given as the I<last> argument.

=back


=head1 ATTRIBUTES COMMON TO ALL HANDLES

These attributes are common to all types of DBI handles.

Some attributes are inherited by I<child> handles. That is, the value
of an inherited attribute in a newly created statement handle is the
same as the value in the parent database handle. Changes to attributes
in the new statement handle do not affect the parent database handle
and changes to the database handle do not affect I<existing> statement
handles, only future ones.

Attempting to set or get the value of an undefined attribute is fatal,
except for private driver specific attributes (which all have names
starting with a lowercase letter).

=over 4

=item B<Warn> (inherited)

  $h->{Warn}

Enables useful warnings for certain bad practices. Enabled by default. Some
emulation layers, especially those for perl4 interfaces, disable warnings.

=item B<CompatMode> (inherited)

  $h->{CompatMode}

Used by emulation layers (such as Oraperl) to enable compatible behaviour
in the underlying driver (e.g., DBD::Oracle) for this handle. Not normally
set by application code.

=item B<InactiveDestroy>

  $h->{InactiveDestroy}

This attribute can be used to disable the effect of destroying a handle
(which would normally close a prepared statement or disconnect from the
database etc). It is specifically designed for use in unix applications
which 'fork' child processes. Either the parent or the child process,
but not both, should set InactiveDestroy on all their handles.

=item B<PrintError> (inherited)

  $h->{PrintError}

This attribute can be used to force errors to generate warnings (using
warn) in addition to returning error codes in the normal way.  When set
on, any method which results in an error occuring ($DBI::err being set
true) will cause the DBI to effectively do warn("$DBI::errstr").  Note
that the contents of the warning are currently just $DBI::errstr but
that may change and should not be relied upon.

By default DBI->connect sets PrintError on (except for old-style connect
usage, see connect for more details).

If desired, the warnings can be caught and processed using a $SIG{__WARN__}
handler or modules like CGI::ErrorWrap.

=item B<RaiseError> (inherited)

  $h->{RaiseError}

This attribute can be used to force errors to raise exceptions rather
than simply return error codes in the normal way. It defaults to off.
When set on, any method which results in an error occuring ($DBI::err
being set true) will cause the DBI to effectively do croak("$DBI::errstr").

If PrintError is also on then the PrintError is done before the
RaiseError unless no __DIE__ handler has been defined, in which case
PrintError is skipped since the croak will print the message.

Note that the contents of $@ are currently just $DBI::errstr but that
may change and should not be relied upon.

=item B<ChopBlanks> (inherited)

  $h->{ChopBlanks}

This attribute can be used to control the trimming of trailing space
characters from fixed width char fields. No other field types are
affected.

The default is false (it is possible that that may change).
Applications that need specific behaviour should set the attribute as
needed. Emulation interfaces should set the attribute to match the
behaviour of the interface they are emulating.

Drivers are not required to support this attribute but any driver which
does not must arrange to return undef as the attribute value.

=item B<LongReadLen> (inherited)

  $h->{LongReadLen}

This attribute may be used to control the maximum length of 'long' (or
'blob') fields which the driver will read from the database
automatically when it fetches each row of data.

The default is typically 80 bytes but may vary between drivers. Most
applications using long fields will set this value to slightly larger
than the longest long field value which will be fetched.

See L</LongTruncOk> about truncation behaviour.

=item B<LongTruncOk> (inherited)

  $h->{LongTruncOk}

This attribute may be used to control the effect of fetching a long
field value which has been truncated (typically because it's longer
than the value of the LongReadLen attribute).

By default LongTruncOk is false and fetching a truncated long value
will cause the fetch to fail. (Applications should always take care to
check for errors after a fetch loop in case a database error, such as a
divide by zero or long field truncation, caused the fetch to terminate
prematurely.)

=back


=head1 DBI DATABASE HANDLE OBJECTS

=head2 Database Handle Methods

=over 4

=item B<prepare>

  $sth = $dbh->prepare($statement)           || die $dbh->errstr;
  $sth = $dbh->prepare($statement, \%attr)   || die $dbh->errstr;

Prepare a single statement for execution by the database engine and
return a  reference to a statement handle object which can be used to
get attributes of the statement and invoke the L</execute> method.

Note that prepare should never execute a statement, even if it is not a
select statement, it only prepares it for execution. Having said that,
some drivers, notably Oracle, will execute data definition statements
such as create/drop table when they are prepared. In practice this is
rarely a problem.

Drivers for engines which don't have the concept of preparing a
statement will typically just store the statement in the returned
handle and process it when $sth->execute is called. Such drivers are
likely to be unable to give much useful information about the
statement, such as $sth->{NUM_OF_FIELDS}, until after $sth->execute
has been called. Portable applications should take this into account.


=item B<do>

  $rc  = $dbh->do($statement)           || die $dbh->errstr;
  $rc  = $dbh->do($statement, \%attr)   || die $dbh->errstr;
  $rv  = $dbh->do($statement, \%attr, @bind_values) || ...

Prepare and execute a statement. Returns the number of rows affected
(-1 if not known or not available) or undef on error.

This method is typically most useful for non-select statements which
either cannot be prepared in advance (due to a limitation in the
driver) or which do not need to be executed repeatedly.

The default do method is logically similar to:

  sub do {
      my($dbh, $statement, $attr, @bind_values) = @_;
      my $sth = $dbh->prepare($statement) or return undef;
      $sth->execute(@bind_values) or return undef;
      my $rows = $sth->rows;
      ($rows == 0) ? "0E0" : $rows;
  }

Example:

  my $rows_deleted = $dbh->do(q{
      delete from table
      where status = 'DONE'
  }) || die $dbh->errstr;

Using placeholders and C<@bind_values> with the C<do> method can be
useful because it avoids the need to correctly quote any variables
in the $statement.

=item B<commit>

  $rc  = $dbh->commit     || die $dbh->errstr;

Commit (make permanent) the most recent series of database changes
if the database supports transactions.

If the database supports transactions and AutoCommit is on then the
commit should issue a "commit ineffective with AutoCommit" warning.

See also L</Transactions>.

=item B<rollback>

  $rc  = $dbh->rollback   || die $dbh->errstr;

Roll-back (undo) the most recent series of uncommitted database
changes if the database supports transactions.

If the database supports transactions and AutoCommit is on then the
rollback should issue a "rollback ineffective with AutoCommit" warning.

See also L</Transactions>.


=item B<disconnect>

  $rc  = $dbh->disconnect   || warn $dbh->errstr;

Disconnects the database from the database handle. Typically only used
before exiting the program. The handle is of little use after disconnecting.

The transaction behaviour of disconnect is undefined.  Some database
systems (such as Oracle and Ingres) will automatically commit any
outstanding changes, but others (such as Informix) will rollback any
outstanding changes.  Applications should explicitly call commit or
rollback before calling disconnect.

The database is automatically disconnected (by the DESTROY method) if
still connected when there are no longer any references to the handle.
The DESTROY method for each driver should explicitly call rollback to
undo any uncommitted changes. This is I<vital> behaviour to ensure that
incomplete transactions don't get committed simply because Perl calls
DESTROY on every object before exiting.


=item B<ping>

  $rc = $dbh->ping;

Attempts to determine, in a reasonably efficient way, if the database
server is still running and the connection to it is still working.
The default implementation currently always returns true without
actually doing anything. Individual drivers should implement this
function in the most suitable manner for their database engine.

Very few applications would have any use for this method. See the
specialist Apache::DBI module for one example usage.


=item B<quote>

  $sql = $dbh->quote($string);

Quote a string literal for use in an SQL statement by I<escaping> any
special characters (such as quotation marks) contained within the
string and adding the required type of outer quotation marks.

  $sql = sprintf "select foo from bar where baz = %s",
                $dbh->quote("Don't\n");

For most database types quote would return C<'Don''t'> (including the
outer quotation marks).

An undefined $string value will be returned as NULL (without quotation
marks).

=back


=head2 Database Handle Attributes

=over 4

=item B<AutoCommit>

  $dbh->{AutoCommit}     ($)

If true then database changes cannot be rolledback (undone).  If false
then database changes automatically occur within a 'transaction' which
must either be committed or rolled-back using the commit or rollback
methods.

Drivers should always default to AutoCommit mode. (An unfortunate
choice forced on the DBI by ODBC and JDBC conventions.)

Attempting to set AutoCommit to an unsupported value is a fatal error.
This is an important feature of the DBI. Applications which need
full transaction behaviour can set $dbh->{AutoCommit}=0 (or via
connect) without having to check the value was assigned okay.

For the purposes of this description we can divide databases into three
categories:

  Database which don't support transactions at all.
  Database in which a transaction is always active.
  Database in which a transaction must be explicitly started ('BEGIN WORK').

B<* Database which don't support transactions at all>

For these databases attempting to turn AutoCommit off is a fatal error.
Commit and rollback both issue warnings about being ineffective while
AutoCommit is in effect.

B<* Database in which a transaction is always active>

These are typically mainstream commercial relational databases with
'ANSI standandard' transaction behaviour.

If AutoCommit is off then changes to the database won't have any
lasting effect unless L</commit> is called (but see also
L</disconnect>). If L</rollback> is called then any changes since the
last commit are undone.

If AutoCommit is on then the effect is the same as if the DBI were to
have called commit automatically after every successful database
operation. In other words, calling commit or rollback explicitly while
AutoCommit is on would be ineffective because the changes would
have already been commited.

Changing AutoCommit from off to on may issue a L</commit> in some drivers.

Changing AutoCommit from on to off should have no immediate effect.

For databases which don't support a specific auto-commit mode, the
driver has to commit each statement automatically using an explicit
COMMIT after it completes successfully (and roll it back using an
explicit ROLLBACK if it fails).  The error information reported to the
application will correspond to the statement which was executed, unless
it succeeded and the commit or rollback failed.

B<* Database in which a transaction must be explicitly started>

For these database the intention is to have them act like databases in
which a transaction is always active (as described above).

To do this the DBI driver will automatically begin a transaction when
AutoCommit is turned off (from the default on state) and will
automatically begin another transaction after a L</commit> or L</rollback>.

In this way, the application does not have to treat these databases as a
special case.

=back


=head1 DBI STATEMENT HANDLE OBJECTS

=head2 Statement Handle Methods

=over 4

=item B<bind_param>

  $rc = $sth->bind_param($param_num, $bind_value)  || die $sth->errstr;
  $rv = $sth->bind_param($param_num, $bind_value, \%attr)     || ...
  $rv = $sth->bind_param($param_num, $bind_value, $bind_type) || ...

The bind_param method can be used to I<bind> (assign/associate) a value
with a I<placeholder> embedded in the prepared statement. Placeholders
are indicated with question mark character (C<?>). For example:

  $dbh->{RaiseError} = 1;        # save having to check each method call
  $sth = $dbh->prepare("select name, age from people where name like ?");
  $sth->bind_param(1, "John%");  # placeholders are numbered from 1
  $sth->execute;
  DBI::dump_results($sth);

Note that the C<?> is not enclosed in quotation marks even when the
placeholder represents a string.  Some drivers also allow C<:1>, C<:2>
etc and C<:name> style placeholders in addition to C<?> but their use
is not portable.

Sadly, placeholders can only represent single scalar values, so this
statement, for example, won't work as expected for more than one value:

  "select name, age from people where name in (?)"    # wrong

The C<\%attr> parameter can be used to specify the data type the
placeholder should have. Typically the driver is only interested in
knowing if the placeholder should be bound as a number or a string.

  $sth->bind_param(1, $value, { TYPE => SQL_INTEGER });

As a short-cut for this common case, the data type can be passed
directly inplace of the attr hash reference. This example is
equivalent to the one above:

  $sth->bind_param(1, $value, SQL_INTEGER);

Perl only has string and number scalar data types. All database types
that aren't numbers are bound as strings and must be in a format the
database will understand.

Undefined values or C<undef> can be used to indicate null values.


=item B<execute>

  $rv = $sth->execute                || die $sth->errstr;
  $rv = $sth->execute(@bind_values)  || die $sth->errstr;

Perform whatever processing is necessary to execute the prepared
statement.  An undef is returned if an error occurs, a successful
execute always returns true (see below). It is always important to
check the return status of execute (and most other DBI methods).

For a non-select statement execute returns the number of rows affected
(if known). Zero rows is returned as "0E0" which Perl will treat
as 0 but will regard as true. If the number of rows affected is not
known then execute returns -1.

For select statements execute simply 'starts' the query within the
Engine. Use one of the fetch methods to retreive the data after
calling execute.  Note that the execute method does I<not> return the
number of rows that will be returned by the query (because most Engines
can't tell in advance).

If any arguments are given then execute will effectively call
L</bind_param> for each value before executing the statement.
Values bound in this way are treated as SQL_VARCHAR types.


=item B<fetchrow_arrayref>

  $ary_ref = $sth->fetchrow_arrayref;
  $ary_ref = $sth->fetch;    # alias

Fetches the next row of data and returns a reference to an array
holding the field values. If there are no more rows fetchrow_arrayref
returns undef.  Null values are returned as undef. This is the fastest
way to fetch data, particularly if used with $sth->bind_columns.

=item B<fetchrow_array>

 @ary = $sth->fetchrow_array;

An alternative to C<fetchrow_arrayref>. Fetches the next row of data
and returns it as an array holding the field values. If there are no
more rows fetchrow_array returns an empty list.  Null values are
returned as undef.

=item B<fetchrow_hashref>

 $hash_ref = $sth->fetchrow_hashref;

An alternative to C<fetchrow_arrayref>. Fetches the next row of data
and returns it as a reference to a hash containing field name and field
value pairs.  Null values are returned as undef.  If there are no more
rows fetchhash returns undef.

The keys of the hash are the same names returned by $sth->{NAME}. If
more than one field has the same name there will only be one entry in
the returned hash.

Because of the extra work fetchrow_hashref and perl have to perform it
is not as efficient as fetchrow_arrayref or fetchrow_array and is not
recommended where performance is very important. Currently a new hash
reference is returned for each row.  This is likely to change in the
future so don't rely on it.


=item B<fetchall_arrayref>

  $tbl_ary_ref = $sth->fetchall_arrayref;

The C<fetchall_arrayref> method can be used to fetch all the data to be
returned from a prepared statement. It returns a reference to an array
which contains one array reference per row (as returned by
C<fetchrow_arrayref>).

If there are no rows to return, fetchall_arrayref returns a reference to an
empty array.


=item B<finish>

  $rc  = $sth->finish;

Indicates that no more data will be fetched from this statement before
it is either prepared again or destroyed.  It is helpful to call this
method where appropriate in order to allow the server to free off any
internal resources (such as read locks) currently being held. It does
not affect the transaction status of the session in any way.


=item B<rows>

  $rv = $sth->rows;

Returns the number of rows affected by the last database altering
command, or -1 if not known or not available.

Generally you can only rely on a row count after a do() or non-select
execute().  Some drivers only offer a row count after executing some
specific operations (e.g., update and delete).

It is generally not possible to know how many rows will be returned from
an arbitrary select statement except by fetching and counting them all.
Also note that some drivers, such as DBD::Oracle, implement read-ahead
row caches for select statements which means that the row count may
appear to be incorrect while there are still more records to fetch.


=item B<bind_col>

  $rc = $sth->bind_col($column_number, \$var_to_bind);
  $rc = $sth->bind_col($column_number, \$var_to_bind, \%attr);

Binds a column (field) of a select statement to a perl variable.
Whenever a row is fetched from the database the corresponding perl
variable is automatically updated. There is no need to fetch and assign
the values manually. This makes using bound variables very efficient.
See bind_columns below for an example.  Note that column numbers count
up from 1.

The binding is performed at a very low level using perl aliasing so
there is no extra copying taking place. So long as the driver uses the
correct internal DBI call to get the array the fetch function returns,
it will automatically support column binding.

=item B<bind_columns>

  $rc = $sth->bind_columns(\%attr, @list_of_refs_to_vars_to_bind);

e.g.

  $sth->prepare(q{ select region, sales from sales_by_region }) or die ...;
  my($region, $sales);
  # Bind perl variables to columns.
  $rv = $sth->bind_columns(undef, \$region, \$sales);
  # you can also use perl's \(...) syntax (see perlref docs):
  #     $sth->bind_columns(undef, \($region, $sales));
  # Column binding is the most eficient way to fetch data
  while($sth->fetch) {
      print "$region: $sales\n";
  }

Calls bind_col for each column of the select statement. bind_columns will
croak if the number of references does not match the number of fields.

=back


=head2 Statement Handle Attributes

Note that some drivers cannot provide valid values for some or all of
these attributes until after $sth->execute has been called.

=over 4

=item B<NUM_OF_FIELDS>

  $sth->{NUM_OF_FIELDS}  ($)

Number of fields (columns) the prepared statement will return. Non-select
statements will have NUM_OF_FIELDS == 0.


=item B<NUM_OF_PARAMS>

  $sth->{NUM_OF_PARAMS}  ($)

The number of parameters (placeholders) in the prepared statement.
See SUBSTITUTION VARIABLES below for more details.


=item B<NAME>

  $sth->{NAME}           (\@)

Returns a I<reference> to an array of field names for each column. The
names may contain spaces but should not be truncated or have any
trailing space.

  print "First column name: $sth->{NAME}->[0]\n";


=item B<NULLABLE>

  $sth->{NULLABLE}       (\@)

Returns a I<reference> to an array indicating the possibility of each
column returning a null.

  print "First column may return NULL\n" if $sth->{NULLABLE}->[0];


=item B<CursorName>

  $sth->{CursorName}     ($)

Returns the name of the cursor associated with the statement handle if
available. If not available or the database driver does not support the
C<"where current of ..."> SQL syntax then it returns undef.


=back


=head1 TRANSACTIONS

Transactions are a fundamental part of any quality database system. They
protect against errors and database corruption by ensuring that changes
to the database take place in atomic (indivisible, all-or-nothing) units.

See L</AutoCommit> for details of using AutoCommit with various types of
database.

=head2 Robust Applications

This section applies to databases which support transactions and where
AutoCommit is off.

The recommended way to implement robust transactions in Perl
applications is to make use of S<C<eval { ... }>> (which is very fast,
unlike S<C<eval "...">>).

  eval {
      foo(...)
  };
  if ($@) {
      $dbh->rollback;
      # add other application on-error-clean-up code here
  }
  else {
      $dbh->commit;
  }

The code in foo(), or any other code executed from within the curly braces,
can be implemented in this way:

  $h->method(@args) || die $h->errstr

or the $h->{RaiseError} attribute can be set on, in which case the DBI
will automatically croak() on error so you don't have to test the
return value of each method call. See L</RaiseError> for more details.

A major advantage of the eval approach is that the transaction will be
properly rolled back if I<any> code in the inner application croaks or
dies for any reason.


=head1 SIMPLE EXAMPLE

  my $dbh = DBI->connect("dbi:Oracle:$data_source", $user, $password)
      || die "Can't connect to $data_source: $DBI::errstr";

  my $sth = $dbh->prepare( q{
          SELECT name, phone
          FROM mytelbook
  }) || die "Can't prepare statement: $DBI::errstr";

  my $rc = $sth->execute
      || die "Can't execute statement: $DBI::errstr";

  print "Query will return $sth->{NUM_FIELDS} fields.\n\n";

  print "$sth->{NAME}->[0]: $sth->{NAME}->[1]\n";
  while (($name, $phone) = $sth->fetchrow_array) {
      print "$name: $phone\n";
  }
  # check for problems which may have terminated the fetch early
  warn $DBI::errstr if $DBI::err;

  $sth->finish;


=head1 DEBUGGING

In addition to the L</trace> method you can enable the same trace
information by setting the DBI_TRACE environment variable before
starting perl.

On unix-like systems using a bourne-like shell you can do this easily
for a single command:

  DBI_TRACE=2 perl your_test_script.pl

If DBI_TRACE is set to a non-numeric value then it is assumed to
be a file name and the trace level will be set to 2 with all trace
output will be appended to that file.

See also the L</trace> method.


=head1 WARNINGS

The DBI is I<alpha> software. It is I<only> 'alpha' because the
interface (api) is not finalised. The alpha status does not reflect
code quality.

=head1 SEE ALSO

=head2 Database Documentation

SQL Language Reference Manual.

=head2 Books and Journals

 Programming Perl 2nd Ed. by Larry Wall, Tom Christiansen & Randal Schwartz.
 Learning Perl by Randal Schwartz.

 Dr Dobb's Journal, November 1996.
 The Perl Journal, April 1997.

=head2 Manual Pages

L<perl(1)>, L<perlmod(1)>, L<perlbook(1)>

=head2 Mailing List

The dbi-users mailing list is the primary means of communication among
uses of the DBI and its related modules. Subscribe and unsubscribe via:

 http://www.fugue.com/dbi

Mailing list archives are held at:

 http://www.rosat.mpe-garching.mpg.de/mailing-lists/PerlDB-Interest/
 http://www.coe.missouri.edu/~faq/lists/dbi.html

=head2 Assorted Related WWW Links

The DBI 'Home Page' (not maintained by me):

 http://www.hermetica.com/technologia/DBI

Other related links:

 http://www-ccs.cs.umass.edu/db.html
 http://www.odmg.org/odmg93/updates_dbarry.html
 http://www.jcc.com/sql_stnd.html
 ftp://alpha.gnu.ai.mit.edu/gnu/gnusql-0.7b3.tar.gz

=head2 FAQ

Please also read the DBI FAQ which is installed as a DBI::FAQ module so
you can use perldoc to read it by executing the C<perldoc DBI::FAQ> command.

=head1 AUTHORS

DBI by Tim Bunce.  This pod text by Tim Bunce, J. Douglas Dunlop,
Jonathan Leffler and others.  Perl by Larry Wall and the
perl5-porters.

=head1 COPYRIGHT

The DBI module is Copyright (c) 1995,1996,1997 Tim Bunce. England.
The DBI module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

This document is Copyright (c) 1997 by Tim Bunce. All rights reserved.
Permission to distribute this document, in full or part, via email,
usenet or ftp/http archives or printed copy is granted providing that
no charges are involved, reasonable attempt is made to use the most
current version, and all credits and copyright notices are retained.
Requests for other distribution rights, including incorporation in
commercial products, such as books, magazine articles, or CD-ROMs
should be made to Tim.Bunce@ig.co.uk (please I<don't> use this mail
address for other DBI related mail - use the dbi-users mailing list).

=head1 ACKNOWLEDGEMENTS

I would like to acknowledge the valuable contributions of the many
people I have worked with on the DBI project, especially in the early
years (1992-1994): Kevin Stock, Buzz Moschetti, Kurt Andersen, Ted Lemon,
William Hails, Garth Kennedy, Michael Peppler, Neil S. Briscoe,
David J. Hughes, Jeff Stander, Forrest D Whitcher, Larry Wall, Jeff Fried,
Roy Johnson, Paul Hudson, Georg Rehfeld, Steve Sizemore, Ron Pool,
Jon Meek, Tom Christiansen, Steve Baumgarten, Randal Schwartz,
and a whole lot more.

=head1 SUPPORT / WARRANTY

The DBI is free software. IT COMES WITHOUT WARRANTY OF ANY KIND.

Commercial support agreements for Perl and the DBI, DBD::Oracle and
Oraperl modules can be arranged via The Perl Clinic. See
http://www.perl.co.uk/tpc for more details.

=head1 OUTSTANDING ISSUES TO DO

	data types (ISO type numbers and type name conversions)
	error handling
	data dictionary methods
	test harness support methods
	portability
	blob_read
	etc

=head1 FREQUENTLY ASKED QUESTIONS

See the DBI FAQ for a more comprehensive list of FAQs. Use the
C<perldoc DBI::FAQ> command to read it.

=head2 Why doesn't my CGI script work right?

Read the information in the references below.  Please do I<not> post
CGI related questions to the dbi-users mailing list (or to me).

 http://www.perl.com/perl/faq/idiots-guide.html
 http://www3.pair.com/webthing/docs/cgi/faqs/cgifaq.shtml
 http://www.perl.com/perl/faq/perl-cgi-faq.html
 http://www-genome.wi.mit.edu/WWW/faqs/www-security-faq.html
 http://www.boutell.com/faq/
 http://www.perl.com/perl/faq/

General problems and good ideas:

 Use the CGI::ErrorWrap module.
 Remember that many env vars won't be set for CGI scripts

=head2 How can I maintain a WWW connection to a database?

For information on the Apache httpd server and the mod_perl module see
http://www.osf.org/~dougm/apache

=head2 A driver build fails because it can't find DBIXS.h

The installed location of the DBIXS.h file changed with 0.77 (it was
being installed into the 'wrong' directory but that's where driver
developers came to expect it to be). The first thing to do is check to
see if you have the latest version of your driver. Driver authors will
be releasing new versions which use the new location. If you have the
latest then ask for a new release. You can edit the Makefile.PL file
yourself. Change the part which reads C<"-I.../DBI"> so it reads
C<"-I.../auto/DBI"> (where ... is a string of non-space characters).

=head2 Has the DBI and DBD::Foo been ported to NT / Win32?

The latest version of the DBI and, at least, the DBD::Oracle module
will build - without changes - on NT/Win32 I<if> your are using the
standard Perl 5.004 and I<not> the ActiveWare port.

Jeffrey Urlwin <jurlwin@access.digex.net> (or <jurlwin@hq.caci.com>) is
helping me with the port (actually he's doing it and I'm integrating
the changes :-).

=head2 What about ODBC?

See the statement and following notes in the DBI README file.


=head1 KNOWN DRIVER MODULES

=over 4

=item Oracle - DBD::Oracle

 Author:  Tim Bunce
 Email:   dbi-users@fugue.com

=item Ingres - DBD::Ingres

 Author:  Henrik Tougaard
 Email:   ht@datani.dk,  dbi-users@fugue.com

=item mSQL - DBD::mSQL

=item DB2 - DBD::DB2

=item Empress - DBD::Empress

=item Informix - DBD::Informix

 Author:  Jonathan Leffler
 Email:   johnl@informix.com, dbi-users@fugue.com

=item Solid - DBD::Solid

 Author:  Thomas Wenrich
 Email:   wenrich@site58.ping.at, dbi-users@fugue.com

=item Postgres - DBD::Pg

 Author:  Edmund Mergl
 Email:   mergl@nadia.s.bawue.de, dbi-users@fugue.com

=item Fulcrum SearchServer - DBD::Fulcrum

 Author:  Davide Migliavacca
 Email:   davide.migliavacca@inferentia.it

=back

=head1 OTHER RELATED WORK AND PERL MODULES

=over 4

=item Apache::DBI by E.Mergl@bawue.de

To be used with the Apache daemon together with an embedded perl
interpreter like mod_perl. Establishes a database connection which
remains open for the lifetime of the http daemon. This way the CGI
connect and disconnect for every database access becomes superfluous.

=item JDBC Server by Stuart 'Zen' Bishop <zen@bf.rmit.edu.au>

The server is written in Perl. The client classes that talk to it are 
of course in Java. Thus, a Java applet or application will be able to 
comunicate via the JDBC API with any database that has a DBI driver installed.
The URL used is in the form jdbc:dbi://host.domain.etc:999/Driver/DBName.
It seems to be very similar to some commercial products, such as jdbcKona.

=item Remote Proxy DBD support

  Carl Declerck <carl@miskatonic.inbe.net>
  Terry Greenlaw <z50816@mip.mar.lmco.com>

Carl is developing a generic proxy object module which could form the basis
of a DBD::Proxy driver in the future. Terry is doing something similar.

=item SQL Parser - Stephen Zander <stephen.zander@mckesson.com>

Based on the O'Reilly lex/yacc book examples and byacc.

=back

=cut
