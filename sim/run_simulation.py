"""
4-Bit Reversible ALU — Qiskit Simulation
Run: python sim/run_simulation.py
"""

from qiskit import QuantumCircuit
from qiskit_aer import AerSimulator

QASM_FILE = "circuits/complete_alu.qasm"

def run_alu_simulation():
    print("Loading ALU circuit from QASM...")
    qc = QuantumCircuit.from_qasm_file(QASM_FILE)

    print(f"Circuit: {qc.num_qubits} qubits, {qc.num_clbits} classical bits")
    print(f"Gate count: {qc.size()}")
    print(f"Circuit depth: {qc.depth()}")
    print()

    simulator = AerSimulator()
    job = simulator.run(qc, shots=1024)
    result = job.result()
    counts = result.get_counts()

    print("=== Measurement Results ===")
    for bitstring, count in sorted(counts.items(), key=lambda x: -x[1]):
        print(f"  Output: {bitstring} — Count: {count}")

    print()
    most_likely = max(counts, key=counts.get)
    print(f"Most likely output: {most_likely}")
    print(f"  c[7..0] = {most_likely}")
    print(f"  Lower nibble (result): {most_likely[-4:]} = {int(most_likely[-4:], 2)}")

if __name__ == "__main__":
    run_alu_simulation()
```

---

### `.gitignore`
```
__pycache__/
*.pyc
*.pyo
.env
*.log
sim/results/
*.qobj
.ipynb_checkpoints/
.DS_Store
Thumbs.db
