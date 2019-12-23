main.bin: main.asm fx.asm
	dasm main.asm -f3 -omain.bin -lmain.lst -smain.sym -d

run: main.bin
	stella main.bin

clean:
	rm -f main.bin main.lst main.sym
