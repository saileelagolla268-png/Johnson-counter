# 4-Bit Johnson Counter in Verilog

## Description

This project implements a 4-bit Johnson Counter using Verilog HDL.

A Johnson Counter is a modified shift register where the inverted output of the last flip-flop is fed back to the input of the first flip-flop.

For an N-bit Johnson Counter, there are 2N unique states. Therefore, a 4-bit Johnson Counter has 8 states.

## State Sequence

```text
0000 → 0001 → 0011 → 0111
     → 1111 → 1110 → 1100
     → 1000 → 0000 → ...
```

## Files

* `johnson_counter.v` — Johnson Counter design
* `johnson_counter_tb.v` — Testbench
* `johnson_counter.vcd` — Simulation waveform

## Simulation

Compile using Icarus Verilog:

```bash
iverilog -o johnson_counter_sim johnson_counter.v johnson_counter_tb.v
```

Run the simulation:

```bash
vvp johnson_counter_sim
```

## Tools Used

* Verilog HDL
* Visual Studio Code
* Icarus Verilog
* GTKWave

## Features

* 4-bit Johnson Counter
* Asynchronous active-high reset
* Separate Verilog testbench
* VCD waveform generation
* Suitable for simulation in VS Code

## Author

Add your name here.

