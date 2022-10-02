#
# take the output of gcc's dependency generation and fix it up
#
# this involves adding in the .d file to be dependant on the headers too and
# adding empty header rules to allow for deleted header files
#
# Angus Mackay
#

$found_start_of_dep = 0;

$input_file = shift || die;
$object_file = shift || die;
$dep_file = shift || die;

#################

sub basename
{
    my $str = shift;
    $str =~ s/.*[\/\\]+([^\/\\]*)$/$1/;
    return $str;
}

sub noextname
{
    my $str = shift;
    $str =~ s/\.[^.]*$//;
    return $str;
}

#################

$object_stem = noextname(basename($object_file));
#print STDERR "object_stem: $object_stem\n";

open(INFILE, "$input_file") || die "$input_file: $!";
open(DEPFILE, ">$dep_file") || die "$dep_file: $!";

@header_deps = ();
while(<INFILE>)
{
    chomp($_);

    if(!$found_start_of_dep)
    {
        if($_ !~ /$object_stem.*:/)
        {
            next;
        }
        ($ignore, $deptext) = split(/ *: */, $_, 2);
        $deptext =~ s/\\$//;
        $deptext =~ s/[\t ]+/ /g;
        print DEPFILE "$dep_file $object_file : $deptext \\\n";
        $found_start_of_dep = 1;
        # the first one is the cpp file so don't put it in header_deps
        @deps = split(/ +/, $deptext);
        shift @deps;
        push @header_deps, @deps;
        next;
    }

    $deps = $_;
    $deps =~ s/\\$//;
    $deps =~ s/[\t ]+/ /g;
    push @header_deps, $deps;
    print DEPFILE " $deps \\\n";
}
print DEPFILE "\n\n";
# do empty header deps
foreach (@header_deps)
{
    $_ =~ s/^ *//;
    if($_ !~ /\.(cpp|c)\b/)
    {
        print DEPFILE "$_:\n";
    }
}
print DEPFILE "\n";

close(DEPFILE);

# delete the file if we never printed anything
if($found_start_of_dep == 0)
{
    print STDERR "WARNING: deleting failed dependency file: $dep_file\n";
    unlink($dep_file);
}
