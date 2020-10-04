use v6.d;
use Test;

use Operator::DynvarOr;

sub s {
    my $*dynvar //* 42;
}

is s, 42, ‚dynvar is defined or default value‘;
