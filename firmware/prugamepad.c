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

  /* Setup the PRU and load the gamepad firmware */
  PRUSetup("./gamepad.bin");
  fprintf(stderr, "PRU firmware loaded and started\n");

  /* Execute the main loop that polls the memory shared with the PRU */
  do {
    interpretGamepad( PRUState() );
  } while (1);

  /* Shutdown the PRU (which we'll never reach) */
  PRUShutdown();
  return 0;

}

