PREFIX := /usr

install:
	install -Dm755 ft9201_init.py -t $(DIST)$(PREFIX)/bin
	install -Dm644 71-ft9201_init.rules -t $(DIST)$(PREFIX)/lib/udev/rules.d
	install -Dm644 ft9201.bin -t $(DIST)$(PREFIX)/lib/firmware

uninstall:
	$(RM) $(DIST)$(PREFIX)/bin/ft9201_init.py
	$(RM) $(DIST)$(PREFIX)/lib/udev/rules.d/71-ft9201_init.rules
	$(RM) $(DIST)$(PREFIX)/lib/firmware/ft9201.bin

.PHONY: install uninstall
