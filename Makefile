PREFIX := /usr
INSTALLDIR := $(PREFIX)/share/emulationstation/themes/pixel


all:
	@echo "Nothing to make for es-theme-pixel. Available commands:\n"
	@echo "  make install       Installs files to $(DESTDIR)$(INSTALLDIR)"
	@echo "  make test-install  Runs through a test install\n"

install:
	mkdir -p $(DESTDIR)$(INSTALLDIR)
	cp -a 3do ags amiga amstradcpc apple2 arcade art atari800 atari2600 atari5200 atari7800 atarijaguar atarilynx atarist \
          auto-allgames auto-favorites auto-lastplayed bbcmicro c64 cd-i channelf coco colecovision colortvgame daphne \
          desktop dragon32 dreamcast famicom fba fds gameandwatch gamegear gb gba gbc gc genesis intellivision kodi love \
          macintosh mame mastersystem mega-cd megadrive mess msx mvs n3ds n64 nds neogeo nes ngp ngpc odyssey odyssey2 oric \
          pc pce-cd pcengine pc-fx pipplware ports ps2 ps3 ps4 psp psv psx residualvm retropie samcoupe saturn scummvm sega32x \
          segacd sfc sg-1000 snes sneseu steam stratagus supergrafx switch system telstar tg16 tgcd ti99 trs-80 vectrex \
          videopac virtualboy wii wonderswan wonderswancolor wu xb360 xbone xbox zmachine zxspectrum *.png *.xml *.txt $(DESTDIR)$(INSTALLDIR)

test-install: all
	DESTDIR=/tmp/build $(MAKE) install
