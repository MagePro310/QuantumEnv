""""""
from multiprocessing import Pool, current_process

from qiskit import QuantumCircuit

from src.common import Experiment
from .accelerator import Accelerator


class AcceleratorGroup:
    """Manages a group of quantum accelerators and facilitates parallel execution of circuits."""

    def __init__(self, accelerators: list[Accelerator]) -> None:
        self.accelerators = accelerators
        self._qpu_qubits = [acc.qubits for acc in accelerators]

    @property
    def qpus(self) -> list[int]:
        """Returns the number of qubits for each accelerator in the group.
        
        Returns:
            list[int]: Number of qubits for each accelerator.
        """
        return self._qpu_qubits
            
            
    @property
    def qubits(self) -> int:
        """Returns the total number of qubits across all accelerators.
         
        Returns:
            int: Total number of qubits.
        """
        return sum(self._qpu_qubits)

    def run_and_get_counts(self, circuits: list[QuantumCircuit]) -> list[dict[int, int]]:
        """Runs circuits in parallel across accelerators and retrieves counts.

        Args:
            circuits (List[QuantumCircuit]): Quantum circuits to execute.

        Returns:
            dict[int, Dict[int, int]]: Dictionary mapping each circuit index to its result counts.
        """
        counts = []
        
        for circuit, accelerator in zip(circuits, self.accelerators):
            counts.append(accelerator.run_and_get_counts(circuit))
        return counts
    
    def run_experiments(self, experiments: list[Experiment]) -> list[Experiment]:
        """Runs experiments in parallel across accelerators and retrieves counts.        
        
        Args:
            experiments (List[Experiment]): _description_
        
        Returns:
            List[Experiment]: _description_
        """
        with Pool(processes=len(self.accelerators)) as pool:
            results = []
            for experiment in experiments:
                result = pool.apply_async(_run_func, [self.accelerators, experiment])
                results.append(result)
            results = [result.get() for result in results]
        
        return results

def _run_func(accs: list[Accelerator], exp: Experiment) -> Experiment:
    """Runs an experiment on a given accelerator.
    
    Args:
        accs (List[Accelerator]): List of accelerators to run the experiment on.
        exp (Experiment): Experiment to run.
        
    Returns:
        Experiment: Experiment with results.
    """
    pool_id = current_process()._identity[0] - 1 # TODO fix somehow
    try:
        exp.result_counts = [
            accs[pool_id].run_and_get_counts(circuit) for circuit in exp.circuits
        ]
    except Exception as e:
        print(e)
    return exp