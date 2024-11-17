""""""
from src.circuits import create_ghz, create_quantum_only_ghz
from src.common import create_jobs_from_experiment, IBMQBackend
from src.tools import (
    assemble_circuit,
    assemble_job,
    cut_circuit,
    optimize_circuit_offline,
)

def test_assemble_circuit() -> None:
    """_summary_"""
    circuits = [create_ghz(3), create_ghz(2)]
    circuit = assemble_circuit(circuits)
    assert circuit.num_qubits == 5
    # 5 Measure, 2H, 3CX
    assert sum(circuit.count_ops().values()) == 10
    
def test_assemble_reconstruct_job() -> None:
    """_summary_"""
    backend = IBMQBackend.BELEM
    circuit = create_quantum_only_ghz(5)
    circuit = optimize_circuit_offline(circuit, backend)
    experiments, _ = cut_circuit(circuit, [2, 3])
    jobs = []
    for experiment in experiments:
        jobs += create_jobs_from_experiment(experiment)
    
    combine_job = assemble_job([jobs[0], jobs[6]])
    assert combine_job.instance.num_qubits == 5
    assert len(combine_job.observable[0]) == 5