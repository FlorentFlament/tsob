#!/usr/bin/env bash

for i in {1..7}; do
	./slideshow-lot${i}.sh > ../gen/slideshow-lot${i}-data.asm
done
