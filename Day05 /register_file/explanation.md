# Register File

## Overview
A register file is a collection of registers used to store and access multiple data values.

---

## Design

- 4 registers  
- Each register is 4-bit wide  
- Supports one write and one read operation  

---

## Logic

- Write:
  - On clock edge, if `we = 1`, data is written to selected register  

- Read:
  - Output reflects the selected register based on read address  

---

## Implementation

- Array of registers used for storage  
- Write is sequential (clock-based)  
- Read is combinational  

---


## Observation from waveform

- Data is written only when write enable is active  
- Read operation provides correct stored value  
- Reset clears all registers  

---

## Key Points

- Multi-register storage system  
- Combines multiple DFF-based registers  
- Used in CPUs and memory systems  
