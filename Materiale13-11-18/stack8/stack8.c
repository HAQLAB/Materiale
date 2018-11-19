#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

char *getpath(){
  	char buffer[64];
  	unsigned int ret;

  	printf("input path please: ");

  	gets(buffer);
  	printf("got path %s\n", buffer);
}

int main(int argc, char **argv){
  	getpath();
}
