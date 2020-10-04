# Operator::DynvarOr

[![Build Status](https://travis-ci.org/gfldex/raku-operator-dynvaror.svg?branch=master)](https://travis-ci.org/gfldex/raku-operator-dynvaror)

## SYNOPSIS

```
use Operator::DynvarOr;

sub s {
    my $*dynvar //* 42;
}

s;
```

This module supplies the infix operator `//*` that expects its LHS to be a
dynvar and its RHS a value. It scans the call stack for a dynvar of the same
name and sets the LHS to its value. If the dynvar is not declared in any
caller it will assign the RHS to the LHS. This allows optional dynvars to
contain undefined values which is otherwise difficult to achieve.

## LICENSE

All files (unless noted otherwise) can be used, modified and redistributed
under the terms of the Artistic License Version 2. Examples (in the
documentation, in tests or distributed as separate files) can be considered
public domain.

ⓒ2020 Wenzel P. P. Peppmeyer
