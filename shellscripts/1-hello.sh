#!/bin/sh

# echo
echo "ჩემი სახელია $NAME"

# read
read -p "შეიყვანე სახელი: " NAME

# echo
echo "გამარჯობა $NAME"

# დავითვალოთ etc-ში ფაილების და დირექტორიების რაოდენობა
MYVARETC=$( ls /etc | wc -l )
echo "etc-ში არის $MYVARETC ფაილი/ფოლდერი"

# export
export MYVARETC
