PREFIX := /usr
INSTALLDIR := $(PREFIX)/share/emulationstation/themes/pixel


all:
	@echo "Nothing to make for es-theme-pixel. Available commands:\n"
	@echo "  make install       Installs files to $(DESTDIR)$(INSTALLDIR)"
	@echo "  make test-install  Runs through a test install\n"

install:
	mkdir -p $(DESTDIR)$(INSTALLDIR)
	cp -a * $(DESTDIR)$(INSTALLDIR)

test-install: all
	DESTDIR=/tmp/build $(MAKE) install
