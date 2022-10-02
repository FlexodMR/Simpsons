package Tool_Schema;
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

   my $c;                           # Contains the current class name
   my $fh = new FileHandle("$file_name") || die "Could not open $file_name : $@";

   if(!defined $ROOT){
       $ROOT = Ast->new("Root") if !defined $ROOT;
       $c = Ast->new("InputFile");
       $c->add_prop("file_name" => $file_name);
       $ROOT->add_prop_list("InputFile", $c);
   }

   while (get_line($fh)) {
       if ($line =~ /^\s*tool *(\w*)/) {
           $ROOT->add_prop("toolname" => $1);
       }
       if ($line =~ /^\s*perlscript/) {
           $ROOT->add_prop("perlscript" => 1);
       }
       if ($line =~ /^\s*description/) {
           my $description = "";
           while (get_line($fh)) {
               last if ($line =~ /^\s*\}/);
               # strip leading whitespace
               $line =~ s/^\s*//;
               $description .= $line;
           }
           $ROOT->add_prop("description" => $description);
       }
       if ($line =~ /^\s*parameter *(\w*)\s*(\w*)/) {
           $c = Ast->new($2);
           $c->add_prop("param_name" => $2);
           $c->add_prop("param_type" => $1);
           $ROOT->add_prop_list("param_list", $c);
           while (get_line($fh)) {
               last if ($line =~ /^\s*\}/);
               if ($line =~ /^\s*short\s*([^;]*);/) {
                   $c->add_prop("param_short" => $1);
               }
               if ($line =~ /^\s*long\s*([^;]*);/) {
                   $c->add_prop("param_long" => $1);
               }
               if ($line =~ /^\s*default\s*([^;]*)/) {
                   $c->add_prop("param_default" => $1);
               }
               if ($line =~ /^\s*arg\s*([^;]*);/) {
                   $c->add_prop("param_arg" => $1);
               }
               if ($line =~ /^\s*get\s*([^;]*);/) {
                   $c->add_prop("param_get" => $1);
               }
               if ($line =~ /^\s*description/) {
                   my $description = "";
                   while (get_line($fh)) {
                       last if ($line =~ /^\s*\}/);
                       # strip leading whitespace
                       $line =~ s/^\s*//;
                       $description .= $line;
                   }
                   $c->add_prop("param_description" => $description);
               }
               if ($line =~ /^\s*process/) {
                   my $process = "";
                   while (get_line($fh)) {
                       last if ($line =~ /^\s*\}/);
                       $process .= $line;
                   }
                   chomp($process);
                   $c->add_prop("param_process" => $process);
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


