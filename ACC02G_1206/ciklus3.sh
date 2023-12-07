#!/bin/bash

declare -i n
read -rp 'Adj meg egy pozitív számot: ' n
declare -r n

if [ $n -lt 1 ]; then
	echo "$n nem pozitív egész szám"
	exit 1
fi

if [ $n -eq 1 ]; then
	echo '1 nem prím szám'
	exit
fi

declare -i i=2
while [ $i -lt $n ]; do
	if [ $((n % i)) -eq 0 ]; then
		echo "$n nem prím szám"
		exit
	fi

	i=$((i + 1))
done

echo "$n prím szám"
