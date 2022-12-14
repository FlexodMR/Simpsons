package Mail::Mailer::sendmail;
use vars qw(@ISA);
require Mail::Mailer::rfc822;
@ISA = qw(Mail::Mailer::rfc822);


sub exec {
    my($self, $exe, $args, $to) = @_;
    # Fork and exec the mailer (no shell involved to avoid risks)

    # We should always use a -t on sendmail so that Cc: and Bcc: work
    #  Rumor: some sendmails may ignore or break with -t (AIX?)
    exec(( $exe, '-t', @$args, @$to ));
}
