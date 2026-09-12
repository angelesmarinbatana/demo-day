#!/bin/bash

#benchmark + collect times
bash bench.sh > data.txt

#get baseline->1 thread time
BASELINE=$(grep "elapsed:" data.txt | head -1 | awk '{print $2}')

#getspeedup for each thread count
awk -v base="$BASELINE" '
/matrix/ { threads = $2 }
/elapsed:/ { 
	time = $2
	speedup = base / time
	printf("%d %.3f\n", threads, speedup)
}' data.txt > speedup.data

#getcore count
CORES=$(sysctl -n hw.logicalcpu)

#plot
gnuplot << EOF
set terminal pngcairo size 800,600 font "Arial,16"
set output "speedup.png"
set title "Speedup ($(hostname), ${CORES} cores, -O3)"
set xlabel "Threads"
set ylabel "Speedup"
set grid
plot "speedup.data" with linespoints pointtype 7 pointsize 2 notitle
EOF

echo "✓ Plot saved to speedup.png"
cat speedup.data