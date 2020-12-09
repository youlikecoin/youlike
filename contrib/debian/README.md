
Debian
====================
This directory contains files used to package youliked/youlike-qt
for Debian-based Linux systems. If you compile youliked/youlike-qt yourself, there are some useful files here.

## youlike: URI support ##


youlike-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install youlike-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your youlike-qt binary to `/usr/bin`
and the `../../share/pixmaps/youlike128.png` to `/usr/share/pixmaps`

youlike-qt.protocol (KDE)

