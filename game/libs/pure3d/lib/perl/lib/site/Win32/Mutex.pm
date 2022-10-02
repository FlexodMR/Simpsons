package Win32::Mutex;
use Win32::IPC;
require Exporter;
require DynaLoader;
require AutoLoader;

@ISA = qw(Exporter DynaLoader Win32::IPC);

$VERSION = '0.01';

=head1 NAME

Win32::Mutex - create mutex objects in perl.

=head1 SYNOPSIS

	use Win32::Mutex;

	Win32::Mutex::Create($MutObj,$Initial,$Name);
	$MutObj->Wait(INFINITE);

=head1 DESCRIPTION

This module creates access to the Win32 mutex objects.  The Wait and
WaitForMultipleObjects calls are inherited from the Win32::IPC module.

=head1 METHODS AND CONSTRUCTORS

=over 8

=item Create($MutObj,$Initial,$Name)

Creates a mutex object in $MutObj.

   Args:
	$Initial	Flags to decide initial ownership.(TRUE = I own it).
	$Name		String to name the mutex.

=item Open($MutObj,$Name)

Create a mutex object from an already created mutex

    Args:
	$MutObj		Container for mutex object.
	$Name		name of already created mutex.

=item $MutObj->Release()

Release ownership of a mutex.

=item $MutObj->Wait($Timeout)

Wait for ownership of a mutex.

    Args:
	$Timeout	amount of time you will wait.forever = INFINITE;


=back

=cut

bootstrap Win32::Mutex;

1;
__END__
