all:
	./each_locale $(MAKE) all

update:
	[ -d "$(CODING)" ]
	./each_locale $(MAKE) update CODING=$(CODING)

sync:
	[ -d "$(CODING)" ]
	./each_locale $(MAKE) sync CODING=$(CODING)

install:
	./each_locale $(MAKE) install

uninstall:
	./each_locale $(MAKE) uninstall

clean:
	./each_locale $(MAKE) clean

package:
	./each_locale $(MAKE) package
