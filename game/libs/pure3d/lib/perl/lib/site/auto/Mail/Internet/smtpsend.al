# NOTE: Derived from ./blib/lib/Mail/Internet.pm.  Changes made here will be lost.
package Mail::Internet;

sub smtpsend;

use Carp;
use Mail::Util qw(mailaddress);
use Mail::Address;
use Net::Domain qw(hostname);
use Net::SMTP;
use strict;

 sub smtpsend 
{
    my $src  = shift;
    my %opt = @_;
    my $host = $opt{Host};
    my $noquit = 0;
    my $smtp;

    unless(defined($host)) {
	my @hosts = qw(mailhost localhost);
	unshift(@hosts, split(/:/, $ENV{SMTPHOSTS})) if(defined $ENV{SMTPHOSTS});

	foreach $host (@hosts) {
	    $smtp = eval { Net::SMTP->new($host) };
	    last if(defined $smtp);
	}
    }
    elsif(ref($host) && UNIVERSAL::isa($host,'Net::SMTP')) {
	$smtp = $host;
	$noquit = 1;
    }
    else {
	$smtp = eval { Net::SMTP->new($host) };
    }

    return ()
	unless(defined $smtp);

    $smtp->hello( hostname() );
    my $hdr = $src->head->dup;

    _prephdr($hdr);

    # Who is it to

    my @rcpt = map { ref($_) ? @$_ : $_ } grep { defined } @opt{'To','Cc','Bcc'};
    @rcpt = map { $hdr->get($_) } qw(To Cc Bcc)
	unless @rcpt;
    my @addr = map($_->address, Mail::Address->parse(@rcpt));

    return ()
	unless(@addr);

    $hdr->delete('Bcc'); # Remove blind Cc's

    # Send it

    my $ok = $smtp->mail( mailaddress() ) &&
		$smtp->to(@addr) &&
		$smtp->data(join("", @{$hdr->header},"\n",@{$src->body}));

    $smtp->quit
	unless $noquit;

    $ok ? @addr : ();
}

1;
