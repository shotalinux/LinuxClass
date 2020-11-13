#!/bin/bash
# აბზაცები

: '
if [ $1 -gt 100 ]
then
  echo ეს დიდი რიცხვია
  if (( $1 % 2 == 0 ))
  then
     echo და ასევე ლუწი რიცხვი
  fi
fi
'

: '
# დავნომროთ ხაზები ფაილში ან stdin-ში
if [ $# -eq 1 ]
then
  nl $1
else
  nl /dev/stdin
fi
'


# elif go to the party
if [ $1 -ge 18 ]
then
  echo You may go to the party.
elif [ $2 == "yes" ]
then
  echo You may go to the party but be back before midnight.
else
  echo You may not go to the party.
fi


: '
# test if file is readable and/or size greater than zero
# if [ -r $1 ] || [ -s $1 ] # or example
if [ -r $1 ] && [ -s $1 ] # and example
then
  echo This file is useful.
fi
'

: '
# case example
case $1 in
  start)
    echo starting
    ;;
  stop)
    echo stoping
    ;;
  restart)
    echo restarting
    ;;
  *)
    echo dont know
    ;;
esac
'
