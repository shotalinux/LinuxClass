#!/bin/bash

hexx () {

	local h=1
	local i=1

        echo "ექვსკუთხა პროგრესიის რაოდენობა $1:"

        while [ $i -le $1 ]
        do
		echo "$h"
                i=`expr $i + 1`
		h=$(( (2*$i**2)-$i ))
        done

}


if [ -z $1 ]
then
        echo "hexagonal numbers"
        read -p "პროგრესიის რაოდენობა: " n
        echo "-----------------------------------------------"
	hexx $n
        echo "-----------------------------------------------"
else
	echo "hexagonal numbers $1"
        echo "-----------------------------------------------"
	hexx $1
        echo "-----------------------------------------------"
fi
