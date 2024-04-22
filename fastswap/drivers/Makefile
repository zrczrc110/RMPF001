KDIR ?= /lib/modules/`uname -r`/build

default:
	$(MAKE) -C $(KDIR) M=$$PWD

clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean

obj-m  := fastswap.o
ifeq ($(BACKEND),RDMA)
	obj-m += fastswap_rdma.o
	CFLAGS_fastswap.o=-DBACKEND=2
else
	obj-m += fastswap_dram.o
	CFLAGS_fastswap.o=-DBACKEND=1
endif

ifdef DELAY_EN
	CFLAGS_fastswap_dram.o=-DDELAY_EN
endif