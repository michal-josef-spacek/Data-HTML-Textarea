use strict;
use warnings;

use Data::HTML::Textarea;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::HTML::Textarea->new;
my $ret = $obj->css_class;
is($ret, undef, 'Get CSS class (default = undef).');

# Test.
$obj = Data::HTML::Textarea->new(
	'css_class' => 'foo',
);
$ret = $obj->css_class;
is($ret, 'foo', 'Get CSS class (foo).');
