"""Assemble a single circuit from multiple independent ones."""
from qiskit import QuantumCircuit, ClassicalRegister, QuantumRegister
from qiskit.quantum_info import PauliList

from src.common import CircuitJob, CombineJob


def assemble_circuit(circuits: list[QuantumCircuit]) -> QuantumCircuit:
    """_summary_
    
    Args:
        circuits (list[QuantumCircuit]): _description_
        
    Returns:
        QuantumCircuit: _description_
    """
    composed_circuit = QuantumCircuit()
    for idx, circuit in enumerate(circuits):
        for creg in circuit.cregs:
            composed_circuit.add_register(
                ClassicalRegister(creg.size, f"{idx}_{creg.name}")
            )
        for qreg in circuit.qregs:
            composed_circuit.add_register(
                QuantumRegister(creg.size, f"{idx}_{qreg.name}")
            )
    
    qubits, clbits = 0, 0
    for circuit in circuits:
        composed_circuit.compose(
            circuit,
            qubits=list(range(qubits, qubits + circuit.num_qubits)),
            clbits=list(range(clbits, clbits + circuit.num_clbits)),
            inplace=True,
        )
        qubits += circuit.num_qubits
        clbits += circuit.num_clbits
    return composed_circuit
        
def assemble_job(circuit_jobs: list[CircuitJob]) -> CombineJob:
    """_summary_

    Args:
        circuit_jobs (list[CircuitJob]): _description_

    Returns:
        CombinedJob: _description_
    """
    
    combined_job = CombineJob(n_shots=circuit_jobs[0].n_shots)
    circuits = []
    qubit_count = 0
    observable = PauliList("")
    for job in circuit_jobs:
        combined_job.indices.append(job.index)
        circuits.append(job.instance)
        combined_job.coefficients.append(job.coefficient)
        combined_job.mapping.append(
            slice(qubit_count, qubit_count + job.instance.num_qubits)
        )
        qubit_count += job.instance.num_qubits
        observable = observable.expand(job.observable)
        combined_job.partition_labels.append(job.partition_label)
        combined_job.uuids.append(job.uuid)
        combined_job.cregs.append(job.cregs)
    combined_job.instance = assemble_circuit(circuits)
    combined_job.observable = observable
    return combined_job
        