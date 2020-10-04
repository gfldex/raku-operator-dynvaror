use v6.d;

sub infix:<//*>(\a, \b) is raw is export {
    my $dyn-name = a.VAR.name;
    my $has-outer-dynvar = CALLER::CALLERS::{$dyn-name}:exists;
    CALLER::{$dyn-name} = $has-outer-dynvar ?? CALLER::CALLERS::{$dyn-name} !! b
}
