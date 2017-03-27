#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include "lib.h"
#include "doPackage.h"

#define HOST "127.0.0.1"
#define PORT 10001

int main(int argc, char** argv) {
    msg t;
    FILE *f;
    char *s = "recv_";


    init(HOST, PORT);

    int time = 5000;

    int true = 1;
    while (true) {
        msg *y = receive_message_timeout(time);

        if (y == NULL) {
            break;
            send_message(&t);
        }
        else {
       //  printf("recv : %c\n%d\n",y->payload[3], y->payload[t.len-3]);

       //     unsigned short crc = crc16_ccitt(y->payload, y->len - 3);
      //      if (crc == y->payload[y->len - 3]) {
               // printf("[%s] Got msg with payload: %s\n", argv[0], y->payload + 4);

                switch (y->payload[3]){
                    case 'S':{
                        time = y->payload[5] * 1000;
                        doPackageAck(&t, 0x0D, y->payload[2] + 1, 1);
                        break;
                    }
                    case 'F':{
                        char* aux = malloc(10);
                        strncpy(aux, y->payload+4, 10);
                        char *result = malloc(strlen(aux)+strlen(s)+1);
                        strcpy(result, s);
                        strcat(result, aux);
                        f = fopen(result, "w");
                        doPackageAck(&t, 0x0D, y->payload[2] + 1, 0);
                        break;
                    }
                    case 'D':{
                        fwrite (y->payload + 4, sizeof(char), y->len - 7, f);
                        doPackageAck(&t, 0x0D, y->payload[2] + 1, 0);
                        break;
                    }
                    case 'Z':{
                        fclose(f);
                        doPackageAck(&t, 0x0D, y->payload[2] + 1, 0);
                        break;
                    }
                    case 'B':{
                        true = 0;
                        doPackageAck(&t, 0x0D, y->payload[2] + 1, 0);
                        break;
                    }
                }
               // send_message(&t);
            }
                send_message(&t);

    }
	
	return 0;
}
