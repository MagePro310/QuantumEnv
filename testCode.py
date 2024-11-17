from qiskit import transpile
from src.circuits import create_ghz

circuit = create_ghz(3)  # Example circuit
transpiled_circuit = transpile(circuit, basis_gates=simulator.configuration().basis_gates)