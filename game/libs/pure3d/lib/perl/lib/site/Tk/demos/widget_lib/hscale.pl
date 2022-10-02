# hscale.pl

use subs qw /hscale_width/;
use vars qw /$TOP/;

sub hscale {

    # Create a top-level window that displays a horizontal scale.

    my($demo) = @ARG;
    my $demo_widget = $MW->WidgetDemo(
        -name     => $demo,
        -text     => 'An arrow and a horizontal scale are displayed below.  If you click or drag mouse button 1 in the scale, you can change the size of the arrow.',
        -title    => 'Horizontal Scale Demonstration',
        -iconname => 'hscale',
    );
    $TOP = $demo_widget->Top;	# get geometry master

    my $frame = $TOP->Frame(-borderwidth => 10)->pack(qw/-side top -fill x/);

    my $canvas = $frame->Canvas(
        qw/width 50 -height 50 -bd 0 -highlightthickness 0/);
    $canvas->create(qw/polygon 0 0 1 1 2 2 -fill DeepSkyBlue3 -tags poly/);
    $canvas->create(qw/line 0 0 1 1 2 2 0 0 -fill black -tags line/);

    my $scale = $frame->Scale(qw/-orient horizontal -length 284 -from 0
        -to 250 -tickinterval 50 -command/ => [\&hscale_width, $canvas]);
    $scale->set(75);

    $canvas->pack(qw/-side top -expand yes -anchor s -fill x/);
    $scale->pack(qw/-side bottom -expand yes -anchor n/);

} # end hscale

sub hscale_width {

    my($w, $width) = @ARG;

    $width += 21;
    my $x2 = $width - 30;
    $x2 = 21 if $x2 < 21;
    $w->coords('poly', 20, 15, 20, 35, $x2, 35, $x2, 45, $width, 25, $x2, 5,
	       $x2, 15, 20, 15);
    $w->coords('line', 20, 15, 20, 35, $x2, 35, $x2, 45, $width, 25, $x2, 5,
	       $x2, 15, 20, 15);

} # end hscale_width

1;
