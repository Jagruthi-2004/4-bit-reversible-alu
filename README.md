# 4-bit-reversible-alu
A 4-bit reversible ALU design using Toffoli, Fredkin, and Peres gates- implemented in QASM
# 4-Bit Reversible ALU — Quantum Circuit Implementation

A complete 4-bit Reversible Arithmetic Logic Unit (ALU) implemented in OpenQASM 2.0, 
designed for execution on quantum simulators (IBM Qiskit / IBM Quantum Platform).

 What Makes This Special

This is a fully reversible ALU every operation is bijective and implemented using 
quantum gates (Toffoli/CCX, CNOT/CX, Fredkin/SWAP). The design supports:

- 10 Operations in a single 29-qubit circuit
- Opcode-controlled operation selection via qubits q[16]–q[19]
- Outputs measured into an 8-bit classical register c[0]–c[7]

Supported Operations

| Operation   | Opcode (q16–q19) | Output Bits       |
|-------------|------------------|-------------------|
| AND         | 1111             | c[0]–c[3]         |
| OR          | 1110 (inv)       | c[0]–c[3]         |
| NOT         | 1101 (inv)       | c[0]–c[3]         |
| NAND        | 1100             | c[0]–c[3]         |
| NOR         | 1011 (inv)       | c[0]–c[3]         |
| XOR         | 1010 (inv)       | c[0]–c[3]         |
| XNOR        | 1001 (inv)       | c[0]–c[3]         |
| ADD         | 1000             | c[0]–c[4] (carry) |
| SUBTRACT    | 0111             | c[0]–c[4]         |
| INCREMENT   | 0110             | c[0]–c[4]         |
| DECREMENT   | 0101             | c[0]–c[4]         |
| MULTIPLY    | 0011             | c[0]–c[5]         |
| DIVIDE      | 0100             | c[0]–c[5]         |

Qubit Register Layout

| Qubits     | Role                              |
|------------|-----------------------------------|
| q[0]–q[3]  | 4-bit Input A                     |
| q[4]–q[7]  | 4-bit Input B                     |
| q[8]–q[15] | Output / Result register          |
| q[16]–q[19]| Opcode selector (operation select)|
| q[20]–q[28]| Ancilla / intermediate qubits     |

Total: 29 qubits, 8 classical bits
 Running the Circuit

### Prerequisites
```bash
pip install qiskit qiskit-aer
```

### Simulate with Qiskit
```bash
python sim/run_simulation.py
```

Or directly import the QASM file:
```python
from qiskit import QuantumCircuit
qc = QuantumCircuit.from_qasm_file("circuits/complete_alu.qasm")
```

### Run on IBM Quantum
1. Log in at [quantum.ibm.com](https://quantum.ibm.com)
2. Upload `circuits/complete_alu.qasm` via the Circuit Composer
3. Select a backend with ≥ 29 qubits

##  Gate Inventory

| Gate | Type        | Description                          |
|------|-------------|--------------------------------------|
| `x`  | Pauli-X     | Bit flip / NOT                       |
| `cx` | CNOT        | Controlled-NOT (reversible XOR)      |
| `ccx`| Toffoli     | Controlled-controlled-NOT            |
| `h`  | Hadamard    | Superposition                        |
| `t`  | T gate      | π/8 phase rotation                   |
| `tdg`| T†          | Inverse T gate                       |
| `swap`| SWAP       | Qubit swap                           |

### Custom Gate Definitions (in-circuit)
- `cxx(a,b,c)` — Double CNOT: `cx c,a; cx c,b`
- `l12(a,b,c)` — Custom 3-qubit reversible sub-circuit
- `li1(a,b,c)` — Inverse variant of l12
- `li2(a,b,c)` — Second inverse variant
- `cx3(a,b,c,d)` — Fan-out CNOT to 3 targets


## 📝 License

MIT License
