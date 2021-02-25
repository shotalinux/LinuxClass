#!/bin/bash

even () {
	for e in {0..10..2}
	do
		echo $e
	done
}

odd () {
	for o in {1..10..2}
	do
		echo $o
	done
}

menu='even odd Quit'
PS3='Select character: '
select menu in $menu
do
  if [ $menu == "Quit" ]
  then
    break
  elif [ $menu == "even" ]
  then
	  even
  elif [ $menu == "odd" ]
  then
	  odd
  fi
done
echo Bye
