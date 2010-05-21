use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Fennec::Assert::Wrapper::Deep',
    license             => 'perl',
    dist_author         => q{ben hengst <notbenh@cpan.org>},
    dist_version_from   => 'lib/Fennec/Assert/Wrapper/Deep.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Fennec-Assert-Wrapper-Deep-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
