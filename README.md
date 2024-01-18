## Vending Machine Design

# Problem
Design and build a vending machine system that takes a fixed amount of money and dispense a rotten tomato based on the following requirements:
- The vending machine has a single coin slot that accepts farthings (0.25d), half pennies (0.5d), and pennies (1d), and dispense a rotten tomato when a penny and farthing (1.25d) has been received.
- the machine dispenses the correct change (per farthing) for amounts greater than 1.25d using farthings and half penny coins.
- The vending machine is implemented using a Moore-style finite state machine (FSM) using System Verilog (SV) and demonstrated on a DE10-Lite board.

# Solution
- The output (Current state on the vending) of the D Flip Flop combines with the encoded input (user’s money) helps to generate the next state.
- The previous step will keep ongoing until the target amount is reached, and the user gets their rotten tomato along with the change.

# Electronic Devices
4:2 encoder, Clock Debouncer, Reset Debouncer, D Flip Flop, 2 Seven-Segment decoders, all implemented on a DE10-Lite board.
