#!/bin/bash
# Basic arithmetic using let
#let a=5+4
a=$( expr 5 + 4 )
echo "5+4="$a
let "a = 4 + 5"
echo "4+5=$a"
echo increase
let a++
echo $a
let "a = 4 * 5"
echo "4x5="$a
let "a = $1 + $2 + 30"
echo $a
### expr ####
echo
echo "examples expr"
expr 11 % 2
a=$( expr 10 - 3 )
echo $a
echo
# Basic arithmetic using double parentheses
a=$(( 4 + 5 ))
echo $a
a=$((3+5))
echo $a
b=$(( a + 3 ))
echo $b
b=$(( $a + 4 ))
echo $b
(( b++ ))
echo $b
(( b += 3 ))
echo $b
a=$(( 4 * 5 ))
echo $a
# Show the length of a variable.
a='Hello World'
echo ${#a} # 11
b=4953
echo ${#b} # 4
