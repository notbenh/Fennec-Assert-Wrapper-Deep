package TEST::Fennec::Assert::Wrapper::Deep;
use strict;
use warnings;
use Fennec;

require_or_skip Test::Deep;

tests load {
    use_ok( 'Fennec::Assert::Wrapper::Deep' );
    can_ok( $self, qw{eq_deeply
                      cmp_deeply
                      cmp_set
                      cmp_bag
                      cmp_methods
                     });
};
