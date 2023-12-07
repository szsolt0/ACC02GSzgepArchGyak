#!/bin/bash


echo 'for ciklus:'

for i in $(seq 0 10); do
	echo $i
done

echo 'while ciklus:'

declare -i i=0
while [ $i -le 10 ]; do
	echo $i
	i=$((i + 1))
done

echo 'until ciklus:'

declare -i i=0
until [ $i -gt 10 ]; do
	echo $i
	i=$((i + 1))
done
