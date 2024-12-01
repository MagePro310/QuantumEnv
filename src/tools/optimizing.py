"""Optimizing circuits using the Qiskit transpiler."""

from qiskit import QuantumCircuit
from qiskit.transpiler.preset_passmanagers import generate_preset_pass_manager

from src.common import IBMQBackend
from .mapping import map_circuit

def optimize_circuit_offline(
    circuit: QuantumCircuit,
    backend: IBMQBackend
    ) -> QuantumCircuit:
    """Optimization without hardware information.
    
    Should only run high-level optimizations.
    Need to do gate decomposition for cutting to work.
    For now, as placeholder init transplie pass from qiskit.
    
    Args:
        circuit (QuantumCircuit): The circuit to optimize.
        backend (IBMQBackend): The backend to optimize for.
        
    Returns:
        QuantumCircuit: The optimized circuit.
    """
    pass_manager = generate_preset_pass_manager(3, backend.value()) # 3 is optimization level
    
    # TODO eventually remove dependency on qiskit pass manager
    pass_manager.layout = None # No layout for now
    pass_manager.optimization = None # No optimization for now
    pass_manager.routing = None # No routing for now
    pass_manager.scheduling = None # No scheduling for now
    pass_manager.translations = None # No translations for now
    
    return pass_manager.run(circuit)


def optimize_circuit_online(
    circuit: QuantumCircuit, 
    backend: IBMQBackend
    ) -> QuantumCircuit:
    """Optimization with hardware information.
    
    Should run only low-level optimizations.
    For now, as placeholder restricted transpile pass from qiskit.
    
    Args:
        circuit (QuantumCircuit): The circuit to optimize.
        backend (IBMQBackend): The backend to optimize for.
    
    Returns:
        QuantumCircuit: The optimized circuit.
    """
    pass_manager = generate_preset_pass_manager(2, backend.value()) # 3 is optimization level (??? define to low level)
    pass_manager.init = None # No initial layout for now
    _, pass_manager.layout = map_circuit(circuit, backend) # Map the circuit to the backend
    
    return pass_manager.run(circuit)