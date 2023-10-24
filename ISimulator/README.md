## ISimulator: RISC-V Instruction Simulator

Supported Instruction Set: RV64IM

Usage:
- Compile: `mkdir build; make`
- Run: `./build/ISimulator hello.elf`
- Parameters: type `h` in commandline

ISimulator V1.0
  q -- quit simulator
  r -- print registers
  m -- print target memory
  i -- execute 1 instruction
  n -- execute n instructions
  a -- execute all instructions
  h -- help information

Warn: 
1. Change main entry in Simulation.cpp according to ELF file! (Use objdump to see where main function starts)

2. Need RISC-V toolchain to compile testcases (eg. hello.elf).