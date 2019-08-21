/*******************************************************************************
 *(c) Copyright 2017-2018 Microsemi SoC Products Group.  All rights reserved.
 *
 * CoreGPIO example program.
 *
 * Please refer to the file README.txt for further details about this example.
 * 
 * SVN $Revision: 9855 $
 * SVN $Date: 2018-03-21 14:59:19 +0530 (Wed, 21 Mar 2018) $
 */
#include "hal.h"
#include "riscv_hal.h"
#include "hw_platform.h"
#include "drivers/CoreGPIO/core_gpio.h"

/******************************************************************************
 * GPIO instance data.
 *****************************************************************************/
gpio_instance_t g_gpio0;
gpio_instance_t g_gpio1;

#define INPUT_TO_OUTPUT_BIT_OFFSET      4

/******************************************************************************
 * main function.
 *****************************************************************************/ 
int main( void )
{
    uint32_t io_state;
    
    PLIC_init();
  
    /*
     * Initialize the CoreGPIO driver with the base address of the CoreGPIO
     * instance to use and the initial state of the outputs.
     */
    GPIO_init(&g_gpio1, COREGPIO_IN_BASE_ADDR, GPIO_APB_32_BITS_BUS);
    GPIO_init(&g_gpio0, COREGPIO_OUT_BASE_ADDR, GPIO_APB_32_BITS_BUS);
    /*
     * Disable interrupts in general.
     */
    HAL_disable_interrupts();

    /*
     * Configure the GPIOs.
     */
    GPIO_config( &g_gpio0, GPIO_0, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio0, GPIO_1, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio0, GPIO_2, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio0, GPIO_3, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio1, GPIO_0, GPIO_INPUT_MODE );
    GPIO_config( &g_gpio1, GPIO_0, GPIO_INPUT_MODE );

    /*
     * Infinite Loop.
     */
    while(1)
    {
        /*
         * Read inputs.
         */
        io_state = GPIO_get_inputs( &g_gpio1 );
        
        /*
         * Write state of inputs back to the outputs.
         */
        io_state = io_state >> INPUT_TO_OUTPUT_BIT_OFFSET;
        GPIO_set_outputs( &g_gpio0, io_state );
    }
}
