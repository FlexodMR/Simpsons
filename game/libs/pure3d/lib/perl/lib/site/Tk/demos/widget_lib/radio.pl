# radio.pl

use vars qw/$TOP/;

sub radio {

    # Create a top-level window that displays a bunch of radio buttons.

    my($demo) = @ARG;
    my $demo_widget = $MW->WidgetDemo(
        -name     => $demo,
        -text     => ['Two groups of radiobuttons are displayed below.  If you click on a button then the button will become selected exclusively among all the buttons in its group.  A Perl variable is associated with each group to indicate which of the group\'s buttons is selected.  Click the "See Variables" button to see the current values of the variables.', qw/-wraplength 5i/],
        -title    => 'Radiobutton Demonstration',
        -iconname => 'radio',
    );
    $TOP = $demo_widget->Top;	# get geometry master

    my $var = $TOP->Button(
        -text    => 'See Variables',
        -command => [\&see_vars, $TOP, [
                                      ['point size', \$POINT_SIZE],
                                      ['color',      \$COLOR],
				      ]
		     ],
    );
    $var->pack(qw/-side bottom -expand 1/);

    my @pl = qw/-side left -expand 1 -padx .5c -pady .5c/;
    my $left = $TOP->Frame->pack(@pl);
    my $right = $TOP->Frame->pack(@pl);

    @pl = qw/-side top -pady 2 -anchor w/;
    foreach my $p (10, 12, 18, 24) {
	$left->Radiobutton(
            -text     => "Point Size $p",
            -variable => \$POINT_SIZE,
            -relief   => 'flat',
            -value    => $p,
        )->pack(@pl);
    }

    foreach my $c (qw/Red Green Blue Yellow Orange Purple/) {
	$right->Radiobutton(
            -text     => $c,
            -variable => \$COLOR,
            -relief   => 'flat',
            -value    => lc($c),
        )->pack(@pl);
    }

} # end radio

1;
