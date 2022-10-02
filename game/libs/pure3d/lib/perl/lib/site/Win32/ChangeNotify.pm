package Win32::ChangeNotify;
use Carp;

$VERSION = '0.01';

=head1 NAME

ChangeNotify - monitor events related to files

=head1 SYNOPSIS

	use Win32::ChangeNotify;

	Win32::ChangeNotify::FindFirst($Obj,$PathName,$WatchSubTreeFlag,$filter);
	$Obj->FindNext();
	$Obj->Wait(INFINITE) or warn "Something failed: $!\n";
	# There has been a change.
	$Obj->Close();


=head1 DESCRIPTION

This module allows the user to create a change notification event object
in Perl.  This object allows the Perl program to monitor events relating
to files and directory trees.

=head1 MEMBERS

The ChangeNotify module is written entirely in C++. So here is a 
list of the members etc. (Note: no functions are exported)

=over 8

=item FindFirst($Obj,$PathName,$WathSubTree,$Filter)

This is the constructor for the object. An instantiated object is
returned in $Obj.
    Args:
	$Obj		The container for the created object.
	$WatchSubTree	A boolean value defining whether the subtree
			should be included.
	$Filter		See the exported values below to see the options
			for this.

=item FindNext()

This method starts the monitoring.

=item Wait( $TimeOut )

This method starts the waiting on the change.

=item Close()

This method stops the monitoring.

=back

=cut

use Win32::IPC;
require Exporter;
require DynaLoader;
require AutoLoader;

@ISA = qw(Exporter DynaLoader Win32::IPC);
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
@EXPORT = qw(
	FILE_NOTIFY_CHANGE_ATTRIBUTES
	FILE_NOTIFY_CHANGE_DIR_NAME
	FILE_NOTIFY_CHANGE_FILE_NAME
	FILE_NOTIFY_CHANGE_LAST_WRITE
	FILE_NOTIFY_CHANGE_SECURITY
	FILE_NOTIFY_CHANGE_SIZE
	INFINITE
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
	    die "Your vendor has not defined Win32::ChangeNotify macro $constname, used at $file line $line.";
	}
    }
    eval "sub $AUTOLOAD { $val }";
    goto &$AUTOLOAD;
}

bootstrap Win32::ChangeNotify;

1;
__END__
