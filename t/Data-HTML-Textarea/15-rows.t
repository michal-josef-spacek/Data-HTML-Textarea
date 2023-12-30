use strict;
use warnings;

use Data::HTML::Textarea;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::HTML::Textarea->new;
my $ret = $obj->rows;
is($ret, undef, 'Get rows number (default = undef).');

# Test.
$obj = Data::HTML::Textarea->new(
	'rows' => 2,
);
$ret = $obj->rows;
is($ret, 2, 'Get rows number (2).');
