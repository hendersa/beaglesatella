#ifndef __PRU_H__
#define __PRU_H__

/*
 * PRUSetup() and PRUShutdown() are based on PRU_memAccess_DDR_PRUsharedRAM.c 
 * from the PRUSS reference code provided by TI. All other functions and 
 * firmware associated with this sample program were developed by Andrew 
 * Henderson (hendersa@icculus.org) and are made available under a BSD open 
 * source license.  
 *
 * The original code of PRU_memAccess_DDR_PRUsharedRAM.c is
 * Copyright (C) 2012 Texas Instruments Incorporated - http://www.ti.com/ 
*/

#include <stdint.h>

/* Load firmware into the PRU, create shared memory, start PRU execution */
void PRUSetup(const char *pru0firmware, const char *pru1firmware);

/* Check the value held in memory shared between this process and the PRU */
uint32_t PRUState(void);

/* Halt execution of the PRU's firmware program, close shared memory */
void PRUShutdown(void);

#endif /* __PRU_H__ */

