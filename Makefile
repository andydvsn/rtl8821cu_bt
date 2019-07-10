SRC_DIR	:= ./bluetooth_usb_driver
MDL_DIR	:= /lib/modules/$(shell uname -r)
DRV_DIR	:= $(MDL_DIR)/kernel/drivers/bluetooth

FIRMWARE_DIR := 8821CU

##########################################

install:
	make -C $(FIRMWARE_DIR) -s
	make -C $(SRC_DIR)
	cp -f $(SRC_DIR)/rtk_btusb.ko $(DRV_DIR)/rtk_btusb.ko
	depmod -a `uname -r`
	echo "install rtk_btusb success!"

##########################################

uninstall:
	make -C $(FIRMWARE_DIR) clean -s
	rmmod rtk_btusb
	rm -f $(DRV_DIR)/rtk_btusb.ko
	depmod -a $(MDL_DIR)
	echo "uninstall rtk_btusb success!"

##########################################

