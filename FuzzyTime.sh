#!/bin/bash
# converts exact time to fuzzy format
export exact_time=$(date '+%I:%M')
 
export exact_hour=$(echo $exact_time | cut -c 1,2)
export exact_minute=$(echo $exact_time | cut -c 4,5)
 
case $exact_hour in
    01) export fuzzy_hour='one';;
    02) export fuzzy_hour='two';;
    03) export fuzzy_hour='three';;
    04) export fuzzy_hour='four';;
    05) export fuzzy_hour='five';;
    06) export fuzzy_hour='six';;
    07) export fuzzy_hour='seven';;
    08) export fuzzy_hour='eight';;
    09) export fuzzy_hour='nine';;
    10) export fuzzy_hour='ten';;
    11) export fuzzy_hour='eleven';;
    12) export fuzzy_hour='twelve';;
esac
 
case $exact_minute in
    00) export fuzzy_minute='o-clock';;
    01) export fuzzy_minute='o-one';;
    02) export fuzzy_minute='o-two';;
    03) export fuzzy_minute='o-three';;
    04) export fuzzy_minute='o-four';;
    05) export fuzzy_minute='o-five';;
    06) export fuzzy_minute='o-six';;
    07) export fuzzy_minute='o-seven';;
    08) export fuzzy_minute='o-eight';;
    09) export fuzzy_minute='o-nine';;
    10) export fuzzy_minute='ten';;
    11) export fuzzy_minute='eleven';;
    12) export fuzzy_minute='twelve';;
    13) export fuzzy_minute='thirteen';;
    14) export fuzzy_minute='fourteen';;
    15) export fuzzy_minute='fifteen';;
    16) export fuzzy_minute='sixteen';;
    17) export fuzzy_minute='seventeen';;
    18) export fuzzy_minute='eighteen';;
    19) export fuzzy_minute='nineteen';;
    20) export fuzzy_minute='twenty';;
    21) export fuzzy_minute='twenty-one';;
    22) export fuzzy_minute='twenty-two';;
    23) export fuzzy_minute='twenty-three';;
    24) export fuzzy_minute='twenty-four';;
    25) export fuzzy_minute='twenty-five';;
    26) export fuzzy_minute='twenty-six';;
    27) export fuzzy_minute='twenty-seven';;
    28) export fuzzy_minute='twenty-eight';;
    29) export fuzzy_minute='twenty-nine';;
    30) export fuzzy_minute='thirty';;
    31) export fuzzy_minute='thirty-one';;
    32) export fuzzy_minute='thirty-two';;
    33) export fuzzy_minute='thirty-three';;
    34) export fuzzy_minute='thirty-four';;
    35) export fuzzy_minute='thirty-five';;
    36) export fuzzy_minute='thirty-six';;
    37) export fuzzy_minute='thirty-seven';;
    38) export fuzzy_minute='thirty-seven';;
    39) export fuzzy_minute='thirty-one';;
    40) export fuzzy_minute='forty';;
    41) export fuzzy_minute='forty-one';;
    42) export fuzzy_minute='forty-two';;
    43) export fuzzy_minute='forty-three';;
    44) export fuzzy_minute='forty-four';;
    45) export fuzzy_minute='forty-five';;
    46) export fuzzy_minute='forty-six';;
    47) export fuzzy_minute='forty-seven';;
    48) export fuzzy_minute='forty-eight';;
    49) export fuzzy_minute='forty-nine';;
    50) export fuzzy_minute='fifty';;
    51) export fuzzy_minute='fifty-one';;
    52) export fuzzy_minute='fifty-two';;
    53) export fuzzy_minute='fifty-three';;
    54) export fuzzy_minute='fifty-four';;
    55) export fuzzy_minute='fifty-five';;
    56) export fuzzy_minute='fifty-six';;
    57) export fuzzy_minute='fifty-seven';;
    58) export fuzzy_minute='fifty-eight';;
    59) export fuzzy_minute='fifty-nine';;
esac
 
export fuzzy_time="$fuzzy_hour $fuzzy_minute"
echo $fuzzy_time
# exit 0
 
# Local variables:
# Coding: utf-8 
# End:


