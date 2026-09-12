Assignment: Demo Day 

### Matrix Multiplication Parallelism Benchmark 

My goal for the demonstration was to see the difference in performance between different apple chip architectures, specifically for the m1 macbook air and the m3 macbook pro by testing how well they handle parallel workloads with level 3 optimization using matrix multiplication as a benchmark. 

### Findings:
M1 macbook air- 8 cores: 4 performance 4 efficiency 
- 5x speefup with 8 cores.
- gains dip around 4/5 threads, where you start using slower efficiency cores.

M3 macbook pro- 11 cores: 5 performance 6 efficiency 
- around 6.7x speedup with 11 cores.
- similar dip around 4/5 threads. 

### Files 
- [`cores.c`](https://github.com/angelesmarinbatana/demo-day/blob/main/cores.c): test to see your core/ thread count.
- [`matrix.c`](https://github.com/angelesmarinbatana/demo-day/blob/main/matrix.c): the benchmark that multiples two 350x350 matrices for 200 iterations with openmp parallelization. 
- [`bench.sh`](https://github.com/angelesmarinbatana/demo-day/blob/main/bench.sh): program runs the matrix multiplication benchmark across all cores and collects time data
- [`plot.sh`](https://github.com/angelesmarinbatana/demo-day/blob/main/plot.sh): make graph for comparing thread/ core count to performance gain. 
- [`presentation.pdf`](https://github.com/angelesmarinbatana/demo-day/blob/main/presentation.pdf): my slides i presented.
