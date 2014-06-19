Bluetooth Setup Script for Cubietruck on Arch Linux
---------------------------------------------------

To startup the Broadcom bluetooth chip correctly on the Cubietruck, I have found that the
best way is to do the fix the following issues:

1. Change the brcm_patchram_plus to use RTS/CTS for flow control.

2. Remove the infinite loop at the end of the brcm_patchram_plus afte the firmware upload

3. Implement a systemd startup script to setup the Broadcom bluetooth chip on startup.



Installation
------------

1. `git clone` or copy over the files to your cubietruck into a new folder.

2. `make clean; make`

3. `sudo make install`

4. reboot to test.

