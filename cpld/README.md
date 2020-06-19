** SUMMARY **
The BeagleSatella hardware uses a CPLD that acts as a filter on the SNES B-Bus.
In short, there is a lot of B-Bus traffic, but BeagleSatella is only interested
in bus reads/writes that map to one of its MMIO registers. Rather than 
determine in software whether an address on the B-Bus is intended for 
BeagleSatella, the CPLD evaluates all addresses on the bus in hardware and then
only passes along the appropriate read/write control signals if the address
matches a BeagleSatella MMIO register. Because this is implemented in hardware,
the comparison can be made in ~20ns.

You shouldn't need to change the BeagleSatella CPLD design unless you are 
modifying it to filter a different range of MMIO addresses for your own 
project. You will need to program the CPLD is you are building your own
hardware from scratch and need to do the initial programming of the CPLD.

** AUTHOR **
Andrew Henderson (hendersa@icculus.org): https://icculus.org/~hendersa

** DESCRIPTION/BUILDING **
The CPLD used in BeagleSatella is an Atmel ATF1504AS in a PLCC package. The
tools and toolchain for synthesizing and programming a design for this CPLD are
Windows-based, free, and downloadable from here:

https://www.microchip.com/design-centers/fpgas-and-plds/splds-cplds/pld-design-resources 

The software tools you need are WinCUPL (for compiling the CUPL design source
code) and ATMISP (for programming the CPLD via JTAG).  You’ll also need a 
hardware JTAG programmer that uses a JTAG-A 10-pin connector. I use the 
Microchip ATDH1150USB USB ISP cable, which costs rough 60USD. The workflow is
as follows:

1. Using WinCUPL, open the file BEAGLESATELLA.pld. This is the main source 
file. Click the “Device Dependent Compile” button on the WinCUPL GUI to compile
this design and generate a variety of intermediary files. The two generated 
files of interest are the BEAGLESATELLA.jed JEDEC file (the file to be 
programmed to the CPLD) and the BEAGLESATELLA.fit file (the pinout and logic 
summary).

2. If you are serious about CPLD development and want to really experiment with
BeagleSatella’s CPLD source, you should have a CPLD development kit:

- ATF15XX-DK3-U CPLD development kit, with JTAG USB cable (~160USD)
- ATF15XXDK3-SAJ44 44-pin PLCC adapter for the devkit (~40USD)

If you are only interested in tweaking the CPLD design and reprogramming your
CPLD, BeagleSatella supports in-system programming (ISP). In short, you can 
connect a JTAG cable that supports JTAG-A (10-pin) to the BeagleSatella 
(connector J3) and program the CPLD in-place. For this, you’ll only need a JTAG
USB cable:

- ATDH1150USB USB JTAG cable (~60USD)

This USB JTAG cable is included in the ATF15XX development kit. The kit's docs
say that it comes with a parallel port-based JTAG cable, but this isn't the
case. Once you have the appropriate equipment, it is time to start programming
the CPLD.

3. Ensure that you have the CPLD powered up and is ready to be programmed. When
using the dev kit, the programming process is:

A. Power down the dev kit
B. Change the “VccIO Selector” jumper to “5V(AS)”
C. CAREFULLY insert the 44-pin PLCC into the PLCC adapter (the adapter pins 
bend very easily)
D. Power up the dev kit
E. Program the CPLD using ATMISP
F. Power down the dev kit
G. Power down your BBB
G. Remove the CPLD from the dev kit and place it into the U1 socket on the
BeagleSatella (the “dot” for pin 1 should face the BBB’s ethernet jack)
H. Power up your BBB

When programming the CPLD using the BeagleSatella board, the programming
process is:

A. Power up your BBB
B. Connect the USB JTAG cable to connector J3 of the BeagleSatella
C. Program the CPLD using ATMISP
D. Disconnect the USB JTAG cable from connector J3 

4. Now that you have the JEDEC file, use ATMISP to program the CPLD with the
compiled design. Connect to the USB JTAG to both the system with the CPLD 
(either BeagleSatella or the CPLD dev kit) and your desktop PC. Read the 
ATMISP documentation for the details, but the workflow is:

A. Add the ATF1504AS to the JTAG scan chain (Edit → Add New Device)
B. “Erase” the CPLD
C. “Program/Verify” the CPLD using the JEDEC file “BEAGLESATELLA.jed”

Additional Notes:

- WinCUPL can’t handle spaces in filenames, so don’t try to build your project
from some directory named something like “c:\my stuff\beaglesatella”. It will
just fail without an explanation.
- WinCUPL crashes a lot, so save often!
- When making design changes, WinCUPL can silently fail at an intermediary 
stage of the compilation process. It doesn’t remove any existing output files
when it does this, so it may look like your compile has completed successfully.
I highly recommend you manually delete all files except the .pld and .si files
before you rebuild the project.
- If WinCUPL is silently failing to build your project, and you've gotten far
enough to generate the BEAGLESATELLA.tt2 file, try running the included 
"build.bat" file. This executes the fitter program for the ATF1504 CPLD and
dumps out build errors that the WinCUPL GUI never shows you.
