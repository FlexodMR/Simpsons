# NOTE: Derived from ../LIB\Text\ParseWords.pm.  Changes made here will be lost.
package Text::ParseWords;

sub quotewords {

# The inner "for" loop builds up each word (or $field) one $snippet
# at a time.  A $snippet is a quoted string, a backslashed character,
# or an unquoted string.  We fall out of the "for" loop when we reach
# the end of $_ or when we hit a delimiter.  Falling out of the "for"
# loop, we push the $field we've been building up onto the list of
# @words we'll be returning, and then loop back and pull another word
# off of $_.
#
# The first two cases inside the "for" loop deal with quoted strings.
# The first case matches a double quoted string, removes it from $_,
# and assigns the double quoted string to $snippet in the body of the
# conditional.  The second case handles single quoted strings.  In
# the third case we've found a quote at the current beginning of $_,
# but it didn't match the quoted string regexps in the first two cases,
# so it must be an unbalanced quote and we croak with an error (which can
# be caught by eval()).
#
# The next case handles backslashed characters, and the next case is the
# exit case on reaching the end of the string or finding a delimiter.
#
# Otherwise, we've found an unquoted thing and we pull of characters one
# at a time until we reach something that could start another $snippet--
# a quote of some sort, a backslash, or the delimiter.  This one character
# at a time behavior was necessary if the delimiter was going to be a
# regexp (love to hear it if you can figure out a better way).

    my ($delim, $keep, @lines) = @_;
    my (@words, $snippet, $field);

    local $_ = join ('', @lines);

    while (length) {
	$field = '';

	for (;;) {
	    $snippet = '';

	    if (s/^"([^"\\]*(\\.[^"\\]*)*)"//) {
		$snippet = $1;
		$snippet = qq|"$snippet"| if $keep;
	    }
	    elsif (s/^'([^'\\]*(\\.[^'\\]*)*)'//) {
		$snippet = $1;
		$snippet = "'$snippet'" if $keep;
	    }
	    elsif (/^["']/) {
		croak 'Unmatched quote';
	    }
	    elsif (s/^\\(.)//) {
		$snippet = $1;
		$snippet = "\\$snippet" if $keep;
	    }
	    elsif (!length || s/^$delim//) {
	       last;
	    }
	    else {
		while (length && !(/^$delim/ || /^['"\\]/)) {
		   $snippet .= substr ($_, 0, 1);
		   substr($_, 0, 1) = '';
		}
	    }

	    $field .= $snippet;
	}

	push @words, $field;
    }

    return @words;
}

1;
