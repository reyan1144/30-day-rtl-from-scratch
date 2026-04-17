# 4:1 Multiplexer

## Overview
A 4:1 multiplexer selects one of four input signals (i0, i1, i2, i3) based on two select lines (s1, s2) and forwards it to the output.

---

## Logic

- s1=0, s2=0 → out = i0  
- s1=0, s2=1 → out = i1  
- s1=1, s2=0 → out = i3  
- s1=1, s2=1 → out = i2  

---

## Implementation

The design is implemented using basic logic gates:

```verilog
assign out = (~s1 & ~s2 & i0) |
             (~s1 &  s2 & i1) |
             ( s1 &  s2 & i2) |
             ( s1 & ~s2 & i3);
```

Each term represents one selection condition.

---

## Simulation Waveform

<img width="1903" height="255" alt="Image" src="https://github.com/user-attachments/assets/2996a770-8045-449e-b29a-71367191b6bb" />

---

## Waveform Explanation

- Initially, inputs are: i0=0, i1=1, i2=0, i3=1  
- Changing select lines verifies selection:
  - s1=0, s2=0 → out = i0  
  - s1=0, s2=1 → out = i1  
  - s1=1, s2=0 → out = i3  
  - s1=1, s2=1 → out = i2  

- Inputs are then changed dynamically, and the same selection behavior is verified again.

---

## Observation

- Output always follows the selected input  
- Select lines correctly control data path  
- Design behaves as expected for all cases  

---

## Key Point

A multiplexer is a fundamental combinational circuit used for data selection and routing in digital systems.
