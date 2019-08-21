================================================================================
                         CoreGPIO simple gpio example
================================================================================
This example project reads the state of the GPIO inputs and writes the input state
back to the outputs. This would result in a change in the state of input
switches to be reflected in the state of LEDs.

--------------------------------------------------------------------------------
                            Mi-V Soft Processor
--------------------------------------------------------------------------------
This example uses a Mi-V Soft processor MiV_RV32IMA_L1_AHB. The design is 
built for debugging MiV_RV32IMA_L1_AHB through the PolarFire FPGA programming 
JTAG port using a FlashPro5. To achieve this the CoreJTAGDebug IP is used to 
connect to the JTAG port of the MiV_RV32IMA_L1_AHB.

All the platform/design specific definitions such as peripheral base addresses,
system clock frequency etc. are included in hw_platform.h. The hw_platform.h is 
located at the root folder of this project.

The MiV_RV32IMA_L1_AHB firmware projects needs the riscv_hal and the hal firmware
(RISC-V HAL).

The RISC-V HAL is available through Firmware catalog as well as the link below:
    https://github.com/RISCV-on-Microsemi-FPGA/riscv-hal

--------------------------------------------------------------------------------
                            How to use this example
--------------------------------------------------------------------------------
This example project GPIO 0 to GPIO 3 is configured as output and connected to 
LED DS0 to DS4. And GPIO 4 and GPIO 5 is configured as input and connected to 
switches SW1 and SW2 respectively. Based on switch pressed the corresponding 
LED will be turned on on PolarFire Eval Kit.

--------------------------------------------------------------------------------
                                Target hardware
--------------------------------------------------------------------------------
This example project is targeted at a Mi-V design running on the PolarFire
Eval Kit(MPF300) design which has CoreGPIO. The design should have an instance 
of CoreGPIO version 3.1.101 located at address 0x70002000UL with GPIOs 0 to 3 
connected to LEDs and GPIOs 4 and 5 connected to SW1 and SW2 switch. The example
project is built for a design using APB clock frequency of 83MHz.

This example project can be used with another design using a different clock
configuration. This can be achieved by overwriting the content of this example
project's "hw_platform.h" file with the correct data from your Libero design.

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                          Silicon revision dependencies
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
This example is tested on MPF300T device. 
