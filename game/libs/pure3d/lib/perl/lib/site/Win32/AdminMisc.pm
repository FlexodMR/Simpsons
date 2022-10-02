package Win32::AdminMisc;

$VERSION = '0.03';

#
#AdminMisc.pm
#   Written by Hip.Com but hacked to death by Dave Roth <rothd@roth.net>

require Exporter;
require DynaLoader;

die "The Win32::AdminMisc module works only on Windows NT" if(!Win32::IsWinNT() );

@ISA= qw( Exporter DynaLoader );
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
@EXPORT = qw(
	FILTER_TEMP_DUPLICATE_ACCOUNT
	FILTER_NORMAL_ACCOUNT
	FILTER_INTERDOMAIN_TRUST_ACCOUNT
	FILTER_WORKSTATION_TRUST_ACCOUNT
	FILTER_SERVER_TRUST_ACCOUNT
	UF_TEMP_DUPLICATE_ACCOUNT
	UF_NORMAL_ACCOUNT
	UF_INTERDOMAIN_TRUST_ACCOUNT
	UF_WORKSTATION_TRUST_ACCOUNT
	UF_SERVER_TRUST_ACCOUNT
	UF_MACHINE_ACCOUNT_MASK
	UF_ACCOUNT_TYPE_MASK
	UF_DONT_EXPIRE_PASSWD
	UF_SETTABLE_BITS
	UF_SCRIPT
	UF_ACCOUNTDISABLE
	UF_HOMEDIR_REQUIRED
	UF_LOCKOUT
	UF_PASSWD_NOTREQD
	UF_PASSWD_CANT_CHANGE
	USE_FORCE
	USE_LOTS_OF_FORCE
	USE_NOFORCE
	USER_PRIV_MASK
	USER_PRIV_GUEST
	USER_PRIV_USER
	USER_PRIV_ADMIN
);

=head1 NAME

Win32::AdminMisc - manage network groups and users in perl

=head1 SYNOPSIS

    use Win32::AdminMisc;

=head1 DESCRIPTION

This module offers control over the administration of groups and users over
a network.

=head1 FUNCTIONS

=head2 NOTE:

All of the functions return FALSE (0) if they fail, unless otherwise noted.
server is optional for all the calls below. (if not given the local machine
is assumed.)

=over 10

=item UserGetAttributes(server, userName, password, passwordAge, privilege, homeDir, comment, flags, scriptPath)

Gets password, passwordAge, privilege, homeDir, comment, flags, and
scriptPath for user.

=item UserSetAttributes(server, userName, password, passwordAge, privilege, homeDir, comment, flags, scriptPath)

Sets password, passwordAge, privilege, homeDir, comment, flags, and
scriptPath for user.

=item UserChangePassword(domainname, username, oldpassword, newpassword)

Changes a users password. Can be run under any account.

=item UsersExist(server, userName)

Checks if a User exists.

=item GetUsers(server, filter, \@userArray)

Fills userArray with the all of the User names.

=item GroupCreate(server, group, comment)

Creates a group.

=item GroupDelete(server, group)

Deletes a group.

=item GroupGetAttributes(server, groupName, comment)

Gets the comment.

=item GroupSetAttributes(server, groupName, comment)

Sets the comment.

=item GroupAddUsers(server, groupName, users)

Adds a user to a group.

=item GroupDelUsers(server, groupName, users)

Deletes a users from a group.

=item GroupIsMember(server, groupName, user)

Returns TRUE if user is a member of groupName.

=item GroupGetMembers(server, groupName, \@userArray)

Fills userArray with the members of groupName.

=item LocalGroupCreate(server, group, comment)

Creates a local group.

=item LocalGroupDelete(server, group)

Deletes a local group.

=item LocalGroupGetAttributes(server, groupName, comment)

Gets the comment.

=item LocalGroupSetAttributes(server, groupName, comment)

Sets the comment.

=item LocalGroupIsMember(server, groupName, user)

Returns TRUE if user is a member of groupName.

=item LocalGroupGetMembers(server, groupName, \@userArray)

Fills userArray with the members of groupName.

=item LocalGroupAddUsers(server, groupName, users)

Adds a user to a group.

=item LocalGroupDelUsers(server, groupName, users)

Deletes a users from a group.

=back

=cut

sub AUTOLOAD {

    local($constname);
    ($constname = $AUTOLOAD) =~ s/.*:://;
    #reset $! to zero to reset any current errors.
    $!=0;
    $val = constant($constname, @_ ? $_[0] : 0);
    if ($! != 0) {
	if ($! =~ /Invalid/) {
	    $AutoLoader::AUTOLOAD = $AUTOLOAD;
	    goto &AutoLoader::AUTOLOAD;
	}
	else {
	    ($pack,$file,$line) = caller;
        die "Your vendor has not defined Win32::AdminMisc macro $constname, used in $file at line $line.";
	}
    }
    eval "sub $AUTOLOAD { $val }";
    goto &$AUTOLOAD;
}

bootstrap Win32::AdminMisc;

1;
__END__

	









