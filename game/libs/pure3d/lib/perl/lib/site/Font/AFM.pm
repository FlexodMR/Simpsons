# This -*- perl -*-  module is a simple parser for Adobe Font Metrics files.
# $Id: AFM.pm,v 1.11 1996/06/13 08:15:11 aas Exp $

package Font::AFM;

=head1 NAME

Font::AFM - Interface to Adobe Font Metrics files

=head1 SYNOPSIS

 use Font::AFM;
 $h = new Font::AFM "Helvetica";
 $copyright = $h->Notice;
 $w = $h->Wx->{"aring"};
 $w = $h->stringwidth("Gisle", 10);
 $h->dump;  # for debugging

=head1 DESCRIPTION

This module implements the Font::AFM class. Objects of this class are
initialised from an AFM-file and allows you to obtain information
about the font and the metrics of the various glyphs in the font.

All measurements in AFM files are given in terms of units equal to
1/1000 of the scale factor of the font being used. To compute actual
sizes in a document, these amounts should be multiplied by (scale
factor of font)/1000.

The following methods are available:

=over 3

=item new($fontname)

Object constructor. Takes the name of the font as argument. It will
croak if the font can not be found.

=item latin1_wx_table()

Returns a 256 element array, where each element contains the width
of the corresponding character in the iso-8859-1 character set.

=item stringwidth($string, [$fontsize])

Returns the width of the string passed as argument. The string is
assumed to be encoded in the iso-8859-1 character set.  A second
argument can be used to scale the width according to the font size.

=item FontName

The name of the font as presented to the PostScript language
C<findfont> operator, for instance "Times-Roman".

=item FullName

Unique, human-readable name for an individual font, for instance
"Times Roman".

=item FamilyName

Human-readable name for a group of fonts that are stylistic variants
of a single design. All fonts that are member of such a group should
have exactly the same C<FamilyName>. Example of a family name is
"Times".

=item Weight

Human-readable name for the weight, or "boldness", attribute of a font.
Exampes are C<Roman>, C<Bold>, C<Light>.

=item ItalicAngle

Angle in degrees counterclockwise from the vertical of the dominant
vertical strokes of the font.

=item IsFixedPitch

If the value is C<true>, it indicated that the font is a fixed-pitch
(monospaced) font.

=item FontBBox

A string of four numbers giving the lower-left x, lower-left y,
upper-right x, and upper-right y of the font bounding box. The font
bounding box is the smallest rectangle enclosing the shape that would
result if all the characters of the font were placed with their
origins coincident, and then painted.

=item UnderlinePosition

Recommended distance from the baseline for positioning underline
stokes. This number is the y coordinate of the center of the stroke.

=item UnderlineThickness

Recommended stroke width for underlining.

=item Version

Version number of the font.

=item Notice

Trademark or copyright notice, if applicable.

=item Comment

Comments found in the AFM file.

=item EncodingScheme

The name of the standard encoding scheme for the font. Most Adobe
fonts use the C<AdobeStandardEncoding>. Special fonts might state
C<FontSpecific>.

=item CapHeight

Usually the y-value of the top of the capital H.

=item XHeight

Typically the y-value of the top of the lowercase x.

=item Ascender

Typically the y-value of the top of the lowercase d.

=item Descender

Typically the y-value of the bottom of the lowercase p.

=item Wx

Returns a hash table that maps from glyph names to the width of that glyph.

=item BBox

Returns a hash table that maps from glyph names to bounding box information.
The bounding box consist of 4 numbers: llx, lly, urx, ury.

=item dump

Dumps the content of the Font::AFM object to STDOUT.  Might sometimes
be useful for debugging.

=back


The AFM specification can be found at:

   ftp://ftp.adobe.com/pub/adobe/DeveloperSupport/TechNotes/PSfiles/5004.AFM_Spec.ps


=head1 ENVIRONMENT

=over 10

=item METRICS

