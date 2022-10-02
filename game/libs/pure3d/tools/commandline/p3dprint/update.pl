#!/usr/bin/perl
$Tool = "p3dprint";
$ToolExe = "$Tool.EXE";
$WhoAmI = "jamesm\@radical.ca";
$Newsgroup = "radical.team.pure3d.tools";
$ToolBin = "K:\\Tools";
@COPYPATH = ($ToolBin,"C:\\Utils");
$BINPATH = "Debug";
$SSBIN = '$/Current/Tools/Bin';
$SSEXE = "$SSBIN/$ToolExe";
$description = <<EOT;
This tool prints the contents of a P3D file in a human readable format by
calling the tlDataChunk::Print() method on the file.
EOT

print "Checking out $SSEXE\n";
$error = system("ss Checkout $SSEXE");
die if $error;
$error = system("copy $BINPATH\\$ToolExe $ToolExe");
die if $error;

open(HISTORY,".\\$ToolExe -H|") || die "Can't run .\\$ToolExe -H";

$versionline = <HISTORY>;
($version) = ($versionline =~ m/([0-9]*\.[0-9]*\.[0-9]*)/);
@history = ();
while(<HISTORY>)
{
    next unless m/^[0-9]/;
    push @history,$_;
}

($change = $history[0]) =~ s/^[0-9. ]*//;
open(COMMENT, "|ss Checkin $SSEXE") || die;
print COMMENT "$version: $change";

foreach $path (@COPYPATH) {
    $error = system("copy $ToolExe $path");
    die if $error;
}

use News::NNTPClient;

$news = new News::NNTPClient("news",119);

@header = ("Newsgroups: $Newsgroup",
           "From: $WhoAmI",
           "Subject: $Tool version $version"
           );
@body   = ("Version $version of $Tool is in N:\\Tools.",
           "",
           "Description:",
           $description,
           "",
           "Changes to this version:",
           $change,
           "",
           "Version History:"
           );


@footer = ("This message was posted by a Perl script from Win95");

$news->post(@header, "", @body, @history, "", @footer);

__END__
:endofperl
