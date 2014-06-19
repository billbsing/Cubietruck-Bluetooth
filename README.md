Bluetooth Setup Script for Cubietruck an Arch Linux
---------------------------------------------------

To startup the Broadcom bluetooth chip correctly on the Cubietruck, I have found that the
best way is to do the following:

1. Change the brcm_pactch to use RTS/CTS for flow control

2. Remove the indefinite loop at the end of the driver upload

3. Implement a systemd startup script to setup the Broadcom bluetooth chip on startup.



Installation
------------

1. `git clone` or copy over the files to your cubietruck.

2. Run `make`

3. Run `sudo make install`



