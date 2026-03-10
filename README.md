# 🧮 4-Bit Arithmetic Logic Unit (ALU) using Verilog

## 📌 Project Overview
This project implements a **4-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**.  
The ALU performs several **arithmetic and logical operations** based on a **3-bit opcode input** and generates status flags such as **Zero, Carry, and Overflow**.

The design was verified through **simulation using a Verilog testbench**, demonstrating correct functionality for all supported operations.

---

## 🎯 Objectives
- Design a basic **Arithmetic Logic Unit (ALU)** using Verilog
- Understand **combinational logic design**
- Implement **arithmetic and logical operations in hardware**
- Learn **status flag generation**
- Practice **RTL simulation and verification**

---

## ⚙️ Features
✅ 4-bit input operands  
✅ Multiple arithmetic operations  
✅ Logical bitwise operations  
✅ Opcode-based operation selection  
✅ Status flag generation  

Supported operations include:

➕ Addition  
➖ Subtraction  
🔗 AND  
🔀 OR  
⚡ XOR  
🔄 NOT  
📊 Set Less Than (SLT)

---

## 🧠 Design Approach

### ✔ ALU Inputs
| Signal | Description |
|------|-------------|
| `A[3:0]` | First operand |
| `B[3:0]` | Second operand |
| `opcode[2:0]` | Operation selector |

### ✔ ALU Outputs
| Signal | Description |
|------|-------------|
| `result[3:0]` | Operation result |
| `zero` | Indicates result equals zero |
| `carry` | Carry-out for arithmetic operations |
| `overflow` | Signed overflow detection |

---

## 🔢 ALU Operations

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

## 🛠 Tools & Technologies
- Verilog HDL
- Vivado Design Suite
- ModelSim / Vivado Simulator
- GTKWave (for waveform analysis)

---

## ▶️ How to Run the Project

1️⃣ Open **Vivado**  
2️⃣ Create a new **RTL project**  
3️⃣ Add the **ALU Verilog file and testbench**  
4️⃣ Run **behavioral simulation**  
5️⃣ Observe output signals in waveform  
6️⃣ Verify each operation using different opcode values  

---

## 📚 Learning Outcomes
Through this project, I developed a strong understanding of:

- Arithmetic Logic Unit (ALU) architecture
- Combinational logic design
- Verilog RTL coding
- Status flag generation
- Hardware simulation and verification

---

## 🚀 Future Improvements
- Extend the ALU to **8-bit or 16-bit architecture**
- Add **shift and rotate operations**
- Implement **multiplication and division**
- Integrate ALU into a **simple processor datapath**

---

## 👩‍💻 Author
**Sri Nageswari Kommineedi**  
Aspiring **VLSI Engineer | RTL Design Enthusiast**

⭐ If you found this project interesting, feel free to explore the code and connect with me!
