# Parameterized Adder

## Overview
A Parameterized Adder adds two N-bit inputs. The bit-width is defined using a parameter, making the design reusable for different sizes.

---

## Logic

```verilog
assign {COUT, SUM} = A + B;
```

- `A + B` produces (WIDTH + 1) bits  
- `SUM` gets the lower WIDTH bits  
- `COUT` gets the extra MSB (overflow)  

---

## Key Concept

The `{}` operator (concatenation) is used to split the result:
- `COUT` → overflow bit  
- `SUM` → remaining bits  

Example (WIDTH = 4):  
A = 1111, B = 0001 → Result = 10000  
SUM = 0000, COUT = 1  

---

## Simulation Waveform

<img width="1913" height="193" alt="Image" src="https://github.com/user-attachments/assets/18306afa-407a-4d9b-89f5-5c2e211853f1" />

---

## Waveform Explanation

- A=0010, B=0011 → SUM=0101, COUT=0  
- A=0100, B=0011 → SUM=0111, COUT=0  
- A=1111, B=0000 → SUM=1111, COUT=0 (boundary case)  
- A=1111, B=0001 → SUM=0000, COUT=1 (overflow)  
- A=1010, B=1010 → SUM=0100, COUT=1 (overflow)  

---

## Key Observation

- `COUT = 1` only when result exceeds WIDTH bits  
- Design works correctly for both normal and overflow cases  

---

## Key Point

Parameterized design enables scalable and reusable RTL modules.
