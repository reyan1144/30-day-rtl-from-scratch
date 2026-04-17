# 2:1 Multiplexer (All Styles)

## Overview
A 2:1 multiplexer selects one of two inputs (A or B) based on a select signal (SEL).

- SEL = 0 → Y = A  
- SEL = 1 → Y = B  

---

## Styles Implemented

### 1. Dataflow Style (assign)

```verilog
assign Y = (SEL) ? B : A;
```

- Uses continuous assignment  
- Compact and concise  
- Best suited for simple combinational logic  

---

### 2. Behavioral Style (if-else)

```verilog
always @(*) begin
    if (SEL == 1'b0)
        Y = A;
    else
        Y = B;
end
```

- Uses procedural block  
- Easy to read and understand  
- Commonly used in RTL design  

---

### 3. Behavioral Style (case)

```verilog
always @(*) begin
    case (SEL)
        1'b0: Y = A;
        1'b1: Y = B;
        default: Y = 1'b0;
    endcase
end
```

- Structured and scalable  
- Preferred for multiple conditions  
- Widely used in interview problems  

---

## Key Observation

- All three styles implement the same hardware  
- Output behavior is identical in all cases  
- Difference lies only in coding style  

---

## Key Point

Verilog allows multiple ways to describe the same combinational logic.  
Choosing the right style improves readability, scalability, and maintainability of RTL code.
