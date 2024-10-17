# **Finite State Machine (FSM) Sequence Detector**

A **Finite State Machine (FSM)** is a computational model used in digital electronics and computer science to design sequential logic systems. It consists of a finite number of states, transitions between those states based on input signals, and outputs that depend on the current state and input conditions. This project implements an FSM in Verilog to detect a specific binary sequence (`1101`) from an input data stream, showcasing the design and application of FSMs in digital circuits.

## 1. Project Overview
This project implements an FSM in Verilog to detect the sequence `1101`. The FSM transitions through various states based on the input and asserts an output signal (`start_shifting`) when the complete sequence is detected. The project illustrates key FSM design concepts, including synchronous reset functionality.

### Key Features
- **FSM Design**: Detects the sequence `1101` using five distinct states.
- **Synchronous Reset**: Resets the FSM to its initial state on demand.
- **Output Signal**: The `start_shifting` signal is asserted high when the complete sequence is detected.
- **Testbench**: A comprehensive testbench is provided to simulate the FSM and verify its functionality.

## 2. FSM States
The FSM consists of the following states:
- **State A (Initial State)**: The FSM is idle, waiting for the first `1`.
- **State B**: The first `1` has been detected.
- **State C**: Two consecutive `1`s have been detected.
- **State D**: The sequence `110` has been detected.
- **State E (Final State)**: The full sequence `1101` has been detected, asserting the output signal `start_shifting` to `1`.

## 3. State Transitions
The FSM transitions between states based on the input signal as follows:
- **A → B**: Transition occurs when the input is `1`.
- **B → C**: Transition occurs when another `1` is received.
- **C → D**: Transition occurs when a `0` is received.
- **D → E**: Transition occurs when the next `1` is received, completing the sequence.
- **E → A**: The FSM resets to state A or remains in state E if the sequence is detected.

## 4. FSM State Diagram
![image](https://github.com/user-attachments/assets/ae0c0669-6783-4e33-a1ee-c8925d3fe875)
  *(Insert a diagram of the FSM states and transitions here.)*

## 5. Simulation
Simulated FSM design using any Verilog simulator **EDA Playground**. The provided testbench applies a clock signal, resets the FSM, and feeds a sequence of inputs (`1101`) to ensure the FSM operates as intended.
![image](https://github.com/user-attachments/assets/04459084-522d-4b4a-842c-1932ce2530cb)
simulator - Yosys 0.37


## 6. Applications of FSM
FSMs are widely used in:
- **Digital Circuit Design**: Such as control units, data path control in processors, and memory access protocols.
- **Embedded Systems**: Managing states in devices like washing machines, elevators, or vending machines.
- **Communication Systems**: Protocol designs like UART, I2C, and SPI for reliable data transfer.
- **Robotics**: Controlling movements and responses to sensor inputs.
