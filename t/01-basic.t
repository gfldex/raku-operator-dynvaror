use v6.d;
use Test;

use Operator::DynvarOr;

plan 1;

sub s {
    my $*dynvar //* 42;
}

is s, 42, ‚dynvar is defined or default value‘;
