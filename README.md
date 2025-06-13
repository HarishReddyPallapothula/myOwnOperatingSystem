# RISC-V Operating System

This is a minimal, educational operating system kernel built for the RISC-V 32-bit (RV32IMA) architecture. It runs on QEMU and is written in C using no standard libraries (freestanding). Ideal for learning how kernels work at the lowest level.

## 🔧 Features

- Compiles with `riscv64-elf-gcc`
- Boots with QEMU's `virt` machine
- Custom linker script to control memory layout
- No standard library, libc, or OS dependencies
- Uses `freestanding` C and assembly
- OpenSBI-compatible booting

## 🛠️ Requirements

- `riscv64-elf-gcc` (install via Homebrew or apt)
- `qemu-system-riscv32`
- `make` or shell

## 🚀 How to Run

```bash
./run.sh
