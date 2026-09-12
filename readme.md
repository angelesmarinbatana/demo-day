Assignment: Demo Day 

### Matrix Multiplication Parallelism Benchmark 

My goal for the demonstration was to see the difference in performance between difference apple chip architectures, specifically the m1 macbook air and the m3 macbook pro by testing how well they handle parallel workloads with level 3 optimization using matrix multiplication as a benchmark. 

### Findings:
M1 macbook air- 8 cores: 4 performance 4 efficiency 
- 5x speefup with 8 cores.
- gains dip around 4/5 threads, where you start using slower efficiency cores.

M3 macbook pro- 11 cores: 5 performance 6 efficiency 
- around 6.7x speedup with 11 cores.
- similar dip around 4/5 threads. 

### Files 
- [`cores.c`](https://github.com/angelesmarinbatana/amarinba-hpds/blob/main/demo-day/cores.c]): see your core/ thread count.
- [`matrix.c`](https://github.com/angelesmarinbatana/amarinba-hpds/blob/main/demo-day/cores.c]): the benchmark that multiples two 350x350 matrices for 200 iterations with openmp parallelization. 
- [`bench.c`](https://github.com/angelesmarinbatana/amarinba-hpds/blob/main/demo-day/cores.c]): benchmark across all available threads + collects time data
- [`bench.c`](https://github.com/angelesmarinbatana/amarinba-hpds/blob/main/demo-day/cores.c]): graph comparing thread/ core count to performance gain. 
- [`presentation.c`](https://github.com/angelesmarinbatana/amarinba-hpds/blob/main/demo-day/cores.c]): my slides i presented.
