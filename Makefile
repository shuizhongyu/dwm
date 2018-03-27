all:
	make -C dwm
	make -C dmenu
install:
	make -C dwm install
	make -C dmenu install
clean:
	make -C dwm clean
	make -C dmenu clean
