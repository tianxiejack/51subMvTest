################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/MSGDRI/msgDriv.cpp 

OBJS += \
./src/MSGDRI/msgDriv.o 

CPP_DEPS += \
./src/MSGDRI/msgDriv.d 


# Each subdirectory must supply rules for building sources it contributes
src/MSGDRI/%.o: ../src/MSGDRI/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -D__IPC__=1 -D__MOVE_DETECT__=0 -D__TRACK__=1 -I/usr/lib/aarch64-linux-gnu/include -I../src/OSA_IPC/inc -I/usr/include/opencv -I/usr/include/opencv2 -I/usr/include/GL -I../include -I../include/APP -I../include/dxutc -I../src/OSA_CAP/inc -G -g -O0 -Xcompiler -fopenmp -ccbin aarch64-linux-gnu-g++ -gencode arch=compute_30,code=sm_30 -m64 -odir "src/MSGDRI" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -D__IPC__=1 -D__MOVE_DETECT__=0 -D__TRACK__=1 -I/usr/lib/aarch64-linux-gnu/include -I../src/OSA_IPC/inc -I/usr/include/opencv -I/usr/include/opencv2 -I/usr/include/GL -I../include -I../include/APP -I../include/dxutc -I../src/OSA_CAP/inc -G -g -O0 -Xcompiler -fopenmp --compile -m64 -ccbin aarch64-linux-gnu-g++  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


