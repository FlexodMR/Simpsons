# cscroll.pl

use subs qw/cscroll_button cscroll_enter cscroll_leave/;
use vars qw/$TOP/;

sub cscroll {

    # Create a top-level window containing a simple canvas that can be
    # scrolled in two dimensions.

    my($demo) = @ARG;
    my $demo_widget = $MW->WidgetDemo(
        -name     => $demo,
        -text     => 'This window displays a canvas widget that can be scrolled either using the scrollbars or by dragging with button 2 in the canvas.  If you click button 1 on one of the rectangles, its indices will be printed on stdout.',
        -title    => 'Scrollable Canvas Demonstration',
        -iconname => 'cscroll',
    );
    $TOP = $demo_widget->Top;	# get geometry master

    my $c = $TOP->Scrolled(qw/Canvas -relief sunken -borderwidth 2
        -scrollbars se -scrollregion/ => ['-10c', '-10c', '50c', '20c']);
    $c->pack(qw/-expand yes -fill both/);

    my($bg, $i, $j, $x, $y) = ($c->configure(-background))[4];
    for ($i = 0; $i < 20; $i++) {
	$x = -10 + 3 * $i;
	$j = 0;
	$y = -10;
	while ($j < 10) {
	    $c->create('rectangle', sprintf("%dc", $x), sprintf("%dc", $y),
		       sprintf("%dc", $x+2), sprintf("%dc", $y+2),
		       -outline => 'black', -fill => $bg, -tags => 'rect');
	    $c->create('text', sprintf("%dc", $x+1), sprintf("%dc", $y+1),
		       -text => "$i,$j", -anchor => 'center', -tags => 'text');
	    $j++;
	    $y += 3;
	} # whilend
    } # forend

    my $old_fill = '';
    $c->bind('all', '<Any-Enter>' => [\&cscroll_enter, \$old_fill]);
    $c->bind('all', '<Any-Leave>' => [\&cscroll_leave, \$old_fill]);
    $c->bind('all', '<1>' => \&cscroll_button);

    $c->CanvasBind('<2>' => sub {
	my ($c) = @ARG;
        my $e = $c->XEvent;
	$c->scan('mark', $e->x, $e->y);
    });
    $c->CanvasBind('<B2-Motion>' => sub {
	my ($c) = @ARG;
        my $e = $c->XEvent;
	$c->scan('dragto', $e->x, $e->y);
    });

} # end cscroll

sub cscroll_button {

    my($c) = @ARG;

    my $id = $c->find(qw/withtag current/);
    $id++ if ($c->gettags('current'))[0] ne 'text';
    print STDOUT 'You buttoned at ', ($c->itemconfigure($id, -text))[4], "\n";

} # end cscroll_button

sub cscroll_enter {

    my($c, $old_fill) = @ARG;

    my $id = $c->find(qw/withtag current/);
    $id-- if ($c->gettags('current'))[0] eq 'text';
    $$old_fill = ($c->itemconfigure($id, -fill))[4];
    if ($c->depth > 1) {
	$c->itemconfigure($id, -fill => 'SeaGreen1');
    } else {
	$c->itemconfigure($id, -fill => 'black');
	$c->itemconfigure($id+1, -fill => 'white');
    }

} # end cscroll_enter

sub cscroll_leave {

    my($c, $old_fill) = @ARG;

    my $id = $c->find(qw/withtag current/);
    $id-- if ($c->gettags('current'))[0] eq 'text';
    $c->itemconfigure($id, -fill => $$old_fill);
    $c->itemconfigure($id+1, -fill => 'black');

} # end cscroll_leave

1;
