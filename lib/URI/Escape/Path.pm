package URI::Escape::Path;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict 'subs', 'vars';
use warnings;

use Exporter qw(import);
use URI::Escape::Any ();

our @EXPORT = qw(uri_escape uri_escape_utf8 uri_unescape);

sub uri_escape      { URI::Escape::Any::uri_escape     ($_[0], $_[1] || "^A-Za-z0-9\-\._~/") }
sub uri_escape_utf8 { URI::Escape::Any::uri_escape_utf8($_[0], $_[1] || "^A-Za-z0-9\-\._~/") }
*uri_unescape = URI::Escape::Any::uri_unescape;

1;
# ABSTRACT: Like URI::Escape, but does not escape '/'

=head1 SYNOPSIS

 use URI::Escape::Path;
 # use like you would use URI::Escape
 my $escaped = uri_escape('/foo bar'); # => "/foo%20bar'


=head1 DESCRIPTION


=head1 FUNCTIONS

=head2 uri_escape

=head2 uri_escape_utf8

=head2 uri_unescape


=head1 SEE ALSO

L<URI::Escape>

L<URI::Escape::Any>
