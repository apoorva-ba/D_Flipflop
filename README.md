# D_Flipflop
Verilog implementation and functional verification of D-Flip flop using a testbench and simulation waveform
## Objective
- Design a positive edge-triggered D Flip-Flop.
- Verify the functionality using a Verilog testbench.
- Generate simulation waveforms using a VCD dump file.
- Simulate the design using EDA Playground and analyze the waveform in GTKWave.

## Inputs

| Signal | Width | Description |
|:------:|:-----:|-------------|
| clk | 1-bit | Clock input |
| reset | 1-bit | Asynchronous reset |
| D | 1-bit | Data input |

---

## Output

| Signal | Width | Description |
|:------:|:-----:|-------------|
| Q | 1-bit | Stored output |

---

## Truth Table

| Reset | Clock | D | Q |
|:-----:|:-----:|:-:|:-:|
| 1 | X | X | 0 |
| 0 | ↑ | 0 | 0 |
| 0 | ↑ | 1 | 1 |
| 0 | No Edge | X | No Change |


## Author

- Apoorva B A
- ECE Student
