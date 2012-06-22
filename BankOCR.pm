package BankOCR;

sub tranform_num {

	my $input = shift @_;

	my $str0 = " _  _  _  _  _  _  _  _  _ " .
			   "| || || || || || || || || |" .
			   "|_||_||_||_||_||_||_||_||_|" .
			   "                           " ;

	my $str1 = "                           " .
			   "  |  |  |  |  |  |  |  |  |" .
			   "  |  |  |  |  |  |  |  |  |" .
			   "                           " ;

	my $str2 = " _  _  _  _  _  _  _  _  _ " .
			   " _| _| _| _| _| _| _| _| _|" .
			   "|_ |_ |_ |_ |_ |_ |_ |_ |_ " .
			   "                           " ;

	if ( $input eq $str0 ) {
		return "000000000" ;
	}

	elsif ( $input eq $str1 ) {
		return "111111111" ;
	}

	elsif ( $input eq $str2 ) {
		return "222222222" ;
	}

	return "Not number" ;
}

1;