.PHONY: find-getppid-call build strace clean


find-getppid-call: getppid.log
	cat getppid.log | grep -n 'getppid'


strace: getppid.log


build: getppid


clean:
	rm -rf getppid getppid.log



getppid: getppid.s
	gcc -static -o getppid getppid.s

getppid.log: getppid
	strace -o getppid.log ./getppid
