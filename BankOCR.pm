package BankOCR;

sub tranform_num {
    
    my $input     = shift @_;
    my @pattern   = ("   ", "|  ", " _ ", "  |", "|_ ", "| |", " _|", "|_|");
    my @code 	  = ("257", "033", "264", "266", "073", "246", "247", "233", "277", "276" );
    my $positions = ();
    my $result    = "";
    my @arrInput  = $input =~/(.{3})/g;

    for ( my $iInput = 0; $iInput <= $#arrInput; $iInput++ ) {
        for ( my $iPattern = 0; $iPattern <=  $#pattern; $iPattern++ ) {
            if ( $arrInput[$iInput] eq $pattern[$iPattern] ) {
                $arrInput[$iInput] = $iPattern;
            }
        }
    }
    
    $positions[0] = $arrInput[0] . $arrInput[9]  . $arrInput[18];
    $positions[1] = $arrInput[1] . $arrInput[10] . $arrInput[19];
    $positions[2] = $arrInput[2] . $arrInput[11] . $arrInput[20];
    $positions[3] = $arrInput[3] . $arrInput[12] . $arrInput[21];
    $positions[4] = $arrInput[4] . $arrInput[13] . $arrInput[22];
    $positions[5] = $arrInput[5] . $arrInput[14] . $arrInput[23];
    $positions[6] = $arrInput[6] . $arrInput[15] . $arrInput[24];
    $positions[7] = $arrInput[7] . $arrInput[16] . $arrInput[25];
    $positions[8] = $arrInput[8] . $arrInput[17] . $arrInput[26];

    for ( my $ipositions = 0; $ipositions <= $#positions; $ipositions++ ) {
        for ( my $iCode = 0; $iCode <=  $#code; $iCode++ ) {
            if ( $positions[$ipositions] eq $code[$iCode] ) {
                $positions[$ipositions] = $iCode;
            }
        }
    }

    foreach $position ( @positions ) {
        $result .= $position;
    }

    return $result;

}

sub isValid {
    return true;
}

1;