STATS = pi.js.stat pi.py.stat pi.c.stat
TIME = time -a --format "%Es"

.PHONY: all
all: results.txt

.PHONY: clean
clean:
	@:
	rm -f results.txt *.stat *.bin *.o

results.txt: $(STATS)
	@:
	cat $(STATS) >$@

%.js.stat: %.js
	echo '\nNode.JS:' >$@
	$(TIME) -o $@ node $<

%.py.stat: %.py
	echo '\nPython:' >$@
	$(TIME) -o $@ python $<

%.c.stat: %.c
	gcc -o $@.bin $<
	echo '\nC:' >$@
	$(TIME) -o $@ ./$@.bin

