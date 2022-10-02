# NOTE: Derived from blib\lib\URI\URL.pm.  Changes made here will be lost.
package URI::URL;

sub unescape {
    Carp::croak("unescape() method not supported by URI::URL any more!
Use the URI::Escape module instead.  The method was called");
}

1;


#########################################################################
#### D O C U M E N T A T I O N
#########################################################################

1;
