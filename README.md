# Structural 4-Digit BCD Adder using Verilog

## 📌 Project Overview
This project implements a **4-digit BCD (Binary Coded Decimal) Adder**
using a **pure structural approach** in Verilog HDL.
The design is built hierarchically using **full adders only** and verified
in Xilinx Vivado.

## ✨ Features
- Pure structural design (no '+' operator)
- Built using full adders
- Supports 4-digit BCD addition (0000–9999)
- Proper BCD correction logic
- Vivado RTL-schematic friendly
- manual test cases

## 🧱 Design Hierarchy
- Full Adder
- 4-bit Binary Adder
- 1-Digit BCD Adder
- 4-Digit BCD Adder

## 🧪 Verification
- Manual test cases

## 🛠 Tools Used
- Verilog HDL
- Xilinx Vivado (Simulation & RTL Analysis)

## 🚀 How to Run
1. Open Vivado
2. Create a new RTL project
3. Add files from `src/`
4. Add testbench from `tb/`
5. Run simulation

## 📚 Learning Outcome
- Structural Verilog coding
- BCD correction logic
- Carry propagation analysis
- RTL schematic interpretation
