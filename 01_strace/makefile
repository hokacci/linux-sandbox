.PHONY: find-write-call build strace clean


find-write-call: hello.log
	cat hello.log | grep -n 'write'


strace: hello.log


build: hello


clean:
	rm -rf hello hello.log



hello: hello.go
	go build hello.go

hello.log: hello
	strace -o hello.log ./hello
