#include <stdio.h>
#include <stdlib.h>


/*
 * 	gcc stack1.c -o stack1
 */

void jmp_here(){
	printf("You have the EIP control, well done!\n");
}


int main(int argc, char *argv[]){
	char overflowme[12];
	gets(overflowme);
	printf("Hello! :)\n");
	return 0;
}
