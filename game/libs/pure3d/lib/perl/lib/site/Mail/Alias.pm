# Mail::Alias.pm
#
# Copyright (c) 1995-7 Graham Barr <gbarr@pobox.com>. All rights reserved.
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl itself.


package Mail::Alias;

=head1 NAME

Mail::Alias - maniulate mail alias files of various formats

=head1 SYNOPSIS

    use Mail::Alias;

=head1 DESCRIPTION

C<Mail::Alias> can read various formats of mail alias. Once an object has been
created it can be used to expand aliases and output in another format.

B<NOTE: This package is unfinished>

=head1 CONSTRUCTOR

=over 4

=item new ()

=back

=head1 METHODS

=over 4

=item read ()

=item write ()

=item format ()

=item exists ()

=item expand ()

=back

=head1 AUTHOR

Graham Barr <gbarr@pobox.com>

=head1 COPYRIGHT

Copyright (c) 1995-7 Graham Barr. All rights reserved. This program is free
software; you can redistribute it and/or modify it under the same terms
as Perl itself.

=cut

use Carp;
use vars qw($VERSION);

$VERSION = do { my @r=(q$Revision: 1.6 $=~/\d+/g); sprintf "%d."."%02d"x$#r,@r};
sub Version { $VERSION }

sub new {
 my $pkg = shift;

 my $me = bless {}, $pkg;

 $me->read(@_) if(@_);

 $me;
}

sub format {
 my $me = shift;
 my $fmt = shift;
 my $pkg = "Mail::Alias::" . $fmt;

 croak "Unknown format '$fmt'"
  unless defined @{$pkg . "::ISA"};

 bless $me, $pkg;
}

sub exists {
 my $me = shift;
 my $alias = shift;

 return defined $me->{$alias};
}

sub expand {
 my $me = shift;
 my @result = ();
 my %done = ();
 my $alias;
 my @todo = @_;

 while($alias = shift(@todo)) {
  next if(defined $done{$alias});
  $done{$alias} = 1;
  if(defined $me->{$alias}) {
   push(@todo,@{$me->{$alias}});
  }
  else {
   push(@result,$alias);
  }
 }
 wantarray ? @result : \@result;
}

package Mail::Alias::Ucbmail;

use vars qw(@ISA);

@ISA = qw(Mail::Alias::Binmail);

package Mail::Alias::Binmail;

use Carp;
use Mail::Address;

use vars qw(@ISA);

@ISA = qw(Mail::Alias);

sub read {
 my $me = shift;
 my $file = shift;

 local *ALIAS;
 local $_;
 open(ALIAS,$file) || croak "Cannot open $file: $!\n";

 while(<ALIAS>) {
  next unless(/^\s*(alias|group)\s+(\S+)\s+(.*)/);
  my($group,$who) = ($2,$3);

  $who =~ s/(\A[\s,]+|[\s,]+\Z)//g;

  my @resp = ();

  while(length($who)) {
#   $who =~ s/\A([^\"]\S*|\"[^\"]*\")\s*//;
#   my $ln = $1;
#   $ln =~ s/\A\s*\"|\"\s*\Z//g;     
 $who =~ s/\A\s*(\"?)([^\"]*)\1\s*//;
   push(@resp,$2);
#   push(@resp,$ln);
  }
  $me->{$group} = [ @resp ];
 }
 close(ALIAS);
}

sub write {
 my $me = shift;
 my $file = shift;
 my $alias;
 my $fd;
 local *ALIAS;

 if(ref($file)) {
  $fd = $file;
 }
 else {
  open(ALIAS,$file) || croak "Cannot open $file: $!\n";
  $fd = \*ALIAS;
 }

 foreach $alias (sort keys %$me) {
  my @a = @{$me->{$alias}};
  map { $_ = '"' . $_ . '"' if /\s/ } @a;
  print $fd "alias $alias ",join(" ",@a),"\n";
 }

 close(ALIAS) if($fd == \*ALIAS);
}

package Mail::Alias::Sendmail;

use Carp;
use Mail::Address;

use vars qw(@ISA);

@ISA = qw(Mail::Alias);

sub write {
 my $me = shift;
 my $file = shift;
 my $alias;
 my $fd;
 local *ALIAS;

 if(ref($file)) {
  $fd = $file;
 }
 else {
  open(ALIAS,$file) || croak "Cannot open $file: $!\n";
  $fd = \*ALIAS;
 }

 foreach $alias (sort keys %$me) {
  my $ln = $alias . ": " . join(", ",@{$me->{$alias}});
  $ln =~ s/(.{55,78},)/$1\n\t/g;
  print $fd $ln,"\n";
 }

 close(ALIAS) if($fd == \*ALIAS);
}

sub _include_file {
 my $file = shift;
 local *INC;
 my @ln;
 local $_;
 open(INC,$file) or carp "Cannot open file '$file'" and return "";
 @ln = grep(/^[^#]/,<INC>);
 close(INC);
 chomp(@ln);
 join(",",@ln);
}

sub read {
 my $me = shift;
 my $file = shift;

 local *ALIAS;
 local $_;
 open(ALIAS,$file) || croak "Cannot open $file: $!\n";

 my $group = undef;
 my $line = undef;

 while(<ALIAS>) {
  chomp;
  if(defined $line && /^\s/) {
   $line .= $_;
  }
  else {
   if(defined $line) {
    if($line =~ s/^([^:]+)://) {
     my @resp;
     $group = $1;
     $group =~ s/(\A\s+|\s+\Z)//g;
     $line =~ s/\"?:include:(\S+)\"?/_include_file($1)/eg;
     $line =~ s/(\A[\s,]+|[\s,]+\Z)//g;

     while(length($line)) {
      $line =~ s/\A([^\"][^ \t,]+|\"[^\"]+\")(\s*,\s*)*//;
      push(@resp,$1);
     }

     $me->{$group} = \@resp;
    }
    undef $line;
   }
   next if (/^#/ || /^\s*$/);
   $line = $_;
  }
 }
 close(ALIAS);
}

1;

