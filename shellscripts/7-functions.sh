#!/bin/bash

#simle example
hello_world () {
  echo 'hello, world'
}

hello_world

# -----------------------------------------       Variables Scope          -------------------------------------------
echo "-----------------------------------------       Variables Scope          -------------------------------------------"

var1='A'
var2='B'

my_function () {
  local var1='C'
  var2='D'
  echo "Inside function: var1: $var1, var2: $var2"
}

echo "Before executing function: var1: $var1, var2: $var2"

my_function

echo "After executing function: var1: $var1, var2: $var2"

# ----------------------------------------           Return Values           ---------------------------------------
echo "-----------------------------------------       Return Values          -------------------------------------------"

my_function () {
  echo "some result"
  return 55
}

my_function
echo $?

# ----------------------------------------           Arguments            ---------------------------------------
echo "-----------------------------------------       Arguments           -------------------------------------------"
greeting () {
  echo "Hello $1"
}

greeting "Joe"
