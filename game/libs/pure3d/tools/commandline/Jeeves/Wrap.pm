package Wrap;

require Exporter;

@ISA = (Exporter);
@EXPORT = qw(wrap);
@EXPORT_OK = qw($columns);

$VERSION = 97.011701;

use vars qw($VERSION $columns $debug);
use strict;

BEGIN {
   $columns = 76;  # <= screen width
   $debug = 0;
}

use Text::Tabs qw(expand unexpand);

sub wrap
{
   my ($ip, $xp, $br, @t) = @_;

   my $r = "";
   my $t = expand(join(" ",@t));
   my $lead = $ip;
   my $ll = $columns - length(expand($lead)) - 1;
   my $nl = "";

   # remove up to a line length of things that aren't
   # new lines and tabs.

   if ($t =~ s/^([^\n]{0,$ll})(\s|\Z(?!\n))//xm) {

      # accept it.
      $r .= $lead . $1;

      # recompute the leader
      $lead = $xp;
      $ll = $columns - length(expand($lead)) - 1;
      $nl = $2;

      # repeat the above until there's none left
      while ($t) {
         if ( $t =~ s/^([^\n]{0,$ll})(\s|\Z(?!\n))//xm ) {
            print "\$2 is '$2'\n" if $debug;
            $nl = $2;
            $r .= $br . $lead . $1;
         } elsif ($t =~ s/^([^\n]{$ll})//) {
            $nl = "\n";
            $r .= $br . $lead . $1;
         }
      }
      $r .= $br;
   } 

   die "couldn't wrap '$t'" 
      if length($t) > $ll;

   print "-----------$r---------\n" if $debug;

   print "Finish up with '$lead', '$t'\n" if $debug;

   $r .= $lead . $t if $t ne "";

   print "-----------$r---------\n" if $debug;;
   return $r;
}

1;
__END__

