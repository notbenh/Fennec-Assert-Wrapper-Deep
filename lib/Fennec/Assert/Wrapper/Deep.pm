package Fennec::Assert::Wrapper::Deep;

use warnings;
use strict;

use Fennec::Assert;
use Fennec::Output::Result;
require Test::Deep;

=head1 NAME

Fennec::Assert::Wrapper::Deep - Fennec wrapper for L<Test::Deep>

=head1 VERSION

Version 0.02

=cut

our $VERSION = '0.02';

#for my $name ( qw{eq_deeply cmp_deeply cmp_set cmp_bag cmp_methods useclass noclass set bag subbagof superbagof subsetof supersetof superhashof subhashof bool str arraylength Isa ignore methods regexprefonly regexpmatches num regexponly scalref reftype hashkeysonly blessed array re hash regexpref hash_each shallow array_each code arrayelementsonly arraylengthonly all scalarrefonly listmethods any hashkeys isa} ) {
for my $name ( qw{ eq_deeply
                   cmp_deeply
                   cmp_set
                   cmp_bag
                   cmp_methods
                 } ) {
    no strict 'refs';
    next unless Test::Deep->can( $name );
    tester( $name => tb_wrapper( \&{ 'Test::Deep::' . $name }));
};

1;                                                                                                                                                                                                                                                                                         

=head1 WRAPPED FUNCTIONS

=over 4

=item cmp_bag()

=item cmp_deeply()

=item cmp_methods()

=item cmp_set()

=item eq_deeply()

=back

=head1 AUTHOR

ben hengst, C<< <notbenh at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-fennec-assert-wrapper-deep at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Fennec-Assert-Wrapper-Deep>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Fennec::Assert::Wrapper::Deep

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Fennec-Assert-Wrapper-Deep>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Fennec-Assert-Wrapper-Deep>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Fennec-Assert-Wrapper-Deep>

=item * Search CPAN

L<http://search.cpan.org/dist/Fennec-Assert-Wrapper-Deep/>

=back

=head1 ACKNOWLEDGEMENTS

=head1 LICENSE AND COPYRIGHT

Copyright 2010 ben hengst.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