Contains the path to seach for AFM-files.  Format is as for the PATH
environment variable. The default path built into this library is:

 /usr/lib/afm:/usr/local/lib/afm:/usr/openwin/lib/fonts/afm/:.

=back


=head1 BUGS

Kerning data and composite character data is not yet parsed.
Ligature data is not parsed.


=head1 COPYRIGHT

Copyright 1995 Gisle Aas. All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

#-------perl resumes here--------------------------------------------

use Carp;

$VERSION = sprintf("%d.%02d", q$Revision: 1.11 $ =~ /(\d+)\.(\d+)/);
sub ModuleVersion { $VERSION; }


# The metrics_path is used to locate metrics files
#
$metrics_path = $ENV{METRICS} ||
    "/usr/lib/afm:/usr/local/lib/afm:/usr/openwin/lib/fonts/afm/:.";
@metrics_path = split(/:/, $metrics_path);
foreach (@metrics_path) { s,/$,, }    # reove trailing slashes

@ISOLatin1Encoding = qw(
 .notdef .notdef .notdef .notdef .notdef .notdef .notdef .notdef
 .notdef .notdef .notdef .notdef .notdef .notdef .notdef .notdef
 .notdef .notdef .notdef .notdef .notdef .notdef .notdef .notdef
 .notdef .notdef .notdef .notdef .notdef .notdef .notdef .notdef space
 exclam quotedbl numbersign dollar percent ampersand quoteright
 parenleft parenright asterisk plus comma minus period slash zero one
 two three four five six seven eight nine colon semicolon less equal
 greater question at A B C D E F G H I J K L M N O P Q R S
 T U V W X Y Z bracketleft backslash bracketright asciicircum
 underscore quoteleft a b c d e f g h i j k l m n o p q r s
 t u v w x y z braceleft bar braceright asciitilde .notdef .notdef
 .notdef .notdef .notdef .notdef .notdef .notdef .notdef .notdef
 .notdef .notdef .notdef .notdef .notdef .notdef .notdef dotlessi grave
 acute circumflex tilde macron breve dotaccent dieresis .notdef ring
 cedilla .notdef hungarumlaut ogonek caron space exclamdown cent
 sterling currency yen brokenbar section dieresis copyright ordfeminine
 guillemotleft logicalnot hyphen registered macron degree plusminus
 twosuperior threesuperior acute mu paragraph periodcentered cedilla
 onesuperior ordmasculine guillemotright onequarter onehalf threequarters
 questiondown Agrave Aacute Acircumflex Atilde Adieresis Aring AE
 Ccedilla Egrave Eacute Ecircumflex Edieresis Igrave Iacute Icircumflex
 Idieresis Eth Ntilde Ograve Oacute Ocircumflex Otilde Odieresis
 multiply Oslash Ugrave Uacute Ucircumflex Udieresis Yacute Thorn
 germandbls agrave aacute acircumflex atilde adieresis aring ae
 ccedilla egrave eacute ecircumflex edieresis igrave iacute icircumflex
 idieresis eth ntilde ograve oacute ocircumflex otilde odieresis divide
 oslash ugrave uacute ucircumflex udieresis yacute thorn ydieresis
);


# Creates a new Font::AFM object.  Pass it the name of the font as parameter.
# Synopisis:
#
#    $h = new Font::AFM "Helvetica";
#

