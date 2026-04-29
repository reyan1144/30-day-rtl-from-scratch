# Register

## Overview
A register is a sequential circuit used to store multiple bits of data.  
It is built using multiple D flip-flops working in parallel.

---

## Design

- 4-bit data input  
- Clock-controlled storage  
- Synchronous reset  
- Enable-controlled loading  

---

## Logic

- On `posedge clk`:
  - If `rst = 1` → q = 0000  
  - Else if `en = 1` → q = d  
  - Else → retain previous value  

---

## Implementation

The register stores input data when enable is high:

```verilog
if (rst)
  q <= 4'b0000;
else if (en)
  q <= d;
```

---

## Observation from waveform

- Output updates only on clock edge  
- Reset clears all bits to 0  
- Enable controls when data is loaded  
- When enable is low, output remains unchanged  

---

## Key Points

- Multi-bit storage element  
- Built using multiple D flip-flops  
- Used in data storage, pipelines, and memory  

