#!/bin/perl -sw

package Parse;
use Ast;

use Parse::RecDescent;

@SCPATH = ( "../../../Chunks" );

sub loadfile($@)
{
   my $file_name = shift;
   my @path = @_;
   my $opened = 0;

   # try to open the file
   if(-r $file_name) 
   {
       open FILE , $file_name || die "Could not open $file_name : $@";
       $opened = 1;
   } else {
       my $fname;
       foreach $fname (@path) {
           # print STDERR "Trying $fname/$file_name\n";
           if(-r "$fname/$file_name") 
           {
               open FILE , "$fname/$file_name" || die "Could not open $file_name : $@";
               $opened = 1;
               last;
           }
       }
   }
   die "Could not find $file_name" unless $opened;

   # ok, it's open, slurp it in.
   local $/;
   undef $/;
   my $contents = <FILE>;
   close FILE;
   return $contents;
}

$grammar =
q{
   file     : line(s) /$/
     {
       my $ROOT = Ast->new("Root");
       my $c = Ast->new("InputFile");
       $c->add_prop("file_name" => "hmm");
       $ROOT->add_prop_list("InputFile", $c);
       for $line ( @{$item[1]} ) 
       {
         $ROOT->add_prop_list($line->[0], $line->[1]);
       }
       $return = $ROOT;
     }

   line   : include
       | linedir
         { $thisline = $item[1]; }
       | chunkdecl
       | chunkdef
       | structdecl
       | structdef
       | <error: Syntax error>

   include   : '#include' filename
         { 
           my $inc = $item[2];
           my $c = Ast->new($inc);
           $c->add_prop("include_name" => $inc);
           #$c->add_prop("file_name" => $file_name);
           #$c->add_prop("inc_level" => $inc_level);
           if(($inc =~ /\.sc$/) || ($inc =~ /\.hsc$/))
           {
               # Load the included file (later?)
           }
           $return = ["include_list", $c];
         }

   filename : '"' m#[a-z0-9_./-]+#i '"'
         { $return = $item[-2] }
       | '<' m#[a-z0-9_./-]+#i '>'
         { $return = $item[-2] }

   linedir:   '#line' /\d+/

   chunkdecl:  'chunk' /\w+/ /\w+/ ';'
   chunkdef:   'chunk' /\w+/ /\w+/ '{'<commit> member(s) '}'
   {
    my $c = Ast->new($item[2]);
    $c->add_prop("class_name" => $item[2]);
    $c->add_prop("chunk_id" => $item[3]);
    my $member;
    for $member ( @{$item[-2]} ) 
    {
      $c->add_prop_list("attr_list", $member);
    }
    $return = ["class_list", $c];
   }

   structdecl: 'struct' /\w+/ ';'
   structdef:  'struct' /\w+/ '{'<commit> member(s) '}'
   {
    my $c = Ast->new($item[2]);
    $c->add_prop("struct_name" => $item[2]);
    my $member;
    for $member ( @{$item[-2]} ) 
    {
      $c->add_prop_list("attr_list", $member);
    }
    $return = ["struct_list", $c];
   }

   member: type name ';'
     {
      my $a = Ast->new($item[2]);            #attribute name
      $a->add_prop ("attr_name", $item[2]);  #attribute name
      $a->add_prop ("attr_type", $item[1]);  #attribute type
      $return = $a;
     }
         | type name <commit> '{' attribute(s?) '}' ';'
           {
            my $attr;
            my $a = Ast->new($item[2]);            #attribute name
            $a->add_prop ("attr_name", $item[2]);  #attribute name
            $a->add_prop ("attr_type", $item[1]);  #attribute type
            for $attr ( @{$item[-3]} ) 
            {
              $a->add_prop($attr->[0], $attr->[1]);
            }
            $return = $a;
           }
       
   type: /\w+/

   name: /\w+/
       
   attribute: attr '=' code ';'
     { 
      $return = [ $item[1], $item[3]]; 
     }

   attr: 'array'
       | 'print'
         
   code: '{' /[^{}]*/ '}'
     {($return = $item[2]) =~ s/[ \t\n]*$//;}

   code: /[^;\n]*/


};
$::RD_HINT = 1;
#$::RD_TRACE = 1;

sub parse  {
   my $this = shift;
   my $file_name = shift;

   my $parse = new Parse::RecDescent ($grammar);

   my $input = loadfile($file_name,@SCPATH);
   
   my $ROOT = $parse->file($input);

   return $ROOT;
 }

__END__
