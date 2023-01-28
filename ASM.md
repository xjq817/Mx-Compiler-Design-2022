将 builtin.c 编译成 builtin.s

` /home/lillian/homework/riscv-toolchain/bin/riscv32-unknown-elf-gcc  -march=rv32ima -mabi=ilp32 -S builtin.c -o builtin.s`

`/home/lillian/homework/riscv-toolchain/` 此为 toolchain 所在地址

加上 -O2 进行优化