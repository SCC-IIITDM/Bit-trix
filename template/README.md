# Bit-Trix 2026

## 1. Objective

Design a **hardware–software co-design system** to compute the **impulse response** of a discrete-time LTI system.  

**Given:**

- Input samples: `x[n]`  
- Output samples: `y[n]`  

**Required:**

- Compute the **impulse response sequence h[n]**  
- Store `h[n]` in the **provided RAM**  

**Notes:**

- No specific solution method is mandated.  
- Participants must design **hardware (ALU, functional blocks)** and **assembly-level software** to solve the problem.  
- Organisers have **private test cases**.

---

## 2. Organizer-Provided Hardware

### 2.1 Registers
- 4 general-purpose registers  
- Each register: 8 bits (1 byte)  
- Can **read 1 register per cycle**  
- Can **write 1 register per cycle**  

### 2.2 RAM 
- Participants may read/write from RAM to store  **x[n]**, **h[n]**, **intermediate values** and **computed h[n]**  
- Size is **limited**, as provided in the RAM file  

### 2.3 Instruction Decoder
- Maximum **16 instructions**  
- Participants must design ALU operations to fit within this limit  

---

## 3. Hardware Constraints

### 3.1 ALU Operations
- Maximum **2-3 operands per operation, specified below**, both from registers  
- Each operand: 1 byte  
- Output: 1 byte (overflow/underflow handling must be documented)  

### 3.2 Allowed Hardware Blocks
- **Adder (ADD)**, 8-bit, 2-operand  
- **Subtractor (SUB)**, 8-bit, 2-operand  
- **Multiplier (MUL)**, 8-bit, 2-operand  
- **Single real division block** (only 1 allowed)  
- **Complex multiply unit** (2 complex operands)
- **Multiply-Accumulate (MAC)** (8-bit, 3 operands)  
- **Radix-2 butterfly** (single unit only)  
- **Barrel shifter** (±4 bits max)  
- **Simple 2-operand logic units**: AND, OR, XOR, NOT  

### 3.3 Forbidden
- Full FFT, convolution, or deconvolution accelerators  
- ROM for constants or twiddle factors  
- Extra registers beyond the 4 provided  
- Multi-operand (>specified) ALU instructions  
- Pipelined multi-cycle blocks beyond allowed latencies  

---

## 4. Memory & Data Handling
- Participants must **compute and store `h[n]` in RAM**  
- Intermediate values may be stored in RAM, respecting memory limits  

---

## 5. Instruction Set Constraints
- Maximum **16 instructions**  
- Examples of allowed instructions:  
  - ADD, SUB, MUL, DIV, MOV, MAC, LOAD, STORE, HLT  
- Custom instructions are allowed, as long as the total does not exceed 16  
- No multi-operation instructions (e.g., full FFT step)  

---

## 6. Task Requirements
- Compute **correct h[n]** for any input x[n] and y[n] in RAM  
- Efficient use of **registers and RAM**  
- Write **assembly-level program** to sequence hardware blocks to compute h[n]  
- Must **comply with all hardware constraints**  

**Evaluation Criteria:**
- Correctness of `h[n]` for organiser-provided test cases  
- Efficiency: **total cycles used**  
- Resource utilization: how registers and RAM are used  

---

## 7. Deliverables
1. ALU and functional block diagrams  
2. Instruction set table (≤16 instructions)  
3. Datapath explanation and register usage strategy  
4. Memory access strategy  
5. Overflow/saturation documentation  
6. Verilog RTL implementation of ALU and functional blocks  
7. Assembly code to compute `h[n]`  
8. Execution trace for at least one sample input  

---

**Good Luck!**  

Solve efficiently, design carefully, and optimize for speed within the given hardware constraints.
