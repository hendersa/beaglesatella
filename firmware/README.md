** SUMMARY ** 
This directory contains both the current in-development PRU firmware and 
a test program to load the firmware onto the PRUs using the UIO driver.

** AUTHOR **
Andrew Henderson (hendersa@icculus.org): https://icculus.org/~hendersa

** DESCRIPTION **
The key files in this repository are:

prussdrv/*   : The Texas Instruments prussdrv driver library
pru.c        : Convenience wrapper functions around the prussdrv interface
test.c       : Starts execution of PRU firmware
pru0.p       : PRU0 firmware code (PRU assembly)
pru1.p       : PRU1 firmware code (PRU assembly)

** BUILDING **
To build the *.p files, you'll need the PASM tool:

$ git clone https://github.com/beagleboard/am335x_pru_package
$ cd am335x_pru_package/pru_sw/utils/pasm_source
$ ./linuxbuild
$ sudo cp ../pasm /usr/local/bin

Once PASM is installed, you can build the software (on your BBB) via make:

$ make

Then, load the firmware onto the PRUs and start them running:

$ sudo ./test

Since the PRU code uses every available PRU signal, the BeagleSatella device
tree overlay in the "kernel" directory must be used prior to running the PRU
code. This also means that the eMMC and HDMI overlays must be disabled in your
uEnv.txt file.