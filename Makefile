STATS = pi.js.stat pi.py.stat
TIME = time -a --format %U

.PHONY: all
all: results.txt

.PHONY: clean
clean:
	@:
	rm -f results.txt *.stat

results.txt: $(STATS)
	@:
	cat $(STATS) >$@

%.js.stat: %.js
	echo '\nNode.JS:' >$@
	$(TIME) -o $@ node $< >/dev/null

%.py.stat: %.py
	echo '\nPython:' >$@
	$(TIME) -o $@ python $< >/dev/null

