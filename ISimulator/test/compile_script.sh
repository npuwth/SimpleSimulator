#!/bin/bash
filename=$1
riscv64-unknown-elf-gcc -g ${filename}.c -o ${filename}
riscv64-unknown-elf-gcc -S ${filename}.c -o ${filename}.s
riscv64-unknown-elf-objdump -S ${filename} > ${filename}.S
riscv64-unknown-elf-objdump -D ${filename} > ${filename}.Sall