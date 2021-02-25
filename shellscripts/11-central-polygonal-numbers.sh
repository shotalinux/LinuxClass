#!/bin/bash

lazy () {

	local p=1
	local i=0

        echo "კვეთის რაოდენობა $1:"

        while [ $i -le $1 ]
        do
		echo "$p"
                i=`expr $i + 1`
		p=$(( ($i**2+$i+2)/2 ))
        done

}

#cut=$( shuf -i 0-10 -n 1 )
#lazy $cut

if [ -z $1 ]
then
        echo "central polygonal numbers"
        read -p "რამდენი კვეთის გავლება გსურთ: " cut
        echo "-----------------------------------------------"
	lazy $cut
        echo "-----------------------------------------------"
else
	echo "central polygonal numbers of $1 cuts"
        echo "-----------------------------------------------"
	lazy $1
        echo "-----------------------------------------------"
fi
