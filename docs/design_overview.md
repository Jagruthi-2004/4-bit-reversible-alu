# Design Overview

## Architecture

The ALU is implemented as a single sequential quantum circuit in OpenQASM 2.0 
with 29 qubits and 8 classical measurement bits.

Each operation section:
1. Sets the opcode qubits (q[16]–q[19]) to activate a specific operation
2. Computes via Toffoli/CNOT gates
3. Gates the result into the output register (q[8]–q[15]) using CCX with the opcode enable qubit q[22]
4. Resets all ancilla qubits back to |0⟩
5. Restores opcode qubits for the next operation

## Opcode Decoding

The 4-bit opcode (q[16]–q[19]) is decoded into a single enable qubit (q[22]) 
using a two-level Toffoli tree:
```
ccx q[16], q[17], q[20];   // AND of top 2 bits
ccx q[18], q[19], q[21];   // AND of bottom 2 bits  
ccx q[20], q[21], q[22];   // Final enable
```

q[22] = 1 only when the correct opcode is present, gating all output writes.

## Arithmetic Operations

### Ripple Carry Adder
- 4-bit ripple carry adder using CX (sum) and CCX (carry) gates
- Carry chain: q[13] → q[14] → q[15] → q[20]
- Output: q[8]–q[12] (4 sum bits + carry)

### Subtractor
- Implemented by complementing B (x on q[4]–q[7]) and adding with carry-in=1
- Uses the same ripple carry structure as the adder

### Multiply / Divide
- Uses custom composite gates: `l12`, `li1`, `li2`, `cxx`, `cx3`
- These are reversible implementations of modular arithmetic sub-circuits
- 6-bit output (c[0]–c[5]) for extended precision

## Reversibility

All operations preserve quantum reversibility:
- Every `reset` clears ancilla qubits to |0⟩ before reuse
- No information is permanently lost during computation
- The circuit can theoretically be run in reverse to recover inputs
