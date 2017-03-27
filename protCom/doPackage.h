//
// Created by abratu on 20.03.2017.
//

#ifndef PROTCOM_DOPACKAGE_H
#define PROTCOM_DOPACKAGE_H

#include "lib.h"
msg* doPackageStart (msg *t, char mark, int seq);
msg* doPackageFile (msg* t, char mark, int seq, char* name);
int doPackageData (msg *t, char mark, int seq, FILE* f);
msg* doPackageEof (msg *t, char mark, int seq);
msg* doPackageEot (msg *t, char mark, int seq);
msg* doPackageAck (msg *t, char mark, int seq, int init);
msg* doPackageNak (msg *t, char mark, int seq);
int sendMsg (msg *t);
int doSeq (int seq);

#endif //PROTCOM_DOPACKAGE_H
