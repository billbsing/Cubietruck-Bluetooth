#!/bin/bash

/usr/local/bin/brcm_patchram_cubietruck --patchram /lib/firmware/ap6210/bcm20710a1.hcd \
--enable_hci --no2bytes --tosleep 1 --bd_addr 12:23:45:67:89:ab  /dev/ttyS1

hciattach /dev/ttyS1 any
hciconfig hci0 up
