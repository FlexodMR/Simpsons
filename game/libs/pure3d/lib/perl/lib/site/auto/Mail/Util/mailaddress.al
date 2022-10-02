# NOTE: Derived from ./blib/lib/Mail/Util.pm.  Changes made here will be lost.
package Mail::Util;

sub mailaddress {

    ##
    ## Return imediately if already found
    ##

    return $mailaddress
	if(defined $mailaddress);

    ##
    ## Get user name from environment
    ##

    $mailaddress = $ENV{MAILADDRESS};

    unless ($mailaddress || $^O ne 'MacOS') {
	require Mac::InternetConfig;
	Mac::InternetConfig->import();

	$mailaddress = $InternetConfig{kICEmail()};
    }

    $mailaddress ||= $ENV{USER} ||
                     $ENV{LOGNAME} ||
                     eval { (getpwuid($>))[6] } ||
                     "postmaster";

    ##
    ## Add domain if it does not exist
    ##

    $mailaddress .= '@' . maildomain()
	unless($mailaddress =~ /\@/);

    $mailaddress =~ s/(^.*<|>.*$)//g;

    $mailaddress;
}

1;
