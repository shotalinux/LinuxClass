#!/bin/bash

f () {
local num=$1
fact=1
while [ $num -gt 1 ]
do
  fact=$((fact * num))  #fact = fact * num
  num=$((num - 1))      #num = num - 1
done

echo $fact

}

n=$1

if [ -z $1 ]
then
        echo "პროგრამა ფაქტორიალის საპოვნელად"
        read -p "შეიყვანეთ რიცხვი: " n
        echo "-----------------------------------------------"
        f $n
        echo "-----------------------------------------------"
else
        echo "-----------------------------------------------"
        f $n
        echo "-----------------------------------------------"
fi