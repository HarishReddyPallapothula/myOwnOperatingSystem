#!/bin/bash
set -xue

# QEMU file path
QEMU=qemu-system-riscv32

# Path to RISC-V GCC and compiler flags
CC=riscv64-elf-gcc
CFLAGS="-std=c11 -O2 -g3 -Wall -Wextra -march=rv32ima -mabi=ilp32 -fno-stack-protector -ffreestanding -nostdlib"

# Build the kernel
$CC $CFLAGS -Wl,-Tkernel.ld -Wl,-Map=kernel.map -o kernel.elf \
    kernel.c

# Start QEMU
$QEMU -machine virt -bios default -nographic -serial mon:stdio -echr 0x02 --no-reboot \
    -kernel kernel.elf
