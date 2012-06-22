use Test::More;

use_ok('BankOCR');

my $str1 =
" _  _  _  _  _  _  _  _  _ " +
"| || || || || || || || || |" +
"|_||_||_||_||_||_||_||_||_|" +
"                           " ;

is(BankOCR::tranform_num($str1), "000000000", "0x9 => 000000000") ;

done_testing();