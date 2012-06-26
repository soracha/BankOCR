package BankOCR;

use strict;
use warnings;

#this method tranform chain strings to number by 
#    separate every 3 characters
#    convert characters to number(index of pattern)
#    concatenate number(index of pattern) for creating code of number(component of account number)
#    convert code to number(component of account number)
#    concatenate 9 numbers for creating account number

# Author Fai Soracha <fai@abctech-thailand.com>

sub tranform_num {
    
    my $input     = shift @_;
    my $result    = "";

    #split input string every 3 characters
    my @arrInput  = $input =~/(.{3})/g;
    my @pattern   = ("   ", "|  ", " _ ", "  |", "|_ ", "| |", " _|", "|_|");

    #match arrInput[i] with pattern for creating code
    #if match set arrInput[i] = index of pattern
    for ( my $iInput = 0; $iInput <= $#arrInput; $iInput++ ) {
        for ( my $iPattern = 0; $iPattern <=  $#pattern; $iPattern++ ) {
            if ( $arrInput[$iInput] eq $pattern[$iPattern] ) {
                $arrInput[$iInput] = $iPattern;
            }
        }
    }
    
    #joining 3 arrInput for making code of 1 number
    my @positions = ();
    $positions[0] = $arrInput[0] . $arrInput[9]  . $arrInput[18];
    $positions[1] = $arrInput[1] . $arrInput[10] . $arrInput[19];
    $positions[2] = $arrInput[2] . $arrInput[11] . $arrInput[20];
    $positions[3] = $arrInput[3] . $arrInput[12] . $arrInput[21];
    $positions[4] = $arrInput[4] . $arrInput[13] . $arrInput[22];
    $positions[5] = $arrInput[5] . $arrInput[14] . $arrInput[23];
    $positions[6] = $arrInput[6] . $arrInput[15] . $arrInput[24];
    $positions[7] = $arrInput[7] . $arrInput[16] . $arrInput[25];
    $positions[8] = $arrInput[8] . $arrInput[17] . $arrInput[26];    

    #code for 7-segments (0,1,2,3,4,5,6,7,8,9)
    my @code      = ("257", "033", "264", "266", "073", "246", "247", "233", "277", "276" );

    #match @position with @code for get number
    for ( my $ipositions = 0; $ipositions <= $#positions; $ipositions++ ) {
        for ( my $iCode = 0; $iCode <=  $#code; $iCode++ ) {
            if ( $positions[$ipositions] eq $code[$iCode] ) {
                $positions[$ipositions] = $iCode;
            }
        }
    }

    #join 9 numbers
    foreach my $position ( @positions ) {
        $result .= $position;
    }

    return $result;

}

#this method validate the numbers. A valid account number has a valid checksum.
sub isValid {

    my $input  = shift @_;
    my @digits =  $input =~/(.)/g;

    #checksum calculation:
    my $result = ($digits[0] +
                    (2*$digits[1]) +
                    (3*$digits[2]) +
                    (4*$digits[3]) +
                    (5*$digits[4]) +
                    (6*$digits[5]) +
                    (7*$digits[6]) +
                    (8*$digits[7]) +
                    (9*$digits[8])) % 11;

    ($result == 0) ? return "true" : return "false" ;

}

1;