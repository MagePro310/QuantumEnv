""""""
from functools import lru_cache

from qiskit import QuantumCircuit

@lru_cache
def create_ghz(num_qubits):
    """
    Create a GHZ state with the given number of qubits.
    
    Args:
        num_qubits (int): The number of qubits in the GHZ state.
        
    Returns:
        QuantumCircuit: The GHZ state circuit.
    """
    circuit = QuantumCircuit(num_qubits, num_qubits)
    circuit.h(0)
    for i in range(num_qubits - 1):
        circuit.cx(i, i + 1)
    circuit.measure(range(num_qubits), range(num_qubits))
    return circuit

@lru_cache
def create_quantum_only_ghz(n_qubits: int) -> QuantumCircuit:
    """_summary_
    
    Args:
        n_qubits (int): _description_
    
    Returns:
        QuantumCircuit: _description_
    """
    circuit = QuantumCircuit(n_qubits)
    circuit.h(0)
    for i in range(n_qubits - 1):
        circuit.cx(i, i + 1)
    return circuit