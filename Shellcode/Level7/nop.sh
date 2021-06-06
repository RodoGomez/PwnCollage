#! /bin/sh

touch shellcode.s

for x in {1..2048}
do
    echo "  nop" >> shellcode.s
done

echo shellcode.s file created with 2048 nop instructions.

