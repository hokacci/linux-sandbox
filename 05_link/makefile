.PHONY: compare


compare: pause-static pause-dynamic
	ls -lh pause-static pause-dynamic
	ldd pause-static || true
	ldd pause-dynamic


pause-static:
	gcc -static -o pause-static pause.c

pause-dynamic:
	gcc -o pause-dynamic pause.c
