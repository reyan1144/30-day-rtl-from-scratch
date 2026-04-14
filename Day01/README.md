# Day 1 – Introduction to RTL and Verilog

## Overview
This day focuses on understanding the fundamentals of RTL design and getting started with Verilog HDL.

---

## What is RTL?
RTL (Register Transfer Level) describes how data moves between registers and how logic operations are performed on that data.

It is important to understand that RTL is not software programming. It represents hardware behavior.

---

## Hardware vs Software
- Software executes sequentially (step by step)
- Hardware works in parallel (multiple operations happen at the same time)

This difference is very important while writing Verilog code.

---

## Introduction to Verilog
Verilog is a Hardware Description Language used to design digital circuits. The code written in Verilog can be synthesized into actual hardware such as FPGA or ASIC.

---

## Basic Module Structure

```verilog
module and_gate (
    input a,
    input b,
    output y
);
assign y = a & b;
endmodule
```
---

## Contents of Day01

1.HALF ADDER  
2.FULL ADDER  
3.PARAMATERIZED ADDER  

For day 1 we will learn about these 3 types of adders.

