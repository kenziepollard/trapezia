#!/bin/bash
#$ -cwd
#$ -V              
NUMPOPS=1
for((POP=8; POP<=$NUMPOPS; POP++))
	do
	NUMREPS=10
	for((REP=1; REP<=$NUMREPS; REP++))
		do
		./structure.exe -K $POP -o output_k$POP.Trapezia$REP -D $RANDOM
		done
	done
	
