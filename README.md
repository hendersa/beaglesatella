** SUMMARY **
BeagleSatella is a hardware/software solution that implements the basic 
interface functions of peripherals compatible with the Super Nintendo (SNES)
and Super Famicom (SFC) game consoles. These consoles contain a rarely-used
expansion port on their underside that was intended to interface with a variety
of hardware peripherals. Unfortunately, very few commercial peripherals were 
made available, with the most widely used being the Japan-only Satellaview 
satellite modem. 

BeagleSatella is not emulation, but an actual SNES add-on peripheral that plugs
directly into your game console. BeagleSatella uses a BeagleBone Black (BBB) 
single-board computer with a custom "cape" expansion PCB as the hardware to 
interface with the console. Firmware running on the BBB's pair of programmable
real-time units (PRUs) provides the nanosecond-scale timing required to
interface with the SNES in real-time. Additional peripheral behaviors are 
controlled using kernel drivers and userspace software running under the BBB's
Linux OS. 

** AUTHOR **
Andrew Henderson (hendersa@icculus.org): https://icculus.org/~hendersa

** DESCRIPTION **
The BeagleSatella hardware and firmware offers the following features:

- CPLD-based Hardware filtering and translation of memory-mapped I/O register
accesses from the SNES B-Bus.

- Integrated JTAG interface for easy CPLD reprogramming.

- Arbitrary range of up to 64 contiguous memory-mapped I/O registers available.

- BBB PRU usage guarantees the servicing of register read/write requests within
a 150 ns time window.

- Audio interfacing via the expansion port's stereo audio inputs.

** BUILDING **
Since BeagleSatella has both hardware and software aspects to it, this 
repository is broken down into several subdirectories:

- "cpld" contains the CUPL source code for the CPLD IC used on the cape PCB.

- "firmware" contains the PRU firmware for the BBB that communicates with the
cape PCB.

- "images" contains schematics, board renders, and other images that provide a 
preview of the system.

- "kernel" contains the kernel driver and device tree files for the BBB so that 
the BBB can communicate with the cape PCB.

- "pcb" contains the KiCad design files and gerber files for the cape PCB.

- "userspace" contains BBB userspace software for high-level control of the
whole BeagleSatella system. 