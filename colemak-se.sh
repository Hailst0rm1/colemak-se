#!/bin/bash

sudo wget https://raw.githubusercontent.com/motform/colemak-se/master/src/xkb/colemak-se -O /usr/share/X11/xkb/symbols/colemak-se
sudo echo -n 'Section "InputClass"
        Identifier "system-keyboard"
        MatchIsKeyboard "on"
        Option "XkbLayout" "colemak-se"
        Option "XkbSymbols" "pc+colemak-se+inet(evdev)"
        Option "XkbModel" "pc105"
EndSection' > /usr/share/X11/xorg.conf.d/00-keyboard.conf
sudo cp /usr/share/X11/xorg.conf.d/00-keyboard.conf /usr/share/X11/xkb/symbols
sudo reboot
