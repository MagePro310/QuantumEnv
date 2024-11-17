"""Tests for Accelerator."""

from pytest import approx

from src.circuits import create_ghz
from src.provider import Accelerator, IBMQBackend
from src.tools import optimize_circuit_offline


def test_accelerator_run() -> None:
    """Test running a circuit on an accelerator."""
    backend = IBMQBackend.BELEM                             # BELEM is a FakeBelemV2
    accelerator = Accelerator(backend)                      # Accelerator is an AerSimulator
    circuit = create_ghz(3)                                 # Create a GHZ state with 3 qubits
    circuit = optimize_circuit_offline(circuit, backend)    # Optimize the circuit
    counts = accelerator.run_and_get_counts(circuit)        # Run the circuit on the accelerator
    assert len(counts) == 2**3                              # Check the number of counts
    assert counts["000"] / 1024 == approx(0.5, 0.2)         # Check the counts
    assert counts["111"] / 1024 == approx(0.5, 0.2)         # Check the counts
