################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/CoreGPIO/core_gpio.c 

OBJS += \
./drivers/CoreGPIO/core_gpio.o 

C_DEPS += \
./drivers/CoreGPIO/core_gpio.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/CoreGPIO/%.o: ../drivers/CoreGPIO/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -msmall-data-limit=8 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:\RISC-V\mi-v\workspace\RV32_simple_blink" -I"C:\RISC-V\mi-v\workspace\RV32_simple_blink\hal" -I"C:\RISC-V\mi-v\workspace\RV32_simple_blink\riscv_hal" -I"C:\RISC-V\mi-v\workspace\RV32_simple_blink\drivers\CoreUARTapb" -I"C:\RISC-V\mi-v\workspace\RV32_simple_blink\drivers\CoreGPIO" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


