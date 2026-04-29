# Barrel Shifter

## Overview
A barrel shifter is a combinational circuit that shifts input data by a specified number of positions in a single operation.

Unlike sequential shifting, it does not require multiple clock cycles.

---
## Block Diagram  (only for reference)

<img width="657" height="575" alt="Image" src="https://github.com/user-attachments/assets/6431c03f-56ec-405d-929d-35c572caca65" />

---

## Design

- 4-bit input data  
- 2-bit shift control  
- Left shift operation  

---

## Logic

- shift = 00 → no shift  
- shift = 01 → shift left by 1  
- shift = 10 → shift left by 2  
- shift = 11 → shift left by 3  

---

## Implementation

The design uses a case statement to select the required shift amount:

```verilog
case (shift)
  2'b00: out = data;
  2'b01: out = data << 1;
  2'b10: out = data << 2;
  2'b11: out = data << 3;
endcase
```

---


## Observation

- Output changes immediately with change in shift value  
- All shift cases are correctly implemented  
- No clock is involved (pure combinational logic)  

---

## Key Points

- Performs shift in a single step  
- Faster than sequential shifting  
- Widely used in ALU and processors  
- Implements logical shift (fills with 0)  


