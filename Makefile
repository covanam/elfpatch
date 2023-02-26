CPPFLAGS = -g -IELFIO -lcapstone -lkeystone

harden: test.o disasm.o cfg.o analysis.o reg-alloc.o disasm.h cfg.h analysis.h reg-alloc.h
	g++ -g test.o disasm.o cfg.o analysis.o reg-alloc.o $(CPPFLAGS) -o harden

clean:
	rm *.o harden