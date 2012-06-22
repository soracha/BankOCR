package BankOCR;

sub tranform_num {

	my $input    = shift @_;
	my @pattern  = ("   ", "|   ", " _ ", "  |", "|_ ", "| |", " _|", "|_|");
	my @code 	 = ("257", "033", "264", "266", "073", "246", "247", "233", "277", "276" );
	
	my @arrInput =  $input =~/(.{3})/g;

	for ( my $iInput = 0; $iInput <= $#arrInput; $iInput++ ) {
		for ( my $iPattern = 0; $iPattern <=  $#pattern; $iPattern++ ) {
		 	if ( $arrInput[$iInput] eq $pattern[$iPattern] ) {
				$arrInput[$iInput] = $iPattern;
		 	}
		} 
	}

	my $position1 = $arrInput[0] . $arrInput[9]  . $arrInput[18];
	my $position2 = $arrInput[1] . $arrInput[10] . $arrInput[19];
	my $position3 = $arrInput[2] . $arrInput[11] . $arrInput[20];
	my $position4 = $arrInput[3] . $arrInput[12] . $arrInput[21];
	my $position5 = $arrInput[4] . $arrInput[13] . $arrInput[22];
	my $position6 = $arrInput[5] . $arrInput[14] . $arrInput[23];
	my $position7 = $arrInput[6] . $arrInput[15] . $arrInput[24];
	my $position8 = $arrInput[7] . $arrInput[16] . $arrInput[25];
	my $position9 = $arrInput[8] . $arrInput[17] . $arrInput[26];

	for ( my $iCode = 0; $iCode <=  $#code; $iCode++ ) {
	 	if ( $position1 eq $code[$iCode] ) {
			$position1 = $iCode;
	 	}
	} 

	for ( my $iCode = 0; $iCode <=  $#code; $iCode++ ) {
	 	if ( $position2 eq $code[$iCode] ) {
			$position2 = $iCode;
	 	}
	}

	for ( my $iCode = 0; $iCode <=  $#code; $iCode++ ) {
	 	if ( $position3 eq $code[$iCode] ) {
			$position3 = $iCode;
	 	}
	}

	for ( my $iCode = 0; $iCode <=  $#code; $iCode++ ) {
	 	if ( $position4 eq $code[$iCode] ) {
			$position4 = $iCode;
	 	}
	}

	for ( my $iCode = 0; $iCode <=  $#code; $iCode++ ) {
	 	if ( $position5 eq $code[$iCode] ) {
			$position5 = $iCode;
	 	}
	}

	for ( my $iCode = 0; $iCode <=  $#code; $iCode++ ) {
	 	if ( $position6 eq $code[$iCode] ) {
			$position6 = $iCode;
	 	}
	}

	for ( my $iCode = 0; $iCode <=  $#code; $iCode++ ) {
	 	if ( $position7 eq $code[$iCode] ) {
			$position7 = $iCode;
	 	}
	}

	for ( my $iCode = 0; $iCode <=  $#code; $iCode++ ) {
	 	if ( $position8 eq $code[$iCode] ) {
			$position8 = $iCode;
	 	}
	}

	for ( my $iCode = 0; $iCode <=  $#code; $iCode++ ) {
	 	if ( $position9 eq $code[$iCode] ) {
			$position9 = $iCode;
	 	}
	}

	return $position1 . $position2 . $position3 .
		   $position4 . $position5 . $position6 . 
		   $position7 . $position8 . $position9 ;

}

1;