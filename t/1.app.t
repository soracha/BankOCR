use Test::More;

use_ok('BankOCR');

my $str0 =
" _  _  _  _  _  _  _  _  _ " +
"| || || || || || || || || |" +
"|_||_||_||_||_||_||_||_||_|" +
"                           " ;

is(BankOCR::tranform_num($str0), "000000000", "0x9 => 000000000") ;

done_testing();