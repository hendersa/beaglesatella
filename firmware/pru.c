/*
 * PRUSetup() and PRUShutdown() are based on PRU_memAccess_DDR_PRUsharedRAM.c 
 * from the PRUSS reference code provided by Texas Instruments. All other 
 * functions and firmware associated with this sample program were developed 
 * by Andrew Henderson (hendersa@icculus.org). All code in the project is made 
 * available under the BSD open source license.  
*/

#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <string.h>

#include "prussdrv/prussdrv.h"
#include "prussdrv/pruss_intc_mapping.h"

#define PRU_NUM 	 	1
#define OFFSET_SHAREDRAM 	2048
#define PRUSS0_SHARED_DATARAM	4

static volatile void *sharedMem;
static volatile uint32_t *sharedMem_int;

void PRUSetup(const char *pru0firmware, const char *pru1firmware)
{
    unsigned int ret;
    tpruss_intc_initdata pruss_intc_initdata = PRUSS_INTC_INITDATA;

    /* Initialize the PRU */
    prussdrv_init ();

    /* Open PRU Interrupts */
    ret = prussdrv_open(PRU_EVTOUT_0);
    if (ret)
    {
        fprintf(stderr, "PRU0 interrupt open failed, exiting...\n");
        exit(-1);
    }
    ret = prussdrv_open(PRU_EVTOUT_1);
    if (ret)
    {
        fprintf(stderr, "PRU1 interrupt open failed, exiting...\n");
        exit(-1);
    }


    /* Get the interrupt initialized */
    prussdrv_pruintc_init(&pruss_intc_initdata);

    /* Start firmware on PRU */
    if (pru1firmware)
        prussdrv_exec_program (1, pru1firmware);
    if (pru0firmware)
        prussdrv_exec_program (0, pru0firmware);

    /* Allocate shared PRU memory */
    prussdrv_map_prumem(PRUSS0_SHARED_DATARAM, (void *)(&sharedMem));
    sharedMem_int = (uint32_t *) sharedMem;
}

uint32_t PRUState(void)
{
    fprintf(stderr, "About to request...\n");
    prussdrv_pru_send_wait_clear_event( ARM_PRU0_INTERRUPT, PRU_EVTOUT_0, PRU0_ARM_INTERRUPT);
    //prussdrv_pru_send_event(ARM_PRU0_INTERRUPT);
    fprintf(stderr, "Request complete!\n");
    return(sharedMem_int[OFFSET_SHAREDRAM]);
}

void PRUShutdown(void)
{
  /* Disable PRU and close memory mapping*/
  prussdrv_pru_disable(0);
	prussdrv_pru_disable(1);
  prussdrv_exit();
}

