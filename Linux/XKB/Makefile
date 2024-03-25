# File        : makefile
# Description : XKB installation script for Colemak-DH from Keeb Utils
# Copyright   : (c) 2020-2023, Gergely Szabo
# License     : MIT
#
# This is a fork of binarybottle's 'Makefile' for the engram keyboard layout.
# Link: https://github.com/binarybottle/engram/blob/master/install/linux/x_keyboard_extension/Makefile

TARGET_SYM := /usr/share/X11/xkb/symbols/us
SOURCE_SYM := usr-share-X11-xkb-symbols-us
TARGET_RULE := /usr/share/X11/xkb/rules/evdev.xml
SOURCE_RULE := usr-share-X11-xkb-rules-evdev

all: reinstall

install: $(SOURCE_SYM) $(TARGET_SYM) $(SOURCE_RULE) $(TARGET_RULE)
	echo '//COLEMAK-DH//KEEB//UTILS//BEGIN' >> $(TARGET_SYM)
	cat $(SOURCE_SYM) >> $(TARGET_SYM)
	echo '//COLEMAK-DH//KEEB//UTILS//END' >> $(TARGET_SYM)
	sed -i "$$(awk '/variantList/ {print NR; exit}' $(TARGET_RULE)) r $(SOURCE_RULE)" $(TARGET_RULE)

uninstall: $(TARGET_SYM) $(TARGET_RULE)
	sed -i '/^\/\/COLEMAK\-DH\/\/KEEB\/\/UTILS\/\/BEGIN$$/,/^\/\/COLEMAK\-DH\/\/KEEB\/\/UTILS\/\/END$$/d' $(TARGET_SYM)
	sed -i '/COLEMAK-DH KEEB UTILS BEGIN/,/COLEMAK-DH KEEB UTILS END/d' $(TARGET_RULE)

reinstall:
	$(MAKE) uninstall
	$(MAKE) install

.PHONY: all install uninstall reinstall
