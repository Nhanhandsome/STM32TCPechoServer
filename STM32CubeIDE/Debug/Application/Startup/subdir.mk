################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Application/Startup/startup_stm32f750n8hx.s 

S_DEPS += \
./Application/Startup/startup_stm32f750n8hx.d 

OBJS += \
./Application/Startup/startup_stm32f750n8hx.o 


# Each subdirectory must supply rules for building sources it contributes
Application/Startup/startup_stm32f750n8hx.o: ../Application/Startup/startup_stm32f750n8hx.s Application/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -I"D:/Users/84963/STM32CubeIDE/MyApplication_Ethernet/TouchGFX/generated/gui_generated/include/gui_generated/screen1_screen" -I../../Middlewares/ST/touchgfx/framework/include -I../../TouchGFX/generated/fonts/include -I../../TouchGFX/generated/gui_generated/include -I../../TouchGFX/generated/images/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/gui/include -x assembler-with-cpp -MMD -MP -MF"Application/Startup/startup_stm32f750n8hx.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

