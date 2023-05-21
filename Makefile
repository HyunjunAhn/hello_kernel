KERNDIR=/usr/src/linux-headers-$(shell uname -r)
obj-m+=hello.o
PWD=$(shell pwd)

#default:
all:
	make -C $(KERNDIR) M=$(PWD) modules

clean:
	make -C $(KERNDIR) M=$(PWD) clean
	rm -rf *.ko
	rm -rf *.o