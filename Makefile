STATS = pi.js.stat pi.py.stat pi.c.stat pi.d.stat pi.rb.stat pi.php.stat
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
	if which node; then \
		$(TIME) -o $@ node $<; \
	else \
		echo "Skipped" >>$@; \
	fi

%.py.stat: %.py
	echo '\nPython:' >$@
	$(TIME) -o $@ python $<

%.c.stat: %.c
	gcc -O3 -o $@.bin $<
	echo '\nC:' >$@
	$(TIME) -o $@ ./$@.bin

%.d.stat: %.d
	echo '\nD:' >$@
	if which rdmd; then \
		$(TIME) -o $@ rdmd $<; \
	else \
		echo "Skipped!" >> $@; \
	fi

%.rb.stat: %.rb
	echo '\nRuby:' >$@
	if which ruby; then \
		$(TIME) -o $@ ruby $<; \
	else \
		echo "Skipped!" >> $@; \
	fi

%.php.stat: %.php
	echo '\nPHP:' >$@
	if which php; then \
		$(TIME) -o $@ php $<; \
	else \
		echo "Skipped!" >> $@; \
	fi

