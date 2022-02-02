#include <stdio.h>

__global__ void someKernel(){
	printf("gridDim.x : %d\n",gridDim.x);
	printf("gridDim.y : %d\n", gridDim.y);
	printf("blockDim.x: %d\n", blockDim.x);
	printf("blockDim.y: %d\n",blockDim.y);
	//printf(": %d",);
	//printf(": %d",);

}

int main(){
	
	dim3 threads_per_block(1, 1, 1);
	dim3 number_of_blocks(16, 16, 1);
	someKernel<<<number_of_blocks, threads_per_block>>>();
	cudaDeviceSynchronize();
}
