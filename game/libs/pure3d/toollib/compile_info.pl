#!/usr/bin/perl

$build = shift;
$time = localtime;
#$user = getlogin;
$changenumber = "unknown";
open(CHANGE, "p4 changes -m 1 -s submitted //Depot/Development/toollib/...#have|");
$changeline = <CHANGE>;
if($changeline ne "")
  {
    ($changenumber) = ($changeline =~ m/^Change *([0-9]*)/);
  }
print "char* tlCompileInfo = \"$build change $changenumber: Compiled $time\";\n";
