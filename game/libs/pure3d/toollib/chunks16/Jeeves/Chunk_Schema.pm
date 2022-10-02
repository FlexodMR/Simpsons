package Chunk_Schema;
use Ast;
use strict;
use FileHandle;

my $line;                           # The current line from the input file
sub parse{
   my $this = shift;
   my $file_name = shift;
   my $ROOT = shift;  
   my $inc_level = shift;
   $inc_level = 0 if !defined $inc_level;

   my $c;                           # Contains the current name
   my $fh;

   # try to open the file
   if(-e $file_name) {
     $fh = new FileHandle($file_name) || die "Could not open $file_name : $@";
   }else{
     my $fname;
     foreach $fname (@main::spec_dirs) {
       # print STDERR "Trying $fname/$file_name\n";
       if(-e "$fname/$file_name") {
         $fh = new FileHandle("$fname/$file_name") || die "Could not open $file_name : $@";
         last;
       }
     }
   }

   die "Could not find $file_name" unless $fh;

   if(!defined $ROOT){
       $ROOT = Ast->new("Root") if !defined $ROOT;
       $c = Ast->new("InputFile");
       $c->add_prop("file_name" => $file_name);
       $ROOT->add_prop_list("InputFile", $c);
   }

   while (get_line($fh)) {
       if ($line =~ /^\s*#include *"(\S*)"/) {
           my $inc = $1;
           $c = Ast->new($1);
           $c->add_prop("include_name" => $1);
           $c->add_prop("file_name" => $file_name);
           $c->add_prop("inc_level" => $inc_level);
           $ROOT->add_prop_list("include_list", $c);
           if(($inc =~ /\.sc$/) || ($inc =~ /\.hsc$/))
           {
               $this->parse($inc,$ROOT,$inc_level+1);
           }
       }
       if ($line =~ /^\s*#includehpp *"(\S*)"/) {
           my $inc = $1;
           $c = Ast->new($1);
           $c->add_prop("hpp_name" => $1);
           $ROOT->add_prop_list("hpp_list", $c);
       }
       if ($line =~ /^\s*class *(\w*);/) {
           my $inc = $1;
           $c = Ast->new($1);
           $c->add_prop("class_name" => $1);
           $c->add_prop("file_name" => $file_name);
           $c->add_prop("inc_level" => $inc_level);
           $ROOT->add_prop_list("class_list", $c);
       }
       if ($line =~ /^\s*chunk *(\w*) *([\w:]*)/) {
           $c = Ast->new($1);
           $c->add_prop("chunk_name" => $1);
           $c->add_prop("chunk_id" => $2);
           $c->add_prop("file_name" => $file_name);
           $c->add_prop("inc_level" => $inc_level);
           $ROOT->add_prop_list("chunk_list", $c);
           while (get_line($fh)) {
               last if ($line =~ /^\s*\}/);
               if ($line =~ s/^\s*([\w*]*)\s*(\w*)//) {
                   $a = Ast->new($2);  #attribute name
                   $a->add_prop ("attr_name", $2);  #attribute type
                   $a->add_prop ("attr_type", $1);  #attribute type
                   $c->add_prop_list("attr_list", $a);
               }
               if($line !~ /;/) {
                   my $curr_line;
                   while ($curr_line !~ /;/) {
                       $curr_line = get_line($fh);
                       if ($curr_line =~ /\s*(\w*)\s*=\s*(.*)[;,]\s*/) {
                           $a->add_prop($1, $2);
                       }
                   }
               }
           }
       }
       if ($line =~ /^\s*struct *(\w*)/) {
           $c = Ast->new($1);
           $c->add_prop("struct_name" => $1);
           $c->add_prop("file_name" => $file_name);
           $c->add_prop("inc_level" => $inc_level);
           $ROOT->add_prop_list("struct_list", $c);
           while (get_line($fh)) {
               last if ($line =~ /^\s*\}/);
               if ($line =~ s/^\s*([\w*]*)\s*(\w*)//) {
                   $a = Ast->new($2);  #attribute name
                   $a->add_prop ("attr_name", $2);  #attribute type
                   $a->add_prop ("attr_type", $1);  #attribute type
                   $c->add_prop_list("attr_list", $a);
               }
               if($line !~ /;/) {
                   my $curr_line;
                   while ($curr_line !~ /;/) {
                       $curr_line = get_line($fh);
                       if ($curr_line =~ /\s*(\w*)\s*=\s*(.*)[;,]*\s*/) {
                           $a->add_prop($1, $2);
                       }
                   }
               }
           }
       }
   }
   $fh->close;
   return ($ROOT);
}

sub get_line {
    my $fh = shift;
    while ($line = <$fh>) {
        $line =~ s#//.*$##;            # Remove comments
        last if ($line !~ /^\s*$/);  # return non-blank line
    }
    $line;
}
1;


