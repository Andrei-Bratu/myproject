//
// Created by abratu on 20.03.2017.
//

#include <string.h>
#include <stdio.h>
#include "doPackage.h"
#include "lib.h"


msg* doPackageStart (msg *t, char mark, int seq){

    t->len = 12;
    t->payload[0] = 0x01;
    t->payload[1] = t->len - 2;
    t->payload[2] = seq;
    t->payload[3] = 'S';
    t->payload[4] = 250;
    t->payload[5] = 5;
    t->payload[6] = 0x00;
    t->payload[7] = 0x00;
    t->payload[8] = mark;

    t->payload[t->len] = crc16_ccitt(t->payload, t->len);
    t->payload[t->len + 2] = mark;
    return t;
}
msg* doPackageFile (msg* t, char mark, int seq, char* name){

    t->len = strlen(name) +5;
    t->payload[0] = 0x01;
    t->payload[1] = t->len - 2;
    t->payload[2] = seq;
    t->payload[3] = 'F';
    sprintf(t->payload + 4, "%s", name);

    t->payload[t->len] = crc16_ccitt(t->payload, t->len);
    t->payload[t->len + 2] = mark;
    t->len += 3;
}
int doPackageData (msg *t, char mark, int seq, FILE* f){
    int c = 0;

    t->payload[0] = 0x01;
    t->payload[1] = 250;
    t->payload[2] = seq;
    t->payload[3] = 'D';
    c = fread(t->payload + 4, 1, 240, f);
    t->len = c + 5;
    t->payload[t->len] = crc16_ccitt(t->payload, t->len);
    t->payload[t->len + 2] = mark;
    t->len += 2;
    return c;
}
msg* doPackageEof (msg *t, char mark, int seq){

    t->len = 4;
    t->payload[0] = 0x01;
    t->payload[1] = t->len - 2;
    t->payload[2] = seq;
    t->payload[3] = 'Z';

    t->payload[t->len] = crc16_ccitt(t->payload, t->len);
    t->payload[t->len + 2] = mark;
    t->len += 3;
}
msg* doPackageEot (msg *t, char mark, int seq) {

    t->len = 4;
    t->payload[0] = 0x01;
    t->payload[1] = t->len - 2;
    t->payload[2] = seq;
    t->payload[3] = 'B';

    t->payload[t->len] = crc16_ccitt(t->payload, t->len);
    t->payload[t->len + 2] = mark;
    t->len += 3;
    return t;
}

msg* doPackageAck (msg *t, char mark, int seq, int init){

    t->len = 9;
    t->payload[0] = 0x01;
    t->payload[1] = t->len - 2;
    t->payload[2] = seq;
    t->payload[3] = 'Y';
    if (init){
        t->payload[4] = 250;
        t->payload[5] = 5;
        t->payload[6] = 0x00;
        t->payload[7] = 0x00;
        t->payload[8] = mark;
    }

    t->payload[t->len] = crc16_ccitt(t->payload, t->len);
    t->payload[t->len + 2] = mark;
    t->len += 3;
}
msg* doPackageNak (msg *t, char mark, int seq){

    t->len = 4;
    t->payload[0] = 0x01;
    t->payload[1] = t->len - 2;
    t->payload[2] = seq;
    t->payload[3] = 'N';

    t->payload[t->len] = crc16_ccitt(t->payload, t->len);
    t->payload[t->len + 2] = mark;
    t->len += 3;
}
int sendMsg (msg *t){
    int x;

    while (1){
        send_message(t);

        msg *y = receive_message_timeout(5000);
        if (y->payload[3] == 'Y' && y->payload[2]  == doSeq(t->payload[2])) {
            x = y->payload[2];
            break;
        }
    }
    return x;
}
int doSeq (int seq){
    if (seq == 64)
        return 0;
    else
        return seq+ 1;
}