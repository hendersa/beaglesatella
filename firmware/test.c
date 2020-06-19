/*
 * Super Nintendo gamepad parsing example code. Details of the hardware 
 * protocol used by the gamepad is decribed here:
 * https://gamefaqs.gamespot.com/snes/916396-super-nintendo/faqs/5395
 *
 * All functions in this source file were developed by Andrew Henderson 
 * (hendersa@icculus.org) and are made available under the BSD open source
 * license. See the LICENSE file for more details. 
*/

#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "pru.h"

static uint32_t lastState = 0;

static char bitNames[][3] = { 
  "BB", /* Button B */
  "BY", /* Button Y */
  "Se", /* Button Select */
  "St", /* Button Start */
  "^^", /* D-pad up */
  "VV", /* D-pad down */
  "<<", /* D-pad left */
  ">>", /* D-pad right */
  "BA", /* Button A */
  "BX", /* Button X */
  "BL", /* Button L */
  "BR" /* Button R */
};

static uint32_t count = 0;
static uint32_t regs[2][64];

static void interpretAddress(const uint32_t data) {
  uint32_t currentAddress = 0;
  uint32_t currentData = 0;
  uint32_t currentCycles = 0;
  uint32_t temp = 0;
  uint32_t i = 0;

#if 1 // BENCHMARK ONLY
  return;
  //temp = (data >> 24);
  //fprintf(stderr, "Cycles elapsed: %d\n", temp); 
#else
  //fprintf(stderr, "data: 0x%08X\n", data);

  lastState = data;// (data & 0xFFC03FFF);

  /* PARD/PAWR both asserted or clear */
  //if ( !(lastState & 0xC00000) || ((lastState & 0xC00000) == 0xC00000) ) return; 
  if ((lastState & 0x00C00000) == 0x00C00000) { fprintf(stderr, "ERROR: DUAL ASSERT\n"); return;}
  if (!(lastState & 0x00C00000)) { fprintf(stderr, "ERROR: NO ASSERT\n"); return; }
  currentAddress = (lastState >> 8) & 0x3F;
  currentData = (lastState & 0xFF);
  currentCycles = lastState >> 24;

  if (!(lastState & 0x400000)) regs[0][currentAddress]++;
  else regs[1][currentAddress]++;
#if 0
  if ( currentAddress <= 0x2F ) {
    if (!(lastState & 0x400000)) 
      fprintf(stderr, "Satellaview READ  ");
    else if (!(lastState & 0x800000)) 
      fprintf(stderr, "Satellaview WRITE ");
    else 
      fprintf(stderr, "ERROR: ");
    
    fprintf(stderr, "$%04X [0x%02X] Cycles: %d\n", currentAddress + 0x2188, currentData, currentCycles);
  }
  else fprintf(stderr, "ERROR: Invalid offset (0x%02X) (PARD=%d PAWR=%d)\n", currentAddress, !(lastState & 0x800000), !(lastState & 0x400000));
#endif
#endif
  count++;
  //if (!(count % 100)) fprintf(stderr, "Count: %d\n", count);
  return;
}

static void interpretGamepad(const uint32_t data) {
  uint32_t i = 0;
  char gamepad1[40];
  char gamepad2[40];
  char buttonText[3];
  uint32_t currentButton = 0;
  uint32_t currentGamepad = 0;

  /* Have the button states not changed? */
  if (data == lastState) 
    return;

  /* Update the last button state for future comparison */
  lastState = data;

  /* Setup the default output if no buttons are pressed */
  strcpy(gamepad1, "------------------------");
  strcpy(gamepad2, "------------------------");

  /* Sweep through the first 24 bits of the 32-bit shared memory data
   * to determine which buttons are pressed and construct a string to
   * represent the gamepad states */
  for (i = 0; i < 24; i++) {
    
    /* Find the button associated with the current bit */
    currentButton = i >> 1;

    /* Find the gamepad associated with the current bit, since the bits are
     * interleaved (bit 0 is GP1, bit 1 is GP2, bit 2 is GP1, etc.). */
    currentGamepad = i % 2;

    /* Is this button pressed? Buttons are active low, so a clear bit means
     * that the button is being pressed. */
    if ( !(data & (1 << (31 - i))) ) {

      /* This bit belongs to gamepad 1 */
      if (currentGamepad == 0)
        strncpy((gamepad1 + (currentButton * 2)), bitNames[currentButton], 2); 
      /* This bit belongs to gamepad 2 */
      else
        strncpy((gamepad2 + (currentButton * 2)), bitNames[currentButton], 2);

    } /* End if */
  } /* End for */

  /* Finally, print the result! */
  fprintf(stderr, "GP1[%s] GP2[%s]\n", gamepad1, gamepad2);

}

int main(void) {

  count = 0;
  memset(regs, 0, 64*4*2);

  /* Setup the PRU and load the gamepad firmware */
  PRUSetup("./pru0.bin", "./pru1.bin");
  fprintf(stderr, "PRU firmware loaded and started\n");

  /* Execute the main loop that polls the memory shared with the PRU */
  do {
    interpretAddress( PRUState() );
  } while (1); // count < 10000);

  fprintf(stderr, "**SUMMARY**\n");
  for (count = 0; count < 64; count++) {
    fprintf(stderr, "  0x%04x: R[%3d] W[%3d]\n", count + 0x2188, regs[0][count], regs[1][count]);
  }

  /* Shutdown the PRU (which we'll never reach) */
  PRUShutdown();
  return 0;

}

