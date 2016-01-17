ifneq ($(KERNELRELEASE),)
obj-m := hall_speed.o
else
KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	rm -rf *.ko *.o .*.cmd *.mod.c *.order *.symvers .tmp_versions
endif

