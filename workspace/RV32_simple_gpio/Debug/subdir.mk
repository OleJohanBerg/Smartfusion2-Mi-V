################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main.c 

OBJS += \
./main.o 

C_DEPS += \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -msmall-data-limit=8 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:\RISC-V\mi-v\workspace\RV32_simple_gpio" -I"C:\RISC-V\mi-v\workspace\RV32_simple_gpio\hal" -I"C:\RISC-V\mi-v\workspace\RV32_simple_gpio\riscv_hal" -I"C:\RISC-V\mi-v\workspace\RV32_simple_gpio\drivers\CoreUARTapb" -I"C:\RISC-V\mi-v\workspace\RV32_simple_gpio\drivers\CoreGPIO" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


