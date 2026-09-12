#!/bin/bash

ITER=200
MAX_THREADS=$(sysctl -n hw.logicalcpu)

gcc -O3 -fopenmp -DITER=${ITER} matrix.c -o matrix

for (( THREADS=1; THREADS<=MAX_THREADS; THREADS++ ))
do
	echo -n "matrix ${THREADS} "
	OMP_NUM_THREADS=${THREADS} ./matrix
done