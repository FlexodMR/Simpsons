@rem = '--*-Perl-*--
@echo off
perl -x -S %0 %1 %2 %3 %4 %5 %6 %7 %8 %9
goto endofperl
@rem ';
#!/usr/local/bin/perl -w
#line 8
use Tk;
require Tk::ErrorDialog;
require Tk::Pod;

$top = MainWindow->new();
$top->withdraw;

@ARGV = "Tk" unless (@ARGV);

foreach $file (@ARGV)
 {
  if (-d $file)
   {
    Tk::Pod->Dir($file);
   }
  else
   {
    $top->Pod(-file => $file);
   }
 }

$top->destroy unless ($top->children);

MainLoop;
__END__
:endofperl
