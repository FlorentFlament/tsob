#!/usr/bin/env bash

for i in {1..7}; do
	./slideshow-lot${i}.sh > ../gen/slideshow-lot${i}-data.asm
done

./slideshow-intro.sh > ../gen/slideshow-intro-data.asm
./slideshow-outro.sh > ../gen/slideshow-outro-data.asm
