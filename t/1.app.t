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

my $str2 =
" _  _  _  _  _  _  _  _  _ " .
" _| _| _| _| _| _| _| _| _|" .
"|_ |_ |_ |_ |_ |_ |_ |_ |_ " .
"                           " ;

my $str3 =
" _  _  _  _  _  _  _  _  _ " .
" _| _| _| _| _| _| _| _| _|" .
" _| _| _| _| _| _| _| _| _|" .
"                           " ;

my $str4 =
"                           " .
"|_||_||_||_||_||_||_||_||_|" .
"  |  |  |  |  |  |  |  |  |" .
"                           " ;

my $str5 =
" _  _  _  _  _  _  _  _  _ " .
"|_ |_ |_ |_ |_ |_ |_ |_ |_ " .
" _| _| _| _| _| _| _| _| _|" .
"                           " ;

my $str6 =
" _  _  _  _  _  _  _  _  _ " .
"|_ |_ |_ |_ |_ |_ |_ |_ |_ " .
"|_||_||_||_||_||_||_||_||_|" .
"                           " ;

my $str7 =
" _  _  _  _  _  _  _  _  _ " .
"  |  |  |  |  |  |  |  |  |" .
"  |  |  |  |  |  |  |  |  |" .
"                           " ;

my $str8 =
" _  _  _  _  _  _  _  _  _ " .
"|_||_||_||_||_||_||_||_||_|" .
"|_||_||_||_||_||_||_||_||_|" .
"                           " ;

my $str9 =
" _  _  _  _  _  _  _  _  _ " .
"|_||_||_||_||_||_||_||_||_|" .
" _| _| _| _| _| _| _| _| _|" .
"                           " ;

my $str10 =
" _  _  _  _     _     _  _ " .
" _||_|  ||_||_|| |  ||_  _|" .
" _| _|  ||_|  ||_|  | _||_ " .
"                           " ;

my $str11 =
" _  _     _     _  _  _  _ " .
"|_| _||_||_   ||_||_| _||_|" .
"|_| _|  | _|  | _||_||_  _|" .
"                           " ;

is(BankOCR::tranform_num($str0) , "000000000", "0x9   => 000000000") ;
is(BankOCR::tranform_num($str1) , "111111111", "1x9   => 111111111") ;
is(BankOCR::tranform_num($str2) , "222222222", "2x9   => 222222222") ;
is(BankOCR::tranform_num($str3) , "333333333", "3x9   => 333333333") ;
is(BankOCR::tranform_num($str4) , "444444444", "4x9   => 444444444") ;
is(BankOCR::tranform_num($str5) , "555555555", "5x9   => 555555555") ;
is(BankOCR::tranform_num($str6) , "666666666", "6x9   => 666666666") ;
is(BankOCR::tranform_num($str7) , "777777777", "7x9   => 777777777") ;
is(BankOCR::tranform_num($str8) , "888888888", "8x9   => 888888888") ;
is(BankOCR::tranform_num($str9) , "999999999", "9x9   => 999999999") ;
is(BankOCR::tranform_num($str10), "397840152", "str10 => 397840152") ;
is(BankOCR::tranform_num($str11), "834519829", "str11 => 834519829") ;

is(BankOCR::isValid("000000000"), true, "'000000000' => true") ;

done_testing();