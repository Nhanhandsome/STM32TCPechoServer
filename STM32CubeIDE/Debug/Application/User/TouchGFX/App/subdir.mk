################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Users/84963/STM32CubeIDE/MyApplication_Ethernet/TouchGFX/App/app_touchgfx.c 

C_DEPS += \
./Application/User/TouchGFX/App/app_touchgfx.d 

OBJS += \
./Application/User/TouchGFX/App/app_touchgfx.o 


# Each subdirectory must supply rules for building sources it contributes
Application/User/TouchGFX/App/app_touchgfx.o: D:/Users/84963/STM32CubeIDE/MyApplication_Ethernet/TouchGFX/App/app_touchgfx.c Application/User/TouchGFX/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F750xx -DDEBUG -c -I../../Core/Inc -I../../Drivers/CMSIS/Include -I../../Drivers/BSP/STM32F7508-Discovery -I../../TouchGFX/target -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../TouchGFX/App -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../TouchGFX/target/generated -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../Drivers/BSP/Components/Common -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/ST/touchgfx/framework/include -I../../TouchGFX/generated/fonts/include -I../../TouchGFX/generated/gui_generated/include -I../../TouchGFX/generated/images/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/gui/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../LWIP/App -I../../LWIP/Target -I../../Middlewares/Third_Party/LwIP/src/include -I../../Middlewares/Third_Party/LwIP/system -I../../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../../Middlewares/Third_Party/LwIP/src/include/lwip -I../../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../../Middlewares/Third_Party/LwIP/src/include/netif -I../../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../../Middlewares/Third_Party/LwIP/system/arch -I"D:/Users/84963/STM32CubeIDE/MyApplication_Ethernet/TouchGFX/generated/gui_generated/include/gui_generated/screen1_screen" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Application/User/TouchGFX/App/app_touchgfx.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

