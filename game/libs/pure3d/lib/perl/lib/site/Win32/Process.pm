package Win32::Process;

use Win32::IPC;
require Exporter;
require DynaLoader;
require AutoLoader;
@ISA = qw(Exporter DynaLoader Win32::IPC);

$VERSION = '0.01';

=head1 NAME

Win32::Process - Create and manipulate processes.

=head1 SYNOPSIS
	use Win32::Process;
	use Win32;        
	
	sub ErrorReport{
		print Win32::FormatMessage( Win32::GetLastError() );
	}
	
	Win32::Process::Create($ProcessObj,
				"D:\\winnt35\\system32\\notepad.exe",
				"notepad temp.txt",
				0,
				NORMAL_PRIORITY_CLASS,
				".")|| die ErrorReport();
	
	$ProcessObj->Suspend();
	$ProcessObj->Resume();
	$ProcessObj->Wait(INFINITE);

=head1  DESCRIPTION

This module allows for control of processes in Perl.

=head1 METHODS

=over 8

=item Win32::Process::Create($obj,$appname,$cmdline,$iflags,$cflags,$curdir)

Creates a new process.

    Args:

	$obj		container for process object
	$appname	full path name of executable module
	$cmdline	command line args
	$iflags		flag: inherit calling processes handles or not
	$cflags		flags for creation (see exported vars below)
	$curdir		working dir of new process

=item $ProcessObj->Suspend()

Suspend the process associated with the $ProcessObj.

=item $ProcessObj->Resume()

Resume a suspended process.

=item $ProcessObj->Kill( $ExitCode )

Kill the associated process, have it die with exit code $ExitCode.

=item $ProcessObj->GetPriorityClass($class)

Get the priority class of the process.

=item $ProcessObj->SetPriorityClass( $class )

Set the priority class of the process (see exported values below for
options).

=item $ProcessObj->GetExitCode( $ExitCode )

Retrieve the exitcode of the process.

=item $ProcessObj->Wait($Timeout)

Wait for the process to die. forever = INFINITE

=back

=cut

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
@EXPORT = qw(
	CREATE_DEFAULT_ERROR_MODE
	CREATE_NEW_CONSOLE
	CREATE_NEW_PROCESS_GROUP
	CREATE_NO_WINDOW
	CREATE_SEPARATE_WOW_VDM
	CREATE_SUSPENDED
	CREATE_UNICODE_ENVIRONMENT
	DEBUG_ONLY_THIS_PROCESS
	DEBUG_PROCESS
	DETACHED_PROCESS
	HIGH_PRIORITY_CLASS
	IDLE_PRIORITY_CLASS
	INFINITE
	NORMAL_PRIORITY_CLASS
	REALTIME_PRIORITY_CLASS
	THREAD_PRIORITY_ABOVE_NORMAL
	THREAD_PRIORITY_BELOW_NORMAL
	THREAD_PRIORITY_ERROR_RETURN
	THREAD_PRIORITY_HIGHEST
	THREAD_PRIORITY_IDLE
	THREAD_PRIORITY_LOWEST
	THREAD_PRIORITY_NORMAL
	THREAD_PRIORITY_TIME_CRITICAL
);

sub AUTOLOAD {
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
	    die "Your vendor has not defined Win32::Process macro $constname, used at $file line $line.";
	}
    }
    eval "sub $AUTOLOAD { $val }";
    goto &$AUTOLOAD;
}

bootstrap Win32::Process;

1;
__END__
