.PHONY: sar sar-with-loop sar-with-loop-getppid all

all: sar sar-with-loop sar-with-loop-getppid


sar:
	sar -P 0 1 1

sar-with-loop:
	taskset -c 0 ./loop.py & \
	pid=`echo $$!` && \
	sar -P 0 1 1 && \
	kill $${pid}

sar-with-loop-getppid:
	taskset -c 0 ./loopgetppid.py & \
	pid=`echo $$!` && \
	sar -P 0 1 1 && \
	kill $${pid}
