# 3:8 Decoder

## Overview
A 3:8 decoder converts a 3-bit binary input into an 8-bit one-hot output.  
Only one output line is active (HIGH) at a time based on the input value.

---

## Block Diagram

<img width="707" height="656" alt="Image" src="https://github.com/user-attachments/assets/1a7dea2c-fa1a-4ef3-883a-3828b8a16753" />

---

## Logic

For input `in[2:0]`, only one corresponding output bit is set to 1:

- 000 → 00000001  
- 001 → 00000010  
- 010 → 00000100  
- 011 → 00001000  
- 100 → 00010000  
- 101 → 00100000  
- 110 → 01000000  
- 111 → 10000000  

---

## Implementation

The design uses a case statement to generate one-hot output:

```verilog
case(in)
  3'b000: out = 8'b00000001;
  ...
  3'b111: out = 8'b10000000;
endcase
```

---

## Simulation Waveform

<img width="1905" height="110" alt="Image" src="https://github.com/user-attachments/assets/b0964232-314e-4d8a-9c0b-a52d32c89961" />

---

## Observation

- Only one output bit is HIGH at any time  
- Output position corresponds directly to input value  
- All input combinations are correctly decoded  

---

## Key Points

- Produces one-hot output  
- Used for address decoding in memory systems  
- Simple combinational logic  
- No priority involved (unlike priority encoder)  

---

## Key Takeaway

Decoders are essential components used for selecting one among many outputs based on binary input signals.
