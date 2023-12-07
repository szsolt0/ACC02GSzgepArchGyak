#!/bin/bash

declare -i n
read -rp 'Adt meg N-t: ' n

if [ "$n" -lt 1 ]; then
	echo "$n nem pozitív egész szám"
	exit 1
fi

declare -a arr

for _ in $(seq 1 $n); do
	arr+=($((RANDOM % 100 + 1)))
done

for i in "${arr[@]}"; do
	echo $i
done

declare -i min=0
for i in $(seq 0 $((n - 1))); do
	if [ ${arr[$i]} -lt ${arr[$min]} ]; then
		min=$i
	fi
done
echo "Minimum elem: ${arr[$min]}"

declare -i max=0
for i in $(seq 0 $((n - 1))); do
	if [ "${arr[$i]}" -gt "${arr[$max]}" ]; then
		max=$i
	fi
done
echo "Maximum elem: ${arr[$max]}"

declare -i sum=0
for i in $(seq 0 $((n - 1))); do
	sum=$((sum + arr[i]))
done
echo "Összeg: $sum"

avg=$((sum / n))
echo "Átlag: $avg"
