package Win32::IPC;

$VERSION = '0.02';

=head1 NAME

Win32::IPC - Support module for Semaphores, Mutexes,Process
and ChangeNotify Synchronization

=head1 SYNOPSIS

	use Win32::Process;
	#Create objects.
	
	Win32::Process::WaitForMultipleObjects(@ListOfObjects,$WaitAll,$Timeout);

=head1 DESCRIPTION

This module is loaded by any of the IPC supporting modules. (listed above).
It supplies the WaitForMultipleObjects call to those objects.

=cut

require Exporter;
require DynaLoader;
require AutoLoader;

@ISA = qw(Exporter DynaLoader);
@EXPORT = qw(
	INFINITE
	WaitForMultipleObjects
);

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.  If a constant is not found then control is passed
    # to the AUTOLOAD in AutoLoader.

    my($constname);
    ($constname = $AUTOLOAD) =~ s/.*:://;
    #reset $! to zero to reset any current errors.
    $!=0;
    my $val = constant($constname, @_ ? $_[0] : 0);
    if ($! != 0) {
	if ($! =~ /Invalid/) {
	    $AutoLoader::AUTOLOAD = $AUTOLOAD;
	    goto &AutoLoader::AUTOLOAD;
	}
	else {
	    ($pack,$file,$line) = caller;
	    die "Your vendor has not defined Win32::IPC macro $constname, used at $file line $line.";
	}
    }
    eval "sub $AUTOLOAD { $val }";
    goto &$AUTOLOAD;
}

bootstrap Win32::IPC;


1;
__END__
