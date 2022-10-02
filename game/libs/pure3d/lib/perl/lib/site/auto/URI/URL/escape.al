# NOTE: Derived from blib\lib\URI\URL.pm.  Changes made here will be lost.
package URI::URL;

sub escape {
    Carp::croak("The escape() method not supported by URI::URL any more!
Use the URI::Escape module instead.  The method was called");
}

1;
