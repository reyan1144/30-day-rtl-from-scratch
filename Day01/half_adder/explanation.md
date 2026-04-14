# Half Adder

## Overview
A Half Adder is a basic combinational circuit used to add two single-bit inputs.

It produces two outputs:
- Sum
- Carry

---

## Block Diagram
<img width="894" height="494" alt="Image" src="https://github.com/user-attachments/assets/a2b1d882-6687-4e34-ad4f-de7e2eac6da5" />

---

### Sum Logic
The sum is calculated using the XOR operation:
- When inputs are different → sum = 1
- When inputs are same → sum = 0

This represents the actual addition result without considering carry.

### Carry Logic
The carry is calculated using the AND operation:
- Carry becomes 1 only when both inputs are 1

This represents the overflow generated during addition.

---

## Limitation

Because there is no carry input, half adder cannot handle chained addition.

This limitation is solved by the **full adder**, which includes a carry-in input.

---

## Practical Insight

In real digital design:
- Half adders are rarely used alone
- They are mainly used as building blocks inside more complex adders

Understanding half adder is important because it forms the foundation for:
- Full adders
- Ripple carry adders
- Arithmetic logic units (ALUs)
