package Data::HTML::Textarea;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_bool check_number);

our $VERSION = 0.01;

has autofocus => (
	ro => 1,
);

has cols => (
	ro => 1,
);

has css_class => (
	ro => 1,
);

has disabled => (
	ro => 1,
);

has form => (
	ro => 1,
);

has id => (
	ro => 1,
);

has label => (
	ro => 1,
);

has name => (
	ro => 1,
);

has placeholder => (
	is => 'ro',
);

has readonly => (
	ro => 1,
);

has required => (
	ro => 1,
);

has rows => (
	ro => 1,
);

has value => (
	ro => 1,
);

sub BUILD {
	my $self = shift;

	# Check autofocus.
	check_bool($self, 'autofocus');

	# Check cols.
	check_number($self, 'cols');

	# Check disabled.
	check_bool($self, 'disabled');

	# Check readonly.
	check_bool($self, 'readonly');

	# Check rows.
	check_number($self, 'rows');

	return;
}

1;

__END__
