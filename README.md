# 🖥️ Computer Architecture & Assembly Portfolio

A comprehensive collection of low-level programming projects and assignments demonstrating proficiency in both **CISC (x86)** and **RISC (MIPS)** architectures. 

This repository serves as a practical showcase of fundamental computer science concepts, including memory management, CPU register manipulation, and algorithmic implementation close to the hardware level.

## 📂 Repository Structure

### 🔹 [x86 Architecture (16-bit)](./x86-Architecture)
Projects written in x86 Assembly (TASM/MASM compatible), focusing on arithmetic logic and custom I/O operations.
*   **[Emirp Number Checker](./x86-Architecture/Emirp-Checker):** Validates if a given decimal integer and its reversed form are both prime numbers.
*   **[Decimal to Binary Converter](./x86-Architecture/Decimal-to-Binary):** Converts base-10 integers to base-2 (binary) representation using bitwise register operations and repeated division.

### 🔹 [MIPS Architecture (32-bit)](./MIPS-Architecture)
Projects written in MIPS32 Assembly, designed for simulators like MARS or QtSPIM, focusing on memory allocation, array manipulation, and system calls.
*   **[Array Max Value Finder](./MIPS-Architecture/Find-Max-Array):** Dynamically allocates memory for an array, retrieves user input via syscalls, and iterates through memory addresses to compute the maximum value.

## 🧠 Core Concepts Demonstrated
Throughout these projects, several core low-level programming concepts are applied:
*   **Memory Management:** Stack operations (`push`/`pop`), dynamic memory allocation (`.space`), and understanding addressing modes.
*   **Control Flow & Logic:** Conditional branching, loops, and custom procedure/function calls (`jal`, `jr`, `call`, `ret`).
*   **Processor Instructions:** Register arithmetic, logical bitwise operations, and handling processor flags.
*   **Hardware Interaction:** Utilizing system calls (syscalls) and custom I/O libraries for standard input/output.

## 🛠️ Tools & Environments
*   **Languages:** x86 Assembly, MIPS Assembly.
*   **Assemblers/Simulators:** TASM, DOSBox, MARS (MIPS Assembler and Runtime Simulator).