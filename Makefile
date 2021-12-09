
ifneq ($(KERNELRELEASE),)
	obj-m := example01-dht11.o
	example01-dht11-objs := system_timer.o gpio.o dht11.o driver.o user.o


else
	KERNELDIR ?= /usr/src/linux-headers-$(shell uname -r)
	PWD  := $(shell pwd)

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean

endif