#!/bin/perl -w
#
# Quick script to convert from a text style to a pure3d font
# Author : Mike Perzel
#
$makefont = "c:\\project\\pure3d\\development\\pure3d\\tools\\commandline\\bin\\makefont";
$filename = $ARGV[0];
open( TEXTSTYLE, $filename );
@lines = <TEXTSTYLE>;
close( TEXTSTYLE );
if( $lines[0] =~ /TextStyle/ )
{
	$_ = $lines[1];
	($name, $data) = m/name=\"(.*)\" data=\"(.*)\">/;
	$_ = $lines[3];
	($fontsize) = m/value=\"(.*)\"/;
	$_ = $lines[4];
	($r,$g,$b,$a) = m/red=\"(.*)\" green=\"(.*)\" blue=\"(.*)\" alpha=\"(.*)\"/;
	$_ = $filename;
	m/(.*source)(.*).ts/;
	$outfile = $1 . $2 . ".p3d";
	$resourcepath = $1;
	system $makefont, "-o $outfile -s $fontsize --fr $r --fg $g --fb $b --fa $a $resourcepath\\$data";
}
else
{
	print "Could not open file $filename!";
}
