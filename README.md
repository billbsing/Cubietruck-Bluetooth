Bluetooth Setup Script for Cubietruck on Arch Linux
---------------------------------------------------

To startup the Broadcom bluetooth chip correctly on the Cubietruck, I have found that the
best way to do this is to fix the following issues:

1. Change the brcm_patchram_plus to use RTS/CTS for flow control during the firmware upload to the chip.

2. Remove the infinite loop at the end of the brcm_patchram_plus after the firmware is uploaded.

3. Implement a systemd startup script to setup the Broadcom bluetooth chip on system startup.



Installation
------------

1. `git clone` or copy over the these files to your cubietruck into a new folder.

2. `make clean; make`

3. `sudo make install`

4. reboot to test.

