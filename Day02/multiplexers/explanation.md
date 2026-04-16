# 2:1 Multiplexer

## Overview
A 2:1 multiplexer selects one of two inputs (A or B) based on a select signal (SEL) and forwards it to the output (Y).

---

## Block Diagram

<img width="698" height="637" alt="Image" src="https://github.com/user-attachments/assets/9ac65839-1cbf-407a-998e-ca06b5d2f534" />

---

## Logic

Y = SEL ? B : A

- SEL = 0 → Y = A  
- SEL = 1 → Y = B  

---

## Truth Table

| SEL | A | B | Y |
|-----|---|---|---|
|  0  | 0 | X | 0 |
|  0  | 1 | X | 1 |
|  1  | X | 0 | 0 |
|  1  | X | 1 | 1 |

(X = don’t care)

---

## Simulation Waveform

<img width="1905" height="171" alt="Image" src="https://github.com/user-attachments/assets/f02b4fea-5990-4100-ab2d-8cfae1eb51bc" />


---

## Waveform Explanation

- A=0, B=1, SEL=0 → Y=0 (A selected)  
- A=0, B=1, SEL=1 → Y=1 (B selected)  
- A=1, B=0, SEL=0 → Y=1 (A selected)  
- A=1, B=0, SEL=1 → Y=0 (B selected)  

---

## Key Observation

- Output always follows the selected input  
- Changing SEL switches the data path instantly  
- This is purely combinational (no clock)

---

## Key Point

Multiplexers are fundamental building blocks used for data selection, routing, and control logic in RTL design.
