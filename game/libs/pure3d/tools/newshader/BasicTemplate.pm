#!/usr/bin/perl -w

package BasicTemplate;

require 5;
use strict;

require Exporter;
require AutoLoader;

use vars qw($VERSION);
$VERSION = '0.9.6.1';

use Fcntl qw(:flock);

=head1 NAME

Text::BasicTemplate -- Simple text/HTML/generic template parsing module

=cut

sub new {
    my ($class,@cfg) = @_;
    my $self = {};
    my ($x,$y);
    bless $self,$class;

    $self->{strip_html_comments} = $self->{strip_perl_comments} =
      $self->{strip_c_comments} = $self->{strip_cpp_comments} =
      $self->{condense_whitespace} = 0;
    $self->{simple_ssi} = $self->{simple_conditionals} =  1;
    $self->{document_root} = $ENV{DOCUMENT_ROOT} || '.';
    if (ref $cfg[0] eq 'HASH') {
      foreach (keys %{$cfg[0]}) {
        $self->{$_} = ${$cfg[0]}{$_};
      }
    } elsif (defined $cfg[0] && $cfg[0] =~ /^\w+$/) {
      while ($x = shift @cfg) {
        next unless $x;
        $self->{$x} = shift @cfg || 0;
      }
    } else {
      my ($sc,$cw,$uc,$ssi,$dr,$ec) = @cfg;
      $self->{strip_html_comments} = $sc if (defined $sc);
      $self->{condense_whitespace} = $cw if (defined $cw);
      $self->{use_cache} = $uc if (defined $uc);
      $self->{simple_ssi} = $ssi if (defined $ssi);
      $self->{document_root} = $dr if (defined $dr);
      $self->{document_root} .= '/' unless $self->{document_root} =~ /\/$/;
      $self->{simple_conditionals} = $ec if defined $ec;
    }
    $self->{strip_perl_comments} ||= $self->{strip_bash_comments} || 0;
    return $self;
}

sub add_cache {
    my $self = shift;

    $self->parse(@_);
}

sub uncache {
    my $self = shift;
    my ($file) = @_;

    return undef unless $file;
    return 0 unless exists $self->{cache}{$file};
    delete $self->{cache}{$file};
    return 1;
}

sub list_cache {
    my $self = shift;

    return (keys %{$self->{cache}});
}

sub purge_cache {
    my $self = shift;

    $self->{cache} = ();
    return 1;
}

sub print {
    my $self = shift;
    return $self->parse_print(@_);
}

sub push {
    my $self = shift;
    return $self->parse_push(@_);
}

=item B<parse_print, print()>

parse_print() performs identically to parse_push(), but prints
the result to STDOUT.  print() is a shorthand for parse_print(),
and is, given its name, a bit confusing.

=cut

sub parse_print {
    my $self = shift;
    my $buf = \$self->parse_push(@_);
    
    print $$buf if defined $$buf;
}

