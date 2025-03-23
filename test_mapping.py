from qiskit import QuantumCircuit, Aer, transpile
from qiskit.transpiler import CouplingMap
from qiskit_aer import AerSimulator
from qiskit.transpiler import Layout

# Create a simple quantum circuit
qc = QuantumCircuit(5)  # 5 qubits
qc.h(0)  # Apply a Hadamard gate to qubit 0
qc.cx(0, 1)  # Apply a CNOT gate between qubit 0 and qubit 1
qc.measure_all()  # Measure all qubits

# Define the manual mapping (logical qubits to physical qubits)
# Instead of using integers, we use qiskit Bit objects
manual_mapping = {qc.qubits[0]: 2, qc.qubits[1]: 3, qc.qubits[2]: 0, qc.qubits[3]: 1, qc.qubits[4]: 4}

# Convert manual mapping to Layout
layout = Layout(manual_mapping)

# Define the coupling map (example: a linear chain of qubits)
coupling_map = [[0, 1], [1, 2], [2, 3], [3, 4]]

# Transpile the circuit with the custom layout and coupling map
transpiled_circuit = transpile(qc, backend=AerSimulator(), coupling_map=CouplingMap(coupling_map), initial_layout=layout)

# Visualize the transpiled circuit
print(transpiled_circuit)

# Use AerSimulator to simulate and get the statevector
simulator = AerSimulator(method='statevector')  # Use statevector simulation

# Execute the original circuit using the AerSimulator with the statevector option
original_result = simulator.run(qc, shots=1).result()

# Execute the transpiled circuit
transpiled_result = simulator.run(transpiled_circuit, shots=1).result()

# Get the statevector from both results
original_statevector = original_result.get_statevector()
transpiled_statevector = transpiled_result.get_statevector()

# Calculate the fidelity (inner product squared)
fidelity = abs(original_statevector.conj().dot(transpiled_statevector))**2
print(f"Fidelity between original and transpiled circuits: {fidelity}")
