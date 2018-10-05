use strict;
use testapi;
use autotest;

autotest::loadtest "tests/english_locale.pm";
autotest::loadtest "tests/japanese_locale.pm";

1;

