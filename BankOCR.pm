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

	if ( $input eq $str0 ) {
		return "000000000" ;
	}

	elsif ( $input eq $str1 ) {
		return "111111111" ;
	}

	return "Not number" ;
}

1;