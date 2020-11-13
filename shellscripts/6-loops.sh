#!/bin/bash

#### case examples ####

echo "1. basic while loop 2. until loop 3. for loop"
echo "4. ranges 5. break 6. continue 7. select"
read CASE

case $CASE in
	1)

# Basic while loop
counter=1
while [ $counter -le 10 ]
do
  echo $counter
  ((counter++))
done
echo All done

	;;

	2)
# Basic until loop
counter=1
until [ $counter -gt 10 ]
do
  echo $counter
  ((counter++))
done
echo All done
	;;

	3)
# Basic for loop
names='Stan Kyle Cartman'
for name in $names
do
  echo $name
done
echo All done
	;;

	4)
echo ranges 1 - 5
for value in {1..5}
do
  echo $value
done
echo ranges 10 - 2 decrease by 2
for value in {10..0..2}
do
  echo $value
done
echo All done
	;;

	5)
for file in /etc/*
do
  if [ "${file}" == "/etc/profile" ]
  then
    umasks=$(grep "umask" /etc/profile)
    echo "${umasks} defined in ${file}"
    break
  fi
done
	;;

	6)
touch file1 file2.bak file3
FILES="file1 file2 file3"
for f in $FILES
do
  # if .bak backup file exists, read next file
  if [ -f ${f}.bak ]
  then
    echo "Skiping $f file..."
    continue  # read next file and skip the cp command
  fi
  # we are here means no backup file exists, just use cp command to copy file
  /bin/cp $f $f.bak
done
	;;

	7)
# A simple menu system
names='Kyle Cartman Stan Quit'
PS3='Select character: '
select name in $names
do
  if [ $name == "Quit" ]
  then
    break
  fi
  echo Hello $name
done
echo Bye
	;;

	*)
echo No Example
	;;
esac
