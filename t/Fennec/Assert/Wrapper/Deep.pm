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
                      useclass
                      noclass
                      set
                      bag
                      subbagof
                      superbagof
                      subsetof
                      supersetof
                      superhashof
                      subhashof
                      bool
                      str
                      arraylength
                      Isa
                      ignore
                      methods
                      regexprefonly
                      regexpmatches
                      num
                      regexponly
                      scalref
                      reftype
                      hashkeysonly
                      blessed
                      array
                      re
                      hash
                      regexpref
                      hash_each
                      shallow
                      array_each
                      code
                      arrayelementsonly
                      arraylengthonly
                      all
                      scalarrefonly
                      listmethods
                      any
                      hashkeys
                      isa
                     });
};
