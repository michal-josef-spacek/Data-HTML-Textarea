package Data::HTML::Textarea;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_bool check_number);

our $VERSION = 0.01;

has autofocus => (
	is => 'ro',
);

has cols => (
	is => 'ro',
);

has css_class => (
	is => 'ro',
);

has disabled => (
	is => 'ro',
);

has form => (
	is => 'ro',
);

has id => (
	is => 'ro',
);

has label => (
	is => 'ro',
);

has name => (
	is => 'ro',
);

has placeholder => (
	is => 'ro',
);

has readonly => (
	is => 'ro',
);

has required => (
	is => 'ro',
);

has rows => (
	is => 'ro',
);

has value => (
	is => 'ro',
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
