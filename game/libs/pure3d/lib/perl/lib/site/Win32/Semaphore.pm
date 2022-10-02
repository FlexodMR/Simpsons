package Win32::Semaphore;
use Win32::IPC;
require Exporter;
require DynaLoader;
require AutoLoader;

@ISA = qw(Exporter DynaLoader Win32::IPC);

$VERSION = '0.01';

=head1	NAME

Win32::Semaphore - allow synchronization with Win32 Semaphore objects.

=head1 SYNOPSIS
	use Win32::Semaphore;

	Win32::Semaphore::Create($SemObj,0,1,"MySem");
	$SemObj->Wait(INFINITE);


=head1 DESCRIPTION

This module allows the user to access Win32 semaphores.

=head1 METHODS

=over 8

=item Win32::Semaphore::Create($SemObject,$Initial,$Max,$Name)

Creates a semaphore object.

    Args:
	$SemObject	container for the sem objects
 	$Initial	initial count of the semaphore
	$Max 		max count of the semaphore
	$Name		name (string)


=item Win32::Semaphore::Open($SemObject, $Name)

Open an already created named semaphore.

    Args:
	$SemObject	container for the sem object
	$Name		name of the semaphore to open


=item $SemObj->Release($Count,$lastval)

Release ownership of a semphore object.

    Args:
	$Count		amount to increase semaphore count
	$lastval	previous value of the semaphore count


=item $SemObj->Wait($TimeOut)		

Wait for ownership of a semaphore object.

=back

=cut

bootstrap Win32::Semaphore;

1;
__END__
