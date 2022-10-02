@rem = '--*-Perl-*--
@echo off
perl -x -S %0 %1 %2 %3 %4 %5 %6 %7 %8 %9
goto endofperl
@rem ';
#!perl
#line 8
#perl
    eval 'exec c:\perl\bin\perl.exe -S $0 ${1+"$@"}'
	if $running_under_some_shell;

use Config;
use File::Path qw(mkpath);

my $Exit = 0;

my $Dest_dir = (@ARGV && $ARGV[0] =~ s/^-d//)
		    ? shift || shift
		    : $Config{installsitearch};
die "Destination directory $Dest_dir doesn't exist or isn't a directory\n"
    unless -d $Dest_dir;

@isatype = split(' ',<<END);
	char	uchar	u_char
	short	ushort	u_short
	int	uint	u_int
	long	ulong	u_long
	FILE
END

@isatype{@isatype} = (1) x @isatype;
$inif = 0;

@ARGV = ('-') unless @ARGV;

foreach $file (@ARGV) {
    # Recover from header files with unbalanced cpp directives
    $t = '';
    $tab = 0;

    if ($file eq '-') {
	open(IN, "-");
	open(OUT, ">-");
    }
    else {
	($outfile = $file) =~ s/\.h$/.ph/ || next;
	print "$file -> $outfile\n";
	if ($file =~ m|^(.*)/|) {
	    $dir = $1;
	    mkpath "$Dest_dir/$dir";
	}
	open(IN,"$file") || (($Exit = 1),(warn "Can't open $file: $!\n"),next);
	open(OUT,">$Dest_dir/$outfile") || die "Can't create $outfile: $!\n";
    }
    while (<IN>) {
	chop;
	while (/\\$/) {
	    chop;
	    $_ .= <IN>;
	    chop;
	}
	if (s:/\*:\200:g) {
	    s:\*/:\201:g;
	    s/\200[^\201]*\201//g;	# delete single line comments
	    if (s/\200.*//) {		# begin multi-line comment?
		$_ .= '/*';
		$_ .= <IN>;
		redo;
	    }
	}
	if (s/^#\s*//) {
	    if (s/^define\s+(\w+)//) {
		$name = $1;
		$new = '';
		s/\s+$//;
		if (s/^\(([\w,\s]*)\)//) {
		    $args = $1;
    	    	    my $proto = '() ';
		    if ($args ne '') {
    	    	    	$proto = '';
			foreach $arg (split(/,\s*/,$args)) {
			    $arg =~ s/^\s*([^\s].*[^\s])\s*$/$1/;
			    $curargs{$arg} = 1;
			}
			$args =~ s/\b(\w)/\$$1/g;
			$args = "local($args) = \@_;\n$t    ";
		    }
		    s/^\s+//;
		    expr();
		    $new =~ s/(["\\])/\\$1/g;
		    if ($t ne '') {
			$new =~ s/(['\\])/\\$1/g;
			print OUT $t,
                        "eval 'sub $name $proto\{\n$t    ${args}eval \"$new\";\n$t}' unless defined(\&$name);\n";
		    }
		    else {
                      print OUT "unless defined(\&$name) {\nsub $name $proto\{\n    ${args}eval \"$new\";\n}\n}\n";
		    }
		    %curargs = ();
		}
		else {
		    s/^\s+//;
		    expr();
		    $new = 1 if $new eq '';
		    if ($t ne '') {
			$new =~ s/(['\\])/\\$1/g;
                      print OUT $t,"eval 'sub $name () {",$new,";}' unless defined(\&$name);\n";
		    }
		    else {
                      print OUT $t,"unless(defined(\&$name) {\nsub $name () {",$new,";}\n}\n";
		    }
		}
	    }
	    elsif (/^include\s*<(.*)>/) {
		($incl = $1) =~ s/\.h$/.ph/;
		print OUT $t,"require '$incl';\n";
	    }
	    elsif (/^ifdef\s+(\w+)/) {
		print OUT $t,"if (defined &$1) {\n";
		$tab += 4;
		$t = "\t" x ($tab / 8) . ' ' x ($tab % 8);
	    }
	    elsif (/^ifndef\s+(\w+)/) {
		print OUT $t,"if (!defined &$1) {\n";
		$tab += 4;
		$t = "\t" x ($tab / 8) . ' ' x ($tab % 8);
	    }
	    elsif (s/^if\s+//) {
		$new = '';
		$inif = 1;
		expr();
		$inif = 0;
		print OUT $t,"if ($new) {\n";
		$tab += 4;
		$t = "\t" x ($tab / 8) . ' ' x ($tab % 8);
	    }
	    elsif (s/^elif\s+//) {
		$new = '';
		$inif = 1;
		expr();
		$inif = 0;
		$tab -= 4;
		$t = "\t" x ($tab / 8) . ' ' x ($tab % 8);
		print OUT $t,"}\n${t}elsif ($new) {\n";
		$tab += 4;
		$t = "\t" x ($tab / 8) . ' ' x ($tab % 8);
	    }
	    elsif (/^else/) {
		$tab -= 4;
		$t = "\t" x ($tab / 8) . ' ' x ($tab % 8);
		print OUT $t,"}\n${t}else {\n";
		$tab += 4;
		$t = "\t" x ($tab / 8) . ' ' x ($tab % 8);
	    }
	    elsif (/^endif/) {
		$tab -= 4;
		$t = "\t" x ($tab / 8) . ' ' x ($tab % 8);
		print OUT $t,"}\n";
	    }
	}
    }
    print OUT "1;\n";
}

exit $Exit;

sub expr {
    while ($_ ne '') {
	s/^(\s+)//		&& do {$new .= ' '; next;};
	s/^(0x[0-9a-fA-F]+)//	&& do {$new .= $1; next;};
	s/^(\d+)[LlUu]*//	&& do {$new .= $1; next;};
	s/^("(\\"|[^"])*")//	&& do {$new .= $1; next;};
	s/^'((\\"|[^"])*)'//	&& do {
	    if ($curargs{$1}) {
		$new .= "ord('\$$1')";
	    }
	    else {
		$new .= "ord('$1')";
	    }
	    next;
	};
        # replace "sizeof(foo)" with "{foo}"
        # also, remove * (C dereference operator) to avoid perl syntax
        # problems.  Where the %sizeof array comes from is anyone's
        # guess (c2ph?), but this at least avoids fatal syntax errors.
        # Behavior is undefined if sizeof() delimiters are unbalanced.
        # This code was modified to able to handle constructs like this:
        #   sizeof(*(p)), which appear in the HP-UX 10.01 header files.
        s/^sizeof\s*\(// && do {
            $new .= '$sizeof';
            my $lvl = 1;  # already saw one open paren
            # tack { on the front, and skip it in the loop
            $_ = "{" . "$_";
            my $index = 1;
            # find balanced closing paren
            while ($index <= length($_) && $lvl > 0) {
                $lvl++ if substr($_, $index, 1) eq "(";
                $lvl-- if substr($_, $index, 1) eq ")";
                $index++;
            }
            # tack } on the end, replacing )
            substr($_, $index - 1, 1) = "}";
            # remove pesky * operators within the sizeof argument
            substr($_, 0, $index - 1) =~ s/\*//g;
            next;
        };
	s/^([_a-zA-Z]\w*)//	&& do {
	    $id = $1;
	    if ($id eq 'struct') {
		s/^\s+(\w+)//;
		$id .= ' ' . $1;
		$isatype{$id} = 1;
	    }
	    elsif ($id eq 'unsigned' || $id eq 'long') {
		s/^\s+(\w+)//;
		$id .= ' ' . $1;
		$isatype{$id} = 1;
	    }
	    if ($curargs{$id}) {
		$new .= '$' . $id;
	    }
	    elsif ($id eq 'defined') {
		$new .= 'defined';
	    }
	    elsif (/^\(/) {
		s/^\((\w),/("$1",/ if $id =~ /^_IO[WR]*$/i;	# cheat
		$new .= " &$id";
	    }
	    elsif ($isatype{$id}) {
		if ($new =~ /{\s*$/) {
		    $new .= "'$id'";
		}
		elsif ($new =~ /\(\s*$/ && /^[\s*]*\)/) {
		    $new =~ s/\(\s*$//;
		    s/^[\s*]*\)//;
		}
		else {
		    $new .= q(').$id.q(');
		}
	    }
	    else {
		if ($inif && $new !~ /defined\s*\($/) {
		    $new .= '(defined(&' . $id . ') ? &' . $id . ' : 0)';
		}
		elsif (/^\[/) {
		    $new .= ' $' . $id;
		}
		else {
		    $new .= ' &' . $id;
		}
	    }
	    next;
	};
	s/^(.)// && do { if ($1 ne '#') { $new .= $1; } next;};
    }
}
##############################################################################
__END__

=head1 NAME

h2ph - convert .h C header files to .ph Perl header files

=head1 SYNOPSIS

B<h2ph [headerfiles]>

=head1 DESCRIPTION

I<h2ph>
converts any C header files specified to the corresponding Perl header file
format.
It is most easily run while in /usr/include:

	cd /usr/include; h2ph * sys/*

The output files are placed in the hierarchy rooted at Perl's
architecture dependent library directory.  You can specify a different
hierarchy with a B<-d> switch.

If run with no arguments, filters standard input to standard output.

=head1 ENVIRONMENT

No environment variables are used.

=head1 FILES

 /usr/include/*.h
 /usr/include/sys/*.h

etc.

=head1 AUTHOR

Larry Wall

=head1 SEE ALSO

perl(1)

=head1 DIAGNOSTICS

The usual warnings if it can't read or write the files involved.

=head1 BUGS

Doesn't construct the %sizeof array for you.

It doesn't handle all C constructs, but it does attempt to isolate
definitions inside evals so that you can get at the definitions
that it can translate.

It's only intended as a rough tool.
You may need to dicker with the files produced.

=cut

__END__
:endofperl
