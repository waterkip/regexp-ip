# perl

use Test::More;
use Regexp::IP qw($IPv4_re);

my $re = qr/^$IPv4_re$/;

while (<DATA>) {
    chomp;
    s/\s*#.*//;
    next if m/^$/;

    if (/^GOOD/) {
        $good = 1;
        next;
    }
    if (/^BAD/) {
        $good = 0;
        next;
    }

    if ($good) {
        ok($_ =~ $re, "good $_");
    }
    else {
        ok($_ !~ $re, "bad $_");
    }
}

done_testing;

__DATA__

GOOD:
127.0.0.1
1.1.1.1
123.12.1.0
255.255.255.255
0.0.0.0

BAD:
jfkds
1
1.2
1.2.3
1.
1.2.
1.2.3.
1.2.3.4.5

01.2.3.4
1.02.3.4
1.2.03.4
1.2.3.04

001.2.3.4
1.002.3.4
1.2.003.4
1.2.3.004

1.2.3.256
256.2.3.4
1.256.3.4
1.2.256.4
1.2.3.256

#IPv6
::
