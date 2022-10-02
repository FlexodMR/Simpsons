# NOTE: Derived from blib\lib\URI\URL.pm.  Changes made here will be lost.
package URI::URL;

sub newlocal
{
    require URI::URL::file;
    my($class, $path) = @_;
    newlocal URI::URL::file $path;  # pass it on the the file class
}

1;
