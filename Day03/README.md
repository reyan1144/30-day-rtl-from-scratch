# Day 03 – Priority Encoder and Decoder

## Overview
This day focuses on encoding and decoding techniques in digital design using Verilog. It covers priority-based encoding and one-hot decoding.

---

## Topics Covered

- Priority Encoder concept  
- Handling multiple active inputs  
- One-hot decoding  
- Case statement usage in RTL design  

---

## Modules Implemented

### 1. 8:3 Priority Encoder
- Encodes highest-priority active input  
- Includes valid signal to indicate active input  

### 2. 3:8 Decoder
- Converts 3-bit input into one-hot 8-bit output  
- Only one output is active at a time  

---

## Key Concepts

- Priority logic resolves conflicts when multiple inputs are active  
- Encoders reduce number of bits  
- Decoders expand number of outputs  
- Case statements are useful for structured combinational logic  

---

## What This Day Demonstrates

- Writing combinational logic using always blocks  
- Designing priority-based systems  
- Implementing one-hot encoding  
- Verifying designs using testbenches and waveforms  

---

## Structure

Each module includes:
- Design file  
- Testbench  
- Explanation  
- Waveform  

---

## Key Takeaway

Encoders and decoders are fundamental building blocks used in control logic, memory systems, and data routing in RTL design.
