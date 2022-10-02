# NOTE: Derived from ../LIB\Text\ParseWords.pm.  Changes made here will be lost.
package Text::ParseWords;

sub old_shellwords {

    # Usage:
    #	use ParseWords;
    #	@words = old_shellwords($line);
    #	or
    #	@words = old_shellwords(@lines);

    local($_) = join('', @_);
    my(@words,$snippet,$field);

    s/^\s+//;
    while ($_ ne '') {
	$field = '';
	for (;;) {
	    if (s/^"(([^"\\]|\\.)*)"//) {
		($snippet = $1) =~ s#\\(.)#$1#g;
	    }
	    elsif (/^"/) {
		croak "Unmatched double quote: $_";
	    }
	    elsif (s/^'(([^'\\]|\\.)*)'//) {
		($snippet = $1) =~ s#\\(.)#$1#g;
	    }
	    elsif (/^'/) {
		croak "Unmatched single quote: $_";
	    }
	    elsif (s/^\\(.)//) {
		$snippet = $1;
	    }
	    elsif (s/^([^\s\\'"]+)//) {
		$snippet = $1;
	    }
	    else {
		s/^\s+//;
		last;
	    }
	    $field .= $snippet;
	}
	push(@words, $field);
    }
    @words;
}

1;
