use Test::More;

use_ok('BankOCR');

my $str0 =
" _  _  _  _  _  _  _  _  _ " .
"| || || || || || || || || |" .
"|_||_||_||_||_||_||_||_||_|" .
"                           " ;

my $str1 =
"                           " .
"  |  |  |  |  |  |  |  |  |" .
"  |  |  |  |  |  |  |  |  |" .
"                           " ;

is(BankOCR::tranform_num($str0), "000000000", "0x9 => 000000000") ;
is(BankOCR::tranform_num($str1), "111111111", "1x9 => 111111111") ;

done_testing();