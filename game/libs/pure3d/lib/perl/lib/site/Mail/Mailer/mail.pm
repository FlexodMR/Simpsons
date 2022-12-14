package Mail::Mailer::mail;
use vars qw(@ISA);
@ISA = qw(Mail::Mailer);

my %hdrs = qw(Cc ~c Bcc ~b Subject ~s);

sub set_headers {
    my $self = shift;
    my $hdrs = shift;
    my($k,$v);

    while(($k,$v) = each %hdrs) {
	print $self join(" ",$v, $self->to_array($hdrs->{$k})), "\n"
		if defined $hdrs->{$k};
    }
}

sub exec {
    open(STDOUT,">/dev/null"); # this is not portable !!!!
    open(STDERR,">/dev/null"); # this is not portable !!!!
    shift->SUPER::exec(@_);
}
1;
