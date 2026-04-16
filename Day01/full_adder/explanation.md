# Full Adder

## Overview
A Full Adder is a combinational circuit that adds three 1-bit inputs:
- A
- B
- Cin (carry-in)

It produces two outputs:
- SUM
- Cout (carry-out)

---

## Block Diagram
<img width="611" height="648" alt="Image" src="https://github.com/user-attachments/assets/cd9db274-9730-4b25-a87f-bfe228fb5d6f" />  


---

## Logic

- SUM = A ^ B ^ Cin  
- Cout = (A & B) | (A & Cin) | (B & Cin)  

---

## Explanation

The full adder extends the functionality of a half adder by including a carry input.

- The **SUM** is obtained by XORing all three inputs
- The **Cout** is generated when at least two inputs are 1

This allows chaining multiple full adders to perform multi-bit addition.

---

## How it Works

- First stage: A and B are combined
- Second stage: result is combined with Cin
- Carry is generated based on combinations of inputs

---

## Simulation Waveform
<img width="1905" height="198" alt="Image" src="https://github.com/user-attachments/assets/d7f8bbab-ce44-4eb9-818f-c208edfd9867" />

---

## Observation from Waveform

- SUM follows XOR behavior of three inputs
- Cout becomes 1 when at least two inputs are 1
- All input combinations match expected results

---

## Key Point

Full Adder is the fundamental building block for:
- Multi-bit adders
- Ripple carry adders
- Arithmetic circuits in processors
