# D Flip-Flop (DFF)

## Overview
A D Flip-Flop is a sequential circuit that stores a single bit of data.  
The output updates only on the clock edge, making it a basic memory element in digital design.

---

## Types Implemented

### 1. DFF with Synchronous Reset
- Reset is applied only on clock edge  
- Output changes only at rising edge of clock  

---

### 2. DFF with Asynchronous Reset
- Reset acts immediately (independent of clock)  
- Output resets instantly when reset is asserted  

---

### 3. DFF with Enable
- Data is stored only when enable is HIGH  
- When enable is LOW → output retains previous value  

---

## Logic Behavior

- On `posedge clk`:
  - If `rst = 1` → q = 0  
  - Else if `en = 1` → q = d  
  - Else → q holds previous value  

---

## Observation

- Output changes only on clock edge (sequential behavior)  
- Synchronous reset affects output only during clock edge  
- Asynchronous reset affects output immediately  
- Enable controls whether new data is loaded  

---

## Key Points

- DFF is a fundamental storage element  
- Used in registers, counters, and memory  
- Clock controls timing of data storage  
- Reset ensures known initial state  
