# 8:3 Priority Encoder

## Overview
An 8:3 priority encoder converts an 8-bit input into a 3-bit encoded output.  
If multiple inputs are high, the highest-order input (MSB) is given priority.

---  
## Block Diagram  
 <img width="728" height="622" alt="Image" src="https://github.com/user-attachments/assets/7836b28f-2a26-4e5e-93fe-6d3023d2baf5" />

## Logic

- i[7] has highest priority  (See Code)  
- i[0] has lowest priority  

Encoding:
- i[7] → o = 111  
- i[6] → o = 110  
- i[5] → o = 101  
- i[4] → o = 100  
- i[3] → o = 011  
- i[2] → o = 010  
- i[1] → o = 001  
- i[0] → o = 000  

---

## Valid Signal (v)

- v = 1 → At least one input is HIGH  
- v = 0 → No inputs are active  

---

## Simulation Waveform

<img width="1908" height="131" alt="Image" src="https://github.com/user-attachments/assets/442b857a-2b59-425e-bb0d-bf59eeae100a" />

---

## Observation

- When input is zero → v = 0  
- When one input is high → correct encoding is produced  
- When multiple inputs are high → highest priority input is selected  

---

## Key Points

- Resolves ambiguity when multiple inputs are active  
- Priority is given from MSB to LSB  
- Implemented using combinational logic  
- Used in interrupt controllers and arbitration logic  

---

## Key Takeaway

Priority encoders ensure deterministic selection of inputs in systems where multiple signals can be active simultaneously.
