#!/bin/bash

for i in {10..99}
do
   symbols=`echo \"$i\"`
   cat mytest.txt |grep -o  $symbols
done
