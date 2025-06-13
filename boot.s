.section .text
.globl boot
boot:
    la sp, __stack_top     # Set up stack pointer
    call kernel_main       # Call your kernel's entry point
1:  j 1b                   # Infinite loop if kernel_main returns
