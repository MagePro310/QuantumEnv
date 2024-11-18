"""Wrapper for IBMs backend simulator."""

from qiskit_aer import AerSimulator
from qiskit import QuantumCircuit

from src.common.ibmq_backend import IBMQBackend
from src.tools import optimize_circuit_online


class Accelerator:
    """Wrapper for IBMs backend simulator."""

    def __init__(self, backend: IBMQBackend) -> None:
        self.simulator = AerSimulator.from_backend(backend.value())
        self._backend = backend
        self._qubits = len(self.simulator.properties().qubits)
        
    @property
    def qubits(self) -> int:
        """Get the number of qubits of the accelerator."""
        return self._qubits

    @property
    def backend(self) -> IBMQBackend:
        """Get the backend used by the accelerator."""
        return self._backend
    
    
    def run_and_get_counts(self, circuit: QuantumCircuit) -> dict[str, int]:
        """Run the quantum circuit on the simulator and get the result counts.
        
        Args:
            circuit (QuantumCircuit): The quantum circuit to run.
        
        Returns:
            dict[str, int]: The result counts from the simulation.
        """
        
        # TODO check qubit size
        #opt_circuit = optimize_circuit_online(circuit, self._backend) # Have some problems with blocking here
        #result = self.simulator.run(opt_circuit).result()
            
        #circuit = optimize_circuit_online(circuit, self._backend)      
        result = self.simulator.run(circuit).result()
        
        return result.get_counts(0)