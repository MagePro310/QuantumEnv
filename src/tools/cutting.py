"""Circuit cutting using the CTK library."""
from uuid import UUID, uuid4

from circuit_knitting.cutting import (
    partition_problem,
    generate_cutting_experiments,
)
from circuit_knitting.cutting.qpd import WeightType

from qiskit import QuantumCircuit
from qiskit.quantum_info import PauliList
import numpy as np

from src.common import Experiment

def cut_circuit(
    circuit: QuantumCircuit,
    partitions: list[int],
    observables: (PauliList | None) = None,
) -> tuple[list[Experiment], UUID]:
    """_summary_

    Args:
        circuit (QuantumCircuit): _description_
        partitions (List[int]): _description_
        observables (PauliList  |  None, optional): _description_. Defaults to None.

    Returns:
        tist[Experiemt, uuid] _description_
    """
    if observables is None:                                                     # If observables is None, set it to Z^N
        observables = PauliList("Z" * circuit.num_qubits)
    partitions = _generate_partition_labels(partitions)                         # Generate partition labels
    partitioned_problem = partition_problem(circuit, partitions, observables)   # Partition the problem
    experiments, coefficients = generate_cutting_experiments(                   # Generate cutting experiments
        partitioned_problem.subcircuits,                                        # Subcircuits
        partitioned_problem.subobservables,                                     # Subobservables
        num_samples=np.inf,                                                     # Number of samples
    )
    uuid = uuid4()                                                              # Generate UUID
    return [
        Experiment(
            circuits,
            coefficients,
            2**12,  # TODO Calculate somehow
            partitioned_problem.subobservables[partition_label],
            partition_label,
            None,
            uuid,
        )
        for partition_label, circuits in experiments.items()
    ], uuid                                                                     # Return experiments and UUID


def _generate_partition_labels(partitions: list[int]) -> str:
    # TODO find a smart way to communicate partition information
    return "".join(str(i) * value for i, value in enumerate(partitions))        # Return partition labels