"""structures for bin packing and LP problems"""
from dataclasses import dataclass, field

from qiskit import QuantumCircuit
import pulp


@dataclass
class Bin:
    """Helper to keep track of binning problem."""
    
    capacity: int = 0                                           # capacity of the bin
    full: bool = False                                          # whether the bin is full
    index: int = -1                                             # index of the bin
    jobs: list[QuantumCircuit] = field(default_factory=list)    # jobs in the bin
    qpu: int = -1                                               # qpu index
    

@dataclass
class LPInstance:
    """Helper to keep track of LP problem."""
    
    problem: pulp.LpProblem                                     # LP problem
    jobs: list[str]                                             # job names
    machines: list[str]                                         # machine names
    x_ik: dict[str, dict[str, pulp.LpVariable]]                 # variables x_ik: whether job i is assigned to machine k
    z_ikt: dict[str, dict[str, dict[int, pulp.LpVariable]]]     # variables z_ikt: whether job i is assigned to machine k at time t
    c_j: dict[str, pulp.LpVariable]                             # variables c_j: completion time of job j: c_j = s_j + p_j
    s_j: dict[str, pulp.LpVariable]                             # variables s_j: start time of job j: s_j = c_j - p_j
    

@dataclass
class JobResultInfo:
    """Helper to keep track of job results."""
    
    name: str                                                   # job name
    machine: str = ""                                           # machine assigned to the job
    start_time: float = -1.0                                    # start time of the job
    completion_time: float = -1.0                               # completion time of the job
    

@dataclass
class Result:
    """Benchmark result for one instance of setting+jobs."""
    makespan: float                                             # makespan of the schedule
    jobs: list[JobResultInfo]                                   # job results
    time: float