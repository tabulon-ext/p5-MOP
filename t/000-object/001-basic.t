#!perl

use strict;
use warnings;

use Test::More;

use Scalar::Util qw[ reftype ];

BEGIN {
    use_ok('mop::object');
}

subtest '... simple mop::object test' => sub {
    my $o = mop::object->new( foo => 'BAR' );
    isa_ok($o, 'mop::object');

    is(reftype $o, 'HASH', '... got the expected default repr type');
    
    ok(exists $o->{foo}, '... got the expected slot');
    is($o->{foo}, 'BAR', '... the expected slot has the expected value');
};

done_testing;
