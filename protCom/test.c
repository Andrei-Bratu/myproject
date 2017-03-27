#include <string.h>
#include <stdio.h>
#include <stdlib.h>
int main (){
	char* s = "recv_";
	char* s1= "file";
 	char *result = malloc(strlen(s1)+strlen(s)+1);
    strcpy(result, s);
    strcat(result, s1);
strcat(result, s);
s=malloc(strlen(s1)+strlen(s)+1);
strncpy(s, result, 4);
//strcat(s, '\0');
	printf ("%s\n", s);
	return 0;
}
