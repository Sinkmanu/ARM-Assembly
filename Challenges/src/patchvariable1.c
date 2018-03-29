#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int patchme = 50;

int main(int argc, char *argv[]){

	if (patchme==50){
		printf("Wrong!! My value shouldn't be 50...\n", patchme);
	}else{
		printf("Well done! Variable patched.\n");
	}
	
	exit(0);
}
