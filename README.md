# 4-Bit Arithmetic Logic Unit (ALU) in Verilog

## Overview
This project implements a **4-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**.  
The ALU performs multiple arithmetic and logical operations based on a 3-bit opcode input. It also generates status flags such as **Zero, Carry, and Overflow**, which are commonly used in processor architectures.

The design is verified using a **Verilog testbench** and simulation waveforms.

---

## Features
- 4-bit data inputs
- Multiple arithmetic and logic operations
- Status flag generation
- Combinational ALU design
- Simulation-based verification

---

## ALU Operations

| Opcode | Operation | Description |
|------|-----------|-------------|
| 000 | ADD | A + B |
| 001 | SUB | A − B |
| 010 | AND | Bitwise AND |
| 011 | OR  | Bitwise OR |
| 100 | XOR | Bitwise XOR |
| 101 | NOT | Bitwise NOT of A |
| 110 | SLT | Set Less Than (A < B) |

---

## Inputs and Outputs

### Inputs
- `A[3:0]` – First operand
- `B[3:0]` – Second operand
- `opcode[2:0]` – Operation selector

### Outputs
- `result[3:0]` – ALU result
- `zero` – Indicates result is zero
- `carry` – Carry out from arithmetic operations
- `overflow` – Signed overflow detection

---

## Design Description
The ALU is implemented using a **combinational always block** with a `case` statement to select the operation based on the opcode.  

Arithmetic operations use a **5-bit temporary register** to capture carry output.  
Overflow detection is implemented using sign-bit comparison.

Example logic for overflow detection:

```verilog
overflow = (A[3] == B[3]) && (result[3] != A[3]);
```

---

## Project Structure

```
├── alu_4bit.v        # ALU design module
├── alu_4bit_tb.v     # Testbench for simulation
└── README.md         # Project documentation
```

---

## Simulation

### Tools Used
- ModelSim
- Vivado Simulator
- Icarus Verilog
- GTKWave (for waveform viewing)

### Simulation Steps
1. Compile the ALU module and testbench.
2. Run the simulation.
3. Observe waveform outputs for different opcode operations.

---

## Example Operation

```
A = 0101 (5)
B = 0011 (3)
Opcode = 000 (ADD)

Result = 1000 (8)
```

---

## Learning Outcomes
This project demonstrates understanding of:

- Digital system design
- Combinational logic in Verilog
- Arithmetic operations in hardware
- Status flag generation
- Testbench development and simulation

---

## Future Improvements
- Extend to **8-bit or 16-bit ALU**
- Add **shift and rotate operations**
- Implement **multiplication and division**
- Integrate ALU into a **simple CPU datapath**

---

## Author
Sri Nageswari Kommineedi
Aspiring VLSI Engineer | RTL Design Enthusiast

⭐ If you found this project interesting, feel free to explore the code and connect with me!