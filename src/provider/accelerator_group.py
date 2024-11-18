""""""
from itertools import zip_longest
from multiprocessing import Pool, current_process

from qiskit import QuantumCircuit

from src.common import CombinedJob, Experiment, ScheduledJob
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
    
    def run_jobs(self, jobs: list[ScheduledJob]) -> list[CombinedJob]:
        """Runs jobs in parallel across accelerators and retrieves counts.

        Args:
            jobs (list[ScheduledJob]): _description_

        Returns:
            list[ScheduledJob]: _description_
        """
        jobs_per_qpu = {
            qpu: [job for job in jobs if job.qpu == qpu]
            for qpu, _ in enumerate(self.qpus)
        }
        with Pool(processes=len(self.accelerators)) as pool:
            results = []
            for job in zip_longest(*jobs_per_qpu.values()):
                result = pool.apply_async(_run_job, [self.accelerators, job])
                result.append(result)
            results = [result.get() for result in results]
        results = [result for result in results if result is not None]
        return results

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

def _run_job(
    accs: list[Accelerator], jobs: tuple[CombinedJob | None]
) -> CombinedJob | None:
    """Runs a job on a given accelerator.
    
    Args:
        accs (List[Accelerator]): List of accelerators to run the job on.
        job (CombinedJob): Job to run.
    
    Returns:
        CombinedJob: Job with results.
    """
    pool_id = current_process()._identity[0] - 1  # TODO fix somehow
    job = jobs[pool_id]
    if job is None:
        return None
    job = job.job
    try:
        job.result_counts = accs[pool_id].run_and_get_counts(job.instance)

    except Exception as e:
        print(e)
    return job