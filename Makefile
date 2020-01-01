INCDIRS=include gen zik src
DFLAGS=$(patsubst %,-I%,$(INCDIRS)) -f3 -d

# asm files
SRC=$(wildcard src/*.asm)
ZIK=$(wildcard zik/*.asm)
GEN=$(wildcard gen/*.asm)

main.bin: src/main.asm $(SRC) $(ZIK) $(GEN)
	dasm $< -o$@ -lmain.lst -smain.sym $(DFLAGS)

run: main.bin
	stella $<

clean:
	rm -f main.bin main.lst main.sym
