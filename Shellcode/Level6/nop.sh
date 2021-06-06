#! /bin/bash

touch shellcode.s

for x in {1..4096}
do
	echo "	nop" >> shellcode.s
done

