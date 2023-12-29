use strict;
use warnings;

use Data::HTML::Textarea;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Data::HTML::Textarea->new;
my $ret = $obj->autofocus;
is($ret, undef, 'Get autofocus flag (default = undef).');

# Test.
$obj = Data::HTML::Textarea->new(
	'autofocus' => 1,
);
$ret = $obj->autofocus;
is($ret, 1, 'Get autofocus flag (1).');

# Test.
$obj = Data::HTML::Textarea->new(
	'autofocus' => 0,
);
$ret = $obj->autofocus;
is($ret, 0, 'Get autofocus flag (0).');
