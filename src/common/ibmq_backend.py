"""Backend wrapper for IBMQ backends."""
from enum import Enum

from qiskit_ibm_runtime.fake_provider import FakeBelemV2, FakeNairobiV2, FakeQuitoV2

class IBMQBackend(Enum):
    """Enum class for IBMQ backends.
    
    Args:
        Enum: Enum class for IBMQ backends.
    """
    
    BELEM = FakeBelemV2
    NAIROBI = FakeNairobiV2
    QUITO = FakeQuitoV2