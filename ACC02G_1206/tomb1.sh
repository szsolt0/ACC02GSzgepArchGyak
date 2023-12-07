#!/bin/bash

declare -a rand_nums

for i in $(seq 0 9); do
	rand_nums+=($RANDOM)
done

echo 'Eredeti számok:'

for i in "${rand_nums[@]}"; do
	echo $i
done

for i in $(seq 0 9); do
	rand_nums[i]=$((rand_nums[i] + 1))
done

echo 'Új számok:'

for i in "${rand_nums[@]}"; do
	echo $i
done
