// PRU1 firmware to read ADDR[5:0] and DATA_IN[7:0] from R31[13:0]. 
// Written by Andrew Henderson (hendersa@icculus.org). 

#define CONST_PRUCFG  C4
#define XID_SCRATCH_BANK0   10

// Interrupt numbers are from prussdrv/include/pruss_intc_mapping.h
#define PRU0_PRU1_INTERRUPT  17
#define PRU1_PRU0_INTERRUPT  18
//#define PRU0_ARM_INTERRUPT   19
//#define PRU1_ARM_INTERRUPT   20
//#define ARM_PRU0_INTERRUPT   21
//#define ARM_PRU1_INTERRUPT   22

// From BeagleLogic defines...
//#define PRU1_PRU0_INTERRUPT 20
//#define PRU0_PRU1_INTERRUPT 21

.origin 0
.entrypoint INIT

INIT:

  // Enable OCP master port
  LBCO  r0, CONST_PRUCFG, 4, 4
  CLR   r0, r0, 4     // Clear SYSCFG[STANDBY_INIT] to enable OCP master port
  SBCO  r0, CONST_PRUCFG, 4, 4

  //LDI r0, 0
  MOV r17, PRU0_PRU1_INTERRUPT

POLL:
  // Wait for the sample ready signal
  // Spin and wait on interrupt from PRU0, sample and then clear it
  WBS  r31, 30 
  //SBCO &r17, C0, 0x24, 4

  // Store r31[15:0] bits into r0[15:0]
  MOV  r9.w0, r31.w0

  // Push the collected data out to shared register
  XOUT  XID_SCRATCH_BANK0, &r9, 4

  // Signal PRU0 to let it know we have its data
  MOV  r31, PRU1_PRU0_INTERRUPT + 16

  // Clear interrupt
  SBCO &r17, C0, 0x24, 4

  // Repeat forever
  JMP POLL

  // Shutdown (never reached)
  MOV  r31.b0, 19+16

HALT

