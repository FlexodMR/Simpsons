# NOTE: Derived from blib\lib\URI\URL.pm.  Changes made here will be lost.
package URI::URL;

# These are just supported for some (bad) kind of backwards portability.

sub unsafe {
    Carp::croak("The unsafe() method not supported by URI::URL any more!
If you need this feature badly, then you should make a subclass of
the URL-schemes you need to modify the behavior for.  The method
was called");
}

1;
