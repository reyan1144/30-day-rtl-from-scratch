# Shift Register

## Overview
A shift register is a sequential circuit that shifts stored data by one position on each clock cycle.

---

## Design

- 4-bit register  
- Serial input  
- Left shift operation  
- Enable-controlled shifting  

---

## Logic

- On `posedge clk`:
  - If `rst = 1` → clear register  
  - Else if `en = 1` → shift left and insert new bit  

---

## Implementation

```verilog
q <= {q[2:0], d};
```

- Left shift operation  
- New bit inserted at LSB  

---



## Observation from waveform

- Data shifts left on each clock  
- New input bit enters from LSB  
- Output updates only when enable is high  

---

## Key Points

- Sequential circuit  
- Used for data storage and transfer  
- Common in serial communication  