sub parse_push {
    my $self = shift;
    my $file = shift;
    my ($i,$e,$x,$key,$val);
    my $buf;
    my $subkey;
    my %entities;

    return undef unless $file;
    if (ref $file eq 'SCALAR') {
      $buf = $$file;
    } elsif (ref $file eq 'ARRAY') {
      $buf = join('',@{$file});
    } elsif (defined $self->{cache}{$file}) {
      $buf = $self->{cache}{$file}{content};
    } else {
        open(IF,$file) || do {
            warn "parse_push: $file: $! [uid=$</$> gid=$(/$)]\n";
            return "parse_push: required file $file missing.\n";
        };
        #flock IF,LOCK_SH | LOCK_NB;
        $self->{cache}{$file}{content} = join('',<IF>);
        $buf = $self->{cache}{$file}{content};
        #flock IF,LOCK_UN;
        close IF;
    }
    while ($key = shift) {
      next unless $key;
      if (ref $key eq 'HASH') {
        foreach $subkey (keys %{$key}) {
          $entities{$subkey} = ${$key}{$subkey} if $subkey;
        }
      } elsif (ref $key eq 'ARRAY') {   
        push @_,@{$key};
      } elsif (ref $key eq 'SCALAR') {
        push @_,$$key;
      } elsif ($key =~ /^([\w\.\_]+)=/) {
        next if defined $entities{$1};
        $entities{$1} = substr($key,length($1)+1);
      } elsif ($key !~ /=/) {
        $entities{$key} = shift;
      }
    }
    if ($self->{simple_ssi}) {
        $buf =~ s/<!--#include\s+file="?([^"\s]+)"?\s*-->/$self->parse_push($1,\%entities)/mge;
        $buf =~ s/<!--#include\s+virtual="?([^"\s]+)"?\s*-->/$self->parse_push($self->{document_root}.$1,\%entities)/mge;
    }

    if ($self->{strip_html_comments}) {
      $buf =~ s/<!--\s.*?\s-->//mgo;
    }
    if ($self->{strip_perl_comments}) {
      $buf =~ s/\#.*$//mgo;
    }
    if ($self->{strip_c_comments} || $self->{strip_cpp_comments}) {
      $buf =~ s/\/\*.*?\*\///mgo;
    }
    if ($self->{strip_cpp_comments}) {
      $buf =~ s/\/\/.*$//mgo;
    }    

    if ($self->{condense_whitespace}) {
        $buf =~ s/(\s)\s+/$1/mg;
        $buf =~ tr/\n//d;
    }

    # %?key=value%yesval%noval%    

    if ($self->{simple_conditionals}) {
      if (!defined $self->{cache}{$file}{c_offsets}) {
        @{$self->{cache}{$file}{c_offsets}} = ();
        @{$self->{cache}{$file}{c_reps}} = ();
        @{$self->{cache}{$file}{c_lens}} = ();
        @{$self->{cache}{$file}{c_lvalue}} = ();
        @{$self->{cache}{$file}{c_operator}} = ();
        @{$self->{cache}{$file}{c_operand}} = ();
        @{$self->{cache}{$file}{c_trueval}} = ();
        @{$self->{cache}{$file}{c_falseval}} = ();

        while ($buf =~ m/(%\?([\w\.\-]+)(\!=|=?=)({?[^%]*}?)%([^%]*)%([^%]*)%)/go) {
          push @{$self->{cache}{$file}{c_offsets}},pos $buf;
          push @{$self->{cache}{$file}{c_lvalue}},$2;
          push @{$self->{cache}{$file}{c_operator}},$3;
          push @{$self->{cache}{$file}{c_operand}},$4;
          push @{$self->{cache}{$file}{c_trueval}},$5;
          push @{$self->{cache}{$file}{c_falseval}},$6;
          push @{$self->{cache}{$file}{c_lens}},length($1);

          $self->{cache}{$file}{c_trueval}[$#{$self->{cache}{$file}{c_trueval}}]
            =~ tr/{}/%%/;
          $self->{cache}{$file}{c_falseval}[$#{$self->{cache}{$file}{c_falseval}}]
            =~ tr/{}/%%/;

        }
      }

      my ($glob,$lvalue,$operand);

      # 0.9.4.1 -- inlined eval_conditional to avoid subroutine overhead

      for (my $i=$#{$self->{cache}{$file}{c_offsets}}; $i>=0; $i--) {   
#      next unless defined $entities{$self->{cache}{$file}{c_lvalue}[$i]};
        $lvalue = $entities{$self->{cache}{$file}{c_lvalue}[$i]} || '';
        $operand = $self->{cache}{$file}{c_operand}[$i] || '';
        if ($operand =~ /^{([\w\-\.]+)}/) {
          $operand = ${$entities{$1}} || '';
        }
        if ($self->{cache}{$file}{c_operator}[$i] eq '=' or
            $self->{cache}{$file}{c_operator}[$i] eq '==') {
          $glob = ($operand eq $lvalue)?
                $self->{cache}{$file}{c_trueval}[$i]:
                $self->{cache}{$file}{c_falseval}[$i];
        } elsif ($self->{cache}{$file}{c_operator}[$i] eq '!=') {
          $glob = ($operand eq $lvalue)?
                $self->{cache}{$file}{c_falseval}[$i]:
                $self->{cache}{$file}{c_trueval}[$i];
        }
        substr($buf,$self->{cache}{$file}{c_offsets}[$i]-
               $self->{cache}{$file}{c_lens}[$i],
               $self->{cache}{$file}{c_lens}[$i]) = $glob;
      }
    }

    while (($key,$val) = each %entities) {
      $val = $val;
      $buf =~ s/%$key%/$val/mig;
    }
    $buf =~ s/%[\w\.\_]+%//mgo;
    return $buf;
}

sub eval_conditional
{
    my $self = shift;
    my ($lvalue,$operator,$operand,$trueval,$falseval,$depth,$entities) = @_;
    my $glob = '';

    $depth ||= 0;
    return '' if $depth>10;
    $trueval ||= '';
    $falseval ||= '';
    return $falseval unless $lvalue && defined $operand;
    return $falseval unless %{$entities};
    return $falseval unless $operator;

    ${$entities}{$lvalue} ||= '';

    $operand =~ s/{([\w\.\-]+)}/${$entities}{$1}/gim;
#    if ($operand =~ /^{([^%]+)}/) {
#       $operand = ${$entities}{$1} || '';
#    }
    if ($operator eq '=' or $operator eq '==') {
        if ($operand eq ${$entities}{$lvalue}) {
                $glob = $trueval;
        } else {
                $glob = $falseval;
        }
    } elsif ($operator eq '!=') {
        if ($operand eq ${$entities}{$lvalue}) {
                $glob = $falseval;
        } else {
                $glob = $trueval;
        }
    } else {
        $glob = 'unimplemented operator';
    }

    return '' unless $glob;
    $glob =~ s/{([\w\-\.]+)}/%$1%/g;
    return $glob;
}

1;

__END__


=head1 SYNOPSIS

 use BasicTemplate;
 $bt = new Text::BasicTemplate( [ 0 [,0 [ ,0 [, 0 [, '/dir/path' [, 0 ]]]]]);
 $bt = new Text::BasicTemplate( [ simple_conditionals => { 1 | 0 }, ] 
                            [ simple_ssi => { 1 | 0 },
                              document_root => { '/dir/path' }, ]
                            [ condense_whitespace => { 1 | 0 }, ]
                            [ strip_html_comments => { 1 | 0 }, ]
                            [ strip_perl_comments => { 1 | 0 }, ]
                            [ strip_c_comments => { 1 | 0 }, ]
                            [ strip_cpp_comments => { 1 | 0 } ]
                           );
 my %bt_config = ( ... );
 $bt = new Text::BasicTemplate([ %bt_config | \%bt_config ]);

 $bt->print([ 'dir/dir/file.html' | $buf | \$buf ]
           [, "FOO=bar", ...  | %keys | \%keys | \@pairs | \$pair ] );
 $parsed_text = $bt->push([ 'otherdir/otherfile.html' | $buf | \$buf ]
                         [, "FOO=bar", ...  | %keys | \%keys | \@pairs | \$pair ] );

 $bt->uncache('dir/anotherdir/file.asc');
 $bt->list_cache;
 $bt->purge_cache;


=head1 DESCRIPTION

B<Text::BasicTemplate> is a relatively straightforward template parsing module.  When
supplied with a list of keys and their corresponding values, BasicTemplate will
read, cache and print/return the contents of that file with the specified
values substituted.  Originally written with HTML templates in mind, it has
since been generalized into a highly usable, efficient template parsing
mechanism.

B<Text::BasicTemplate never uses tainted data -- in particular, it will never eval() user-specified code in any way.>

Parsing is done as simple key/value substitution.  Optionally, this can
be augmented with truncation of whitespace, removal of comments (HTML, C,
C++ and leading-sharp [e.g. perl, bash et al] styles, simple HTTP
server-side-include parsing (file and virtual types only), and
a simple equal/not-equal evaluation mechanism based on its own key/value
pairs.

B<BasicTemplate> will attempt to cache files in the pre-parsed state, to reduce
I/O and such overhead at the expense of memory usage.  This savings is most
noticeable on list-style parsing, where the same file may be printed over and
over.  Starting with 0.9.4, the position and content of conditionals is cached
also -- thus half the parsing will be done only once, on the first call, and
subsequent calls will use the cached data.  For now only conditionals are
cached this way; standard key/value substitutions are not (no speed gain would
be had).

=head1 FILE SPECS

B<BasicTemplate> doesn't care what your parsed files look like; the only thing
it's interested in are substitution tags of the style %TAG%.  If given a
file B<yourname.txt> containing the following:

    Hi there!  Your name is %FIRST_NAME% %LAST_NAME%!  But I bet you
    suspected that already...

Then your code might use the following:

    my $bt = new Text::BasicTemplate;
    $bt->print('yourname.txt',"FIRST_NAME=John","LAST_NAME=Doe");

The output would thus be:

    Hi there!  Your name is John Doe! But I bet you
    suspected that already...

=head1 EXAMPLE

A more complex (and common) usage might be the following:

    ... in a file salaries_head.html:

    <table>
    <tr>
      <th colspan=3>Employee Salaries for %COMPANY%
    </tr><tr>
      <th>Employee Name</th>
      <th>Department</th>
      <th>Salary</th>
    </tr>

    ... in a file salaries_list.html:

    <tr>
      <td>%LASTNAME%, %FIRSTNAME%, %?LASTNAME==Drucker%the boss%a peon%</td>
      <td>%DEPARTMENT%</td>
      <td>%SALARY%</td>
    </tr>

    ... in a file salaries_foot.html:

    <tr>
      <td colspan=3>%NUM_EMPLOYEES% employee%NUM_EMPLOYEES_S%</td>
    </tr>
    </table>

    ... in your code:

    my $bt = new Text::BasicTemplate(strip_html_comments => 1,
                                  condense_whitespace => 1,
                                  simple_conditionals => 1);

    my @cov;
    my $count = 0;
    my $buf = $bt->push('salaries_head.html',
                        COMPANY => "Wing's Sprockets Intl.");
    while (%employee = &get_employee_salaries) {
      # suppose that &get_employee_salaries returned
      # a hash containing elements for lastname, firstname,
      # department and salary
      $buf .= $bt->push('salaries_list.html',@cov,\%employee);
      $count++;
    }
    $buf .= $bt->push('salaries_foot.html',NUM_EMPLOYEES => $count,
                      NUM_EMPLOYEES_S => (($count==1)?"":"s"));
    print $buf;


=item B<new strip_html_comments strip_c_comments strip_cpp_comments strip_perl_comments condense_whitespace use_cache simple_ssi document_root eval_conditionals>

Constructor for the class.  Parameters are configured at initialization,
though there's no particular reason to keep it that way.  All arguments to
new are optional, but they have the following meanings.  Interpreted according
to true/non-true values; supply undef (or skip it completely) to leave at the
default.  Starting with v0.9.6, the old list-of-booleans argument list is
deprecated -- the preferred style is a hash or reference to a hash, with keys
and values as specified below (still mostly true/false).

strip_comments: HTML-style comments will be parsed out.  Useful for
alternating efficiency and debugging.  Default off.

condense_whietspace: Also for HTML; whitespace will be trimmed to one byte
between non-whitespace bytes; this is the same thing a web browser would do.
Useful for efficiency, but tends to generate fairly unreadable code.  Default
off.

use_cache: If on, files will be cached in memory prior to parsing.  Subsequent
print/push calls will use the cached versions rather than reloading from disk.
Default on.  You can flush the cache with purge_cache() and uncache().

simple_ssi: If nonzero, #include-type SSI server-includes will be parsed
before the normal %key%-type parsing is done.  Files included in this way will
be cached and parsed in the same manner as normal parse_push'ed files.
Supports both #include file="..." and #include virtual="..." directives; the
former are opened as given, the latter are opened relative to DOCUMENT_ROOT.
If you use this, you should generally also set DOCUMENT_ROOT below.  This is
a potential security hazard.  Default off.

document_root: directory to be prepended to SSI-style "virtual" #includes.
If not supplied, $ENV{DOCUMENT_ROOT} will be attempted, then null.

eval_conditionals: if true, B<BasicTemplate> will evaluate conditional keys
according to its own simple conditional substitution syntax.  This is as
follows:

     %?<keyname>{=|==|!=}[ operand ]%[ true replacement]%[false replacement%

B<keyname> should be one of the supplied key-value pairs.

B<operand> can be a string literal or another key-value pair in brackets --
that is, FOO=BAR will return true if the actual content of FOO is "BAR,"
whereas FOO={BAR} will return true if the content of FOO is the same as the
content of BAR.

B<true replacement> and B<false replacement> can be any string literals not
containing parentheses; should you need to replace to a paren, use {paren},
which will parse to % unless there already exists a key by that name,
in which case it will be used instead.  There is no limit on the amount of
data in the replacement blocks, within the general boundaries of perl,
malloc, swap space, etc.

For example, if calling parse_push('filename','FOO=bar','BAR=bar'), your
pre-parsed file containing the following:

     FOO %?FOO!=foo%is not foo, you malignant fool!%is foo%
     BAR %?BAR==bar%is bar%is not bar. It is {BAR}. Oh dear.%
     FOO %?FOO=={BAR}%is the same as bar ({FOO}, in fact})%is not bar.%

This would be parsed to:

     FOO is not foo, you malignant fool!
     BAR is bar
     FOO is the same as bar (bar, in fact)

Both the true and false values may be zero-length (e.g. %?A=A%%%).
The keyname must be one of the keys supplied in the substitution
key/value list.  If B<keyname> is null, the false replacement will
be substituted.  The operator must be one of ==, = or !=; the former
two are functionally identical.  You can use key-value pairs within
the true/false replacements, but they should be in the form {KEY}
rather than %KEY% (this avoids a lot of ugliness in the parsing algorithm,
preseving efficiency and robustness at the expense of overall capability.

Exercise caution using the conditional evaluation -- it consumes
rather more CPU resources than does the standard key/value substition.

=cut


=item B<parse_push(), push()>

  $output = $bt->push([ 'otherdir/otherfile.html' | $buf | \$buf ]
                 [, "FOO=bar", ...  | %keys | \%keys | \@pairs | \$pair ] );

parse_push is where most of the work gets done, and the function you will
usually be calling (directly or indirectly).  It takes as arguments any
combination of the following:

        %h = ( 'key' => 'value');
        @l = ( 'key' => 'value');
        $s = 'key=value';

        hash pairs:       $bt->parse_push($file,'key' => 'value');      
        hash:             $bt->parse_push($file,%h);
        hash reference:   $bt->parse_push($file,\%h);
        scalar:           $bt->parse_push($file,$s);
        scalar reference: $bt->parse_push($file,\$s);
        scalar pairs:     $bt->parse_push($file,"key","value");
        list:             $bt->parse_push($file,@l);
        array reference:  $bt->parse_push($file,\@l);

The original scalar arguments ("key=value") are now deprecated -- the
preferred method (for speed and memory usage) is with a hash reference,
though all approaches are acceptable.

push() is a shorthand for parse_push.

=head1 REVISIONS

0.9.4.1: Fixed nasty bug that set the lvalue in comparison to
the name of the entitity lvalue, not the value thereof.

0.9.4: Lots of optimizations.  Inlined eval_conditional(),
introduced caching of condititionals (parse-once, print repeatedly),
other such changes.  Approximately doubled output speed to about
3100 conditionals/sec on my i686-200 Linux box.

0.9.3: First stable, releaseable version.  Much documentation.

0.9.5: Rewrote argument handling in parse_push to handle arbitrary
combinations of different arg types.

0.9.6: Rewrote argument handling in constructor the same way;
deprecated old style arg passage.

=head1 AUTHOR

Text::BasicTemplate is by Devin Carraway <aqua@sonic.net>, originally written
for Sonoma.Net in 1996.  Maintained until v0.9.5 as ParsePrint, until 0.9.6.1
as Text::ParsePrint (renamed for CPAN).

=head1 COPYRIGHT

Copyright (c) 1996-1998 by Devin Carraway and Sonoma.Net.  Released under
terms of the Perl Artistic License.

=cut
