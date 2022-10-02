#
# $Id: Base64.pm,v 2.5 1997/07/10 11:30:14 aas Exp $

package MIME::Base64;

=head1 NAME

encode_base64 - Encode string using base64 encoding

decode_base64 - Decode base64 string

=head1 SYNOPSIS

 use MIME::Base64;

 $encoded = encode_base64('Aladdin:open sesame');
 $decoded = decode_base64($encoded);

=head1 DESCRIPTION

This module provides functions to encode and decode strings into the
Base64 encoding specified in RFC 2045 - I<MIME (Multipurpose Internet
Mail Extensions)>. The Base64 encoding is designed to represent
arbitrary sequences of octets in a form that need not be humanly
readable. A 65-character subset ([A-Za-z0-9+/=]) of US-ASCII is used,
enabling 6 bits to be represented per printable character.

The following functions are provided:

=over 4

=item encode_base64($str, [$eol])

Encode data by calling the encode_base64() function.  The first
argument is the string to encode.  The second argument is the line
ending sequence to use (it is optional and defaults to C<"\n">).  The
returned encoded string is broken into lines of no more than 76
characters each and it will end with $eol unless it is empty.  Pass an
empty string as second argument if you do not want the encoded string
broken into lines.

=item decode_base64($str)

Decode a base64 string by calling the decode_base64() function.  This
function takes a single argument which is the string to decode and
returns the decoded data.  Any character not part of the legal base64
chars is ignored.

=back

If you prefer not to import these routines into your namespace you can
call them as:

    use MIME::Base64 ();
    $encoded = MIME::Base64::encode($decoded);
    $decoded = MIME::Base64::decode($encoded);


=head1 COPYRIGHT

Copyright 1995-1997 Gisle Aas.

This library is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

Distantly based on LWP::Base64 written by Martijn Koster
<m.koster@nexor.co.uk> and Joerg Reichelt <j.reichelt@nexor.co.uk> and
code posted to comp.lang.perl <3pd2lp$6gf@wsinti07.win.tue.nl> by Hans
Mulder <hansm@wsinti07.win.tue.nl>

The XS implementation use code from metamail.  Copyright 1991 Bell
Communications Research, Inc. (Bellcore)

=cut

use strict;
use vars qw(@ISA @EXPORT $VERSION $OLD_CODE);

require Exporter;
require DynaLoader;
@ISA = qw(Exporter DynaLoader);
@EXPORT = qw(encode_base64 decode_base64);

$VERSION = '2.03';

eval { bootstrap MIME::Base64 $VERSION; };
if ($@) {
    # can't bootstrap XS implementation, use perl implementation
    *encode_base64 = \&old_encode_base64;
    *decode_base64 = \&old_decode_base64;

    $OLD_CODE = $@;
    #warn $@ if $^W;
}

# Historically this module has been implemented as pure perl code.
# The XS implementation runs about 20 times faster, but the perl
# code might be more portable, so it is still supported.

use integer;

sub old_encode_base64 ($;$)
{
    my $res = "";
    my $eol = $_[1];
    $eol = "\n" unless defined $eol;
    pos($_[0]) = 0;                          # ensure start at the beginning
    while ($_[0] =~ /(.{1,45})/gs) {
	$res .= substr(pack('u', $1), 1);
	chop($res);
    }
    $res =~ tr|` -_|AA-Za-z0-9+/|;               # `# help emacs
    # fix padding at the end
    my $padding = (3 - length($_[0]) % 3) % 3;
    $res =~ s/.{$padding}$/'=' x $padding/e if $padding;
    # break encoded string into lines of no more than 76 characters each
    if (length $eol) {
	$res =~ s/(.{1,76})/$1$eol/g;
    }
    $res;
}


sub old_decode_base64 ($)
{
    local($^W) = 0; # unpack("u",...) gives bogus warning in 5.00[123]

    my $str = shift;
    my $res = "";

    $str =~ tr|A-Za-z0-9+=/||cd;            # remove non-base64 chars
    if (length($str) % 4) {
	require Carp;
	Carp::croak("Base64 decoder requires string length to be a multiple of 4")
    }
    $str =~ s/=+$//;                        # remove padding
    $str =~ tr|A-Za-z0-9+/| -_|;            # convert to uuencoded format
    while ($str =~ /(.{1,60})/gs) {
	my $len = chr(32 + length($1)*3/4); # compute length byte
	$res .= unpack("u", $len . $1 );    # uudecode
    }
    $res;
}

# Set up aliases so that these functions also can be called as
#
#    MIME::Base64::encode();
#    MIME::Base64::decode();

*encode = \&encode_base64;
*decode = \&decode_base64;

1;
