@rem = '--*-Perl-*--
@echo off
perl -x -S %0 %1 %2 %3 %4 %5 %6 %7 %8 %9
goto endofperl
@rem ';
#!/usr/local/bin/perl -w
#line 8

=head1 NAME

tkweb - rough and ready web browser

=head1 SYNOPSIS 

tkweb <url to view>

=head1 DESCRIPTION

Uses a derivative of Tk::Text and  libwww package to 
produce a web browser.

=head1 BUGS

Lots...

=cut  

use Tk;
require Tk::Web;
# require Tk::ErrorDialog;
require Tk::LabEntry;
require URI::URL;
require Tk::Menubar;

my $pwd = `pwd`;
chomp($pwd);

my $urltxt;
my $showlink;

my $mw = MainWindow->new();
my $mb  = $mw->Menubar->pack(-fill => 'x');
my $fm  = $mb->Menubutton(-text => 'File', -underline => 0)->pack(-side => 'left');; 
my $em  = $mb->Menubutton(-text => 'Edit', -underline => 0)->pack(-side => 'left');; 
my $vm  = $mb->Menubutton(-text => 'View', -underline => 0)->pack(-side => 'left');; 
my $hm  = $mb->Menubutton(-text => 'Help', -underline => 0)->pack(-side => 'right');; 
my $but = $mw->Frame->pack(-fill => 'x');
my $w   = Tk::Web->new($mw,-showlink => sub { $showlink = shift }, -urlcommand => sub { $urltxt = shift} );
my $e   = $mw->LabEntry(-label => 'Location:',-labelPack => [-side => 'left',-anchor => 'e'],-textvariable => \$urltxt )->pack(-fill => 'x');

$e->bind('<Return>',[$w,'url',Tk::Ev(['get'])]);

$w->{'-header'} = {'Accept' => join(',','text/html', 'text/plain', 'image/gif', 
                                    'image/x-xbitmap', 'image/x-pixmap', '*/*'),
		   'User-Agent' => 'tkweb/.xx'};

$w->pack(-expand => 1, -fill => 'both');
$fm->command(-label => 'Open...',-underline => 0, -command => [$w,'Open']); 
$fm->command(-label => 'Save as...',-underline => 0, -command => [$w,'SaveAs']); 
$fm->command(-label => 'Exit',-underline => 1, -command => [$mw,'destroy']); 
$vm->command(-label => 'Reload',-underline => 0, -command => [$w,'Reload']); 
$vm->command(-label => 'Source...',-underline => 0, -command => [$w,'ShowSource']); 
$vm->command(-label => 'HTML...',-underline => 0, -command => [$w,'ShowHTML']); 

$but->Button(-text => 'Back', -command => [$w,'Back'])->pack(-side => 'left');
$but->Button(-text => 'Forward', -command => [$w,'Forward'])->pack(-side => 'left');
$but->Button(-text => 'Home', -command => [$w,'Home'])->pack(-side => 'left');
$but->Button(-text => 'Reload', -command => [$w,'Reload'])->pack(-side => 'left');
$but->Button(-text => 'Images', -command => [$w,'Images'], -state => 'disabled')->pack(-side => 'left');
$but->Button(-text => 'Open', -command => [$w,'Open'])->pack(-side => 'left');
$but->Button(-text => 'Print', -command => [$w,'Print'])->pack(-side => 'left');
$but->Button(-text => 'Find', -command => [$w,'Find'])->pack(-side => 'left');
$but->Button(-text => 'Stop', -command => [$w,'Stop'])->pack(-side => 'left');
$mw->AddScrollbars($w);
my $show = $mw->Frame(-label => 'URL : ',-labelPack => [-side => 'left'])->pack(-fill => 'x');
$show->Label(-textvariable => \$showlink, -anchor => 'w')->pack(-fill => 'y',-anchor => 'w', -expand => 1, -side => 'left');
$show->Frame(-height => '3m', -width => '60m', -borderwidth => 3, -background => 'cyan', -relief => 'sunken')
             ->pack(-side => 'right', -padx => '3m');
my %args = (-scrollbars => 'w');
$mw->ConfigDefault(\%args);
$mw->configure(%args);
$w->url($ARGV[0]) if (@ARGV);
$w->focus;

MainLoop;
__END__
:endofperl
