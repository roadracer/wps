all:
	./each_locale $(MAKE) all

update:
	[ -d "$(CODING)" ]
	./each_locale $(MAKE) update CODING=$(CODING)

install:
	./each_locale $(MAKE) install

uninstall:
	./each_locale $(MAKE) uninstall

clean:
	./each_locale $(MAKE) clean
