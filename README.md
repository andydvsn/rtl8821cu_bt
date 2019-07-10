RTL8821CU BT Driver
====================

This is a copy of the [RTL8821CU](https://www.realtek.com/en/products/communications-network-ics/item/rtl8821cu) Bluetooth driver tweaked to compile on 3.16 branch of the Linux kernel. Its intention is to be used with Openpeak OpenFrame devices, but no significant changes have been made to the driver.

The RTL8821CU IC provides both 2.5 / 5 GHz WLAN (802.11ac / 802.11abgn) and Bluetooth 4.2 in a single package. __This driver is BT only and doesn't provide WLAN compatibility.__

However, the code in my [rtl8821cu_wlan](https://github.com/andydvsn/rtl8821cu_wlan) repo should get wireless up and running with 3.16 kernels as well.

Instructions below apply to [OpenFrame Ubuntu Images](https://dl.birdslikewires.net/openframe/ubuntu/) but should be generic enough to apply to other flavours.

Hardware
---------

This has been tested against the following adapters:

* __EZCast EZC-5200BS__ (ID 0bda:c820 Realtek Semiconductor Corp.) - [Amazon UK](https://www.amazon.co.uk/gp/product/B07H87NKKM/ref=as_li_ss_tl?ie=UTF8&psc=1&linkCode=ll1&tag=birdslikewire-21&linkId=d68b32027353c457caba6f0822b06848&language=en_GB)

Yes, that's a shill link to Amazon if you'd like to buy one, though they're pretty ubiquitous and easy to identify, even where they've been rebadged.


Build
------

### Environment ###

Ensure you have kernel headers and build-essential installed. These can be added to the OpenFrame automatically with:

	of-install-build

Or generically:

	sudo apt install linux-headers-`uname -r` build-essential git bluez

### Fetch, Compile, Install ###

	git clone https://github.com/andydvsn/rtl8821cu_bt.git
	cd rtl8821cu_bt
	make	

The `make` command installs the firmware and module automatically.

Run
----

Fire up the module with:

	modprobe rtk_btusb

Check its presence with:

	hciconfig
		
If you experience any odd behaviour at this point, power down your device entirely, then reboot. The driver should load automatically.	
	
	
	
	
	
	
	
	
	
	
	
	
	