sub new
{
   my($class, $fontname) = @_;
   $fontname =~ s/.amf$//;
   my $file = "$fontname.afm";
   unless ($file =~ m,^/,) {
       # not absolute, search the metrics path for the file
       foreach (@metrics_path) {
	   if (-f "$_/$file") {
	       $file = "$_/$file";
	       last;
	   }
       }
   }
   open(AFM, $file) or croak "Can't find the AFM file for $fontname";
   my $this = bless { }, $class;
   local($/, $_) = ("\n", undef);  # ensure correct $INPUT_RECORD_SEPARATOR
   while (<AFM>) {
       next if /^StartKernData/ .. /^EndKernData/;  # kern data not parsed yet
       next if /^StartComposites/ .. /^EndComposites/; # same for composites
       if (/^StartCharMetrics/ .. /^EndCharMetrics/) {
	   # only lines that start with "C" or "CH" are parsed
	   next unless /^CH?\s/;
	   my($name) = /\bN\s+(\w+)\s*;/;
	   my($wx)   = /\bWX\s+(\d+)\s*;/;
	   my($bbox)    = /\bB\s+([^;]+)\s*;/;
	   # Should also parse lingature data (format: L successor lignature)
	   $this->{'wx'}{$name} = $wx;
	   $this->{'bbox'}{$name} = $bbox;
	   next;
       }
       last if /^EndFontMetrics/;
       if (/(^\w+)\s+(.*)/) {
	   my($key,$val) = ($1, $2);
	   $key = lc $key;
	   if (defined $this->{$key}) {
	       $this->{$key} = [ $this->{$key} ] unless ref $this->{$key};
	       push(@{$this->{$key}}, $val);
	   } else {
	       $this->{$key} = $val;
	   }
       } else {
	   print STDERR "Can't parse: $_";
       }
   }
   close(AFM);
   $this->{wx}->{'.notdef'} = 0;
   $this->{bbox}{'.notdef'} = "0 0 0 0";
   $this;
}

# Returns an 256 element array that maps from characters to width
sub latin1_wx_table
{
    my($this) = @_;
    unless ($this->{'_wx_table'}) {
	$this->{'_wx_table'} =
	    [ map {$this->{wx}->{$ISOLatin1Encoding[$_]}} 0..255 ];
    }
    @{ $this->{'_wx_table'} };
}

sub stringwidth
{
    my($this, $string, $pointsize) = @_;
    return 0.0 unless defined $string;
    return 0.0 unless length $string;

    my @wx = $this->latin1_wx_table;
    my $width = 0.0;
    while ($string =~ /./g) {
	$width += $wx[ord $&];
    }
    if ($pointsize) {
	$width *= $pointsize / 1000;
    }
    $width;
}

sub FontName;
sub FullName;
sub FamilyName;
sub Weight;
sub ItalicAngle;
sub IsFixedPitch;
sub FontBBox;
sub UnderlinePosition;
sub UnderlineThickness;
sub Version;
sub Notice;
sub Comment;
sub EncodingScheme;
sub CapHeight;
sub XHeight;
sub Ascender;
sub Descender;
sub Wx;
sub BBox;

# We implement all the access functions within this simple autoload
# function.

sub AUTOLOAD
{
    #print "AUTOLOAD: $AUTOLOAD\n";
    if ($AUTOLOAD =~ /::DESTROY$/) {
	eval "sub $AUTOLOAD {}";
	goto &$AUTOLOAD;
    } else {
	my $name = $AUTOLOAD;
	$name =~ s/^.*:://;
	croak "Attribute $name not defined for AFM object"
	    unless defined $_[0]->{lc $name};
	return $_[0]->{lc $name};
    }
}


# Dumping might be usefull for debugging

sub dump
{
    my($this) = @_;
    my($key, $val);
    foreach $key (sort keys %$this) {
	if (ref $this->{$key}) {
	    if (ref $this->{$key} eq "ARRAY") {
		print "$key = [\n\t", join("\n\t", @{$this->{$key}}), "\n]\n";
	    } elsif (ref $this->{$key} eq "HASH") {
		print "$key = {\n";
		my $key2;
		foreach $key2 (sort keys %{$this->{$key}}) {
		    print "\t$key2 => $this->{$key}{$key2},\n";
		}
		print "}\n";
	    } else {
		print "$key = $this->{$key}\n";
	    }
	} else {
	    print "$key = $this->{$key}\n";
	}
    }
}

1;
