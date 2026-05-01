# Find Maximum Value in Array (MIPS Assembly)

## 📌 Overview
This project is written in **MIPS Assembly language**. It prompts the user to input 10 integers, stores them dynamically in an array in memory, and then calls a custom procedure to iterate through the array and find the maximum value.

## ⚙️ How It Works
1. Allocates 40 bytes of memory (`.space 40`) to store 10 integers (4 bytes each).
2. Uses a loop to read user input via syscalls and stores each integer sequentially in memory.
3. Passes the array's base address (`$a0`) and size (`$a1`) as arguments to the `find_max` procedure.
4. The procedure iterates over the array elements, comparing each to find the maximum value, and returns the result in `$v0`.
5. The main program prints the highest integer found.

## 🛠️ Technologies & Environment
- **Architecture:** MIPS32
- **Simulator:** Can be run using MIPS simulators like **MARS** (MIPS Assembler and Runtime Simulator) or **QtSPIM**.
- **Concepts:** Memory addressing, loops, function calls (`jal`, `jr`), argument passing, and syscalls.