################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/CoreUARTapb/core_uart_apb.c 

OBJS += \
./drivers/CoreUARTapb/core_uart_apb.o 

C_DEPS += \
./drivers/CoreUARTapb/core_uart_apb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/CoreUARTapb/%.o: ../drivers/CoreUARTapb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -msmall-data-limit=8 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:\RISC-V\mi-v\workspace\RV32_simple_gpio" -I"C:\RISC-V\mi-v\workspace\RV32_simple_gpio\hal" -I"C:\RISC-V\mi-v\workspace\RV32_simple_gpio\riscv_hal" -I"C:\RISC-V\mi-v\workspace\RV32_simple_gpio\drivers\CoreUARTapb" -I"C:\RISC-V\mi-v\workspace\RV32_simple_gpio\drivers\CoreGPIO" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


