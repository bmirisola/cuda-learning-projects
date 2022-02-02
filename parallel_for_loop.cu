#include <iostream>
using namespace std;

__global__ void forloop(){
    printf("%i\n",threadIdx.x) ;
}

int main() {
    //calls for loop with 1000 blocks and 500 threads
    forloop<<<1000,500>>>();
    cudaDeviceSynchronize();
    return 0;
}
