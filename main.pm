use strict;
use testapi;
use autotest;

#These files will Automatically get loaded one after another
autotest::loadtest "tests/english_locale.pm";
autotest::loadtest "tests/japanese_locale.pm";
autotest::loadtest "tests/russian_locale.pm";
1;

