#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include "lib.h"
#include "doPackage.h"

#define HOST "127.0.0.1"
#define PORT 10000


int main(int argc, char **argv) {
    msg t;

    FILE *f;

    int c, seq = 0;
    init(HOST, PORT);

    doPackageStart(&t, 0x0D, seq);
    seq = sendMsg(&t);

    for (int i = 1; i < argc ; ++i) {
        f = fopen(argv[i], "r");
 //   printf("\n\n%s\n\n", argv[i]);
        seq = doSeq(seq);
        doPackageFile(&t, 0x0D, seq, argv[i]);
        seq = sendMsg(&t);

        seq = doSeq(seq);
        c = doPackageData(&t, 0x0D, seq, f);

        while (1) {
            send_message(&t);
            msg *y = receive_message_timeout(5000);
        //    printf("\n%d      %d\n", y->payload[2], seq);
            if (y->payload[3] == 'Y') {
            //    printf("\n\n%s\n\n", argv[1]);
                seq = doSeq(y->payload[2]);
                c = doPackageData(&t, 0x0D, seq, f);
            }
            if (c == 0) {
                break;
            }
        }
        fclose(f);
   // printf("\n\n%s\n\n", argv[1]);
        seq = doSeq(seq);
        doPackageEof(&t, 0x0D, seq);
        seq = sendMsg(&t);
    }

    seq = doSeq(seq);
    doPackageEot(&t, 0x0D, seq);
    sendMsg(&t);


    return 0;
}
