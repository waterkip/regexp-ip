# perl
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Regexp::Common::IP',
    VERSION_FROM => 'lib/Regexp/Common/IP.pm',
    PREREQ_PM    => {},
    TEST_REQUIRES => {
        'Test::CheckManifest' => 0,
        'Test::Compile'       => 0,
        'Test::More'          => 0,
        'Test::Pod'           => 0,
        'Test::Pod::Coverage' => 0,
    },
    AUTHOR       => [
        'Salvador Fandino <sfandino@yahoo.com>',
        'Wesley Schwengle <wesley@schwengle.net',
    ],

);
