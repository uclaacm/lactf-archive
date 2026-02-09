#include <stdio.h>
#include <stdlib.h>

#define NUM0 ((3*state[0]+13*state[1]+5*state[2]+15*state[3]+5*state[4]+15*state[5]+29*state[6]+8*state[7]+31*state[8]+12*state[9]+15*state[10]+10*state[11]+20*state[12]+21*state[13]+4*state[14]+15*state[15]+23*state[16]+23*state[17]+8*state[18]+1*state[19]+23*state[20]+11*state[21]+26*state[22]+29*state[23]+20*state[24]+13*state[25]+20*state[26]+28*state[27]+24*state[28]+4*state[29]+3*state[30])%32)
#define NUM1 ((8*state[0]+3*state[1]+13*state[2]+5*state[3]+15*state[4]+5*state[5]+15*state[6]+29*state[7]+8*state[8]+31*state[9]+12*state[10]+15*state[11]+10*state[12]+20*state[13]+21*state[14]+4*state[15]+15*state[16]+23*state[17]+23*state[18]+8*state[19]+1*state[20]+23*state[21]+11*state[22]+26*state[23]+29*state[24]+20*state[25]+13*state[26]+20*state[27]+28*state[28]+24*state[29]+4*state[30])%32)
#define NUM2 ((17*state[0]+8*state[1]+3*state[2]+13*state[3]+5*state[4]+15*state[5]+5*state[6]+15*state[7]+29*state[8]+8*state[9]+31*state[10]+12*state[11]+15*state[12]+10*state[13]+20*state[14]+21*state[15]+4*state[16]+15*state[17]+23*state[18]+23*state[19]+8*state[20]+1*state[21]+23*state[22]+11*state[23]+26*state[24]+29*state[25]+20*state[26]+13*state[27]+20*state[28]+28*state[29]+24*state[30])%32)
#define NUM3 ((27*state[0]+17*state[1]+8*state[2]+3*state[3]+13*state[4]+5*state[5]+15*state[6]+5*state[7]+15*state[8]+29*state[9]+8*state[10]+31*state[11]+12*state[12]+15*state[13]+10*state[14]+20*state[15]+21*state[16]+4*state[17]+15*state[18]+23*state[19]+23*state[20]+8*state[21]+1*state[22]+23*state[23]+11*state[24]+26*state[25]+29*state[26]+20*state[27]+13*state[28]+20*state[29]+28*state[30])%32)
#define NUM4 ((4*state[0]+27*state[1]+17*state[2]+8*state[3]+3*state[4]+13*state[5]+5*state[6]+15*state[7]+5*state[8]+15*state[9]+29*state[10]+8*state[11]+31*state[12]+12*state[13]+15*state[14]+10*state[15]+20*state[16]+21*state[17]+4*state[18]+15*state[19]+23*state[20]+23*state[21]+8*state[22]+1*state[23]+23*state[24]+11*state[25]+26*state[26]+29*state[27]+20*state[28]+13*state[29]+20*state[30])%32)
#define NUM5 ((5*state[0]+4*state[1]+27*state[2]+17*state[3]+8*state[4]+3*state[5]+13*state[6]+5*state[7]+15*state[8]+5*state[9]+15*state[10]+29*state[11]+8*state[12]+31*state[13]+12*state[14]+15*state[15]+10*state[16]+20*state[17]+21*state[18]+4*state[19]+15*state[20]+23*state[21]+23*state[22]+8*state[23]+1*state[24]+23*state[25]+11*state[26]+26*state[27]+29*state[28]+20*state[29]+13*state[30])%32)
#define NUM6 ((8*state[0]+5*state[1]+4*state[2]+27*state[3]+17*state[4]+8*state[5]+3*state[6]+13*state[7]+5*state[8]+15*state[9]+5*state[10]+15*state[11]+29*state[12]+8*state[13]+31*state[14]+12*state[15]+15*state[16]+10*state[17]+20*state[18]+21*state[19]+4*state[20]+15*state[21]+23*state[22]+23*state[23]+8*state[24]+1*state[25]+23*state[26]+11*state[27]+26*state[28]+29*state[29]+20*state[30])%32)
#define NUM7 ((24*state[0]+8*state[1]+5*state[2]+4*state[3]+27*state[4]+17*state[5]+8*state[6]+3*state[7]+13*state[8]+5*state[9]+15*state[10]+5*state[11]+15*state[12]+29*state[13]+8*state[14]+31*state[15]+12*state[16]+15*state[17]+10*state[18]+20*state[19]+21*state[20]+4*state[21]+15*state[22]+23*state[23]+23*state[24]+8*state[25]+1*state[26]+23*state[27]+11*state[28]+26*state[29]+29*state[30])%32)
#define NUM8 ((2*state[0]+24*state[1]+8*state[2]+5*state[3]+4*state[4]+27*state[5]+17*state[6]+8*state[7]+3*state[8]+13*state[9]+5*state[10]+15*state[11]+5*state[12]+15*state[13]+29*state[14]+8*state[15]+31*state[16]+12*state[17]+15*state[18]+10*state[19]+20*state[20]+21*state[21]+4*state[22]+15*state[23]+23*state[24]+23*state[25]+8*state[26]+1*state[27]+23*state[28]+11*state[29]+26*state[30])%32)
#define NUM9 ((2*state[0]+2*state[1]+24*state[2]+8*state[3]+5*state[4]+4*state[5]+27*state[6]+17*state[7]+8*state[8]+3*state[9]+13*state[10]+5*state[11]+15*state[12]+5*state[13]+15*state[14]+29*state[15]+8*state[16]+31*state[17]+12*state[18]+15*state[19]+10*state[20]+20*state[21]+21*state[22]+4*state[23]+15*state[24]+23*state[25]+23*state[26]+8*state[27]+1*state[28]+23*state[29]+11*state[30])%32)
#define LIMIT 10

int hexToInt(char c) {
    if (c >= '0' && c <= '9') {
        return c - '0';
    } else if (c >= 'a' && c <= 'f') {
        return c - 'a' + 10;
    } else if (c >= 'A' && c <= 'F') {
        return c - 'A' + 10;
    } else {
        return -1;
    }
}

void populateState(unsigned int* state, int seed) {
    state[0] = seed;
    int word = seed;
    for (int i = 1; i < 31; i ++) {
        int hi = word / 127773;
        int lo = word % 127773;
        word = 16807 * lo - 2836 * hi;
        if (word < 0) {
            word += 2147483647;
        }
        state[i] = word;
    }
}

int nrand(unsigned char* state, int i) {
    if (i == 0) return (((unsigned char)3)*state[0]+((unsigned char)13)*state[1]+((unsigned char)5)*state[2]+((unsigned char)15)*state[3]+((unsigned char)5)*state[4]+((unsigned char)15)*state[5]+((unsigned char)29)*state[6]+((unsigned char)8)*state[7]+((unsigned char)31)*state[8]+((unsigned char)12)*state[9]+((unsigned char)15)*state[10]+((unsigned char)10)*state[11]+((unsigned char)20)*state[12]+((unsigned char)21)*state[13]+((unsigned char)4)*state[14]+((unsigned char)15)*state[15]+((unsigned char)23)*state[16]+((unsigned char)23)*state[17]+((unsigned char)8)*state[18]+((unsigned char)1)*state[19]+((unsigned char)23)*state[20]+((unsigned char)11)*state[21]+((unsigned char)26)*state[22]+((unsigned char)29)*state[23]+((unsigned char)20)*state[24]+((unsigned char)13)*state[25]+((unsigned char)20)*state[26]+((unsigned char)28)*state[27]+((unsigned char)24)*state[28]+((unsigned char)4)*state[29]+((unsigned char)3)*state[30])%32;
    if (i == 1) return (((unsigned char)8)*state[0]+((unsigned char)3)*state[1]+((unsigned char)13)*state[2]+((unsigned char)5)*state[3]+((unsigned char)15)*state[4]+((unsigned char)5)*state[5]+((unsigned char)15)*state[6]+((unsigned char)29)*state[7]+((unsigned char)8)*state[8]+((unsigned char)31)*state[9]+((unsigned char)12)*state[10]+((unsigned char)15)*state[11]+((unsigned char)10)*state[12]+((unsigned char)20)*state[13]+((unsigned char)21)*state[14]+((unsigned char)4)*state[15]+((unsigned char)15)*state[16]+((unsigned char)23)*state[17]+((unsigned char)23)*state[18]+((unsigned char)8)*state[19]+((unsigned char)1)*state[20]+((unsigned char)23)*state[21]+((unsigned char)11)*state[22]+((unsigned char)26)*state[23]+((unsigned char)29)*state[24]+((unsigned char)20)*state[25]+((unsigned char)13)*state[26]+((unsigned char)20)*state[27]+((unsigned char)28)*state[28]+((unsigned char)24)*state[29]+((unsigned char)4)*state[30])%32;
    if (i == 2) return (((unsigned char)17)*state[0]+((unsigned char)8)*state[1]+((unsigned char)3)*state[2]+((unsigned char)13)*state[3]+((unsigned char)5)*state[4]+((unsigned char)15)*state[5]+((unsigned char)5)*state[6]+((unsigned char)15)*state[7]+((unsigned char)29)*state[8]+((unsigned char)8)*state[9]+((unsigned char)31)*state[10]+((unsigned char)12)*state[11]+((unsigned char)15)*state[12]+((unsigned char)10)*state[13]+((unsigned char)20)*state[14]+((unsigned char)21)*state[15]+((unsigned char)4)*state[16]+((unsigned char)15)*state[17]+((unsigned char)23)*state[18]+((unsigned char)23)*state[19]+((unsigned char)8)*state[20]+((unsigned char)1)*state[21]+((unsigned char)23)*state[22]+((unsigned char)11)*state[23]+((unsigned char)26)*state[24]+((unsigned char)29)*state[25]+((unsigned char)20)*state[26]+((unsigned char)13)*state[27]+((unsigned char)20)*state[28]+((unsigned char)28)*state[29]+((unsigned char)24)*state[30])%32;
    if (i == 3) return (((unsigned char)27)*state[0]+((unsigned char)17)*state[1]+((unsigned char)8)*state[2]+((unsigned char)3)*state[3]+((unsigned char)13)*state[4]+((unsigned char)5)*state[5]+((unsigned char)15)*state[6]+((unsigned char)5)*state[7]+((unsigned char)15)*state[8]+((unsigned char)29)*state[9]+((unsigned char)8)*state[10]+((unsigned char)31)*state[11]+((unsigned char)12)*state[12]+((unsigned char)15)*state[13]+((unsigned char)10)*state[14]+((unsigned char)20)*state[15]+((unsigned char)21)*state[16]+((unsigned char)4)*state[17]+((unsigned char)15)*state[18]+((unsigned char)23)*state[19]+((unsigned char)23)*state[20]+((unsigned char)8)*state[21]+((unsigned char)1)*state[22]+((unsigned char)23)*state[23]+((unsigned char)11)*state[24]+((unsigned char)26)*state[25]+((unsigned char)29)*state[26]+((unsigned char)20)*state[27]+((unsigned char)13)*state[28]+((unsigned char)20)*state[29]+((unsigned char)28)*state[30])%32;
    if (i == 4) return (((unsigned char)4)*state[0]+((unsigned char)27)*state[1]+((unsigned char)17)*state[2]+((unsigned char)8)*state[3]+((unsigned char)3)*state[4]+((unsigned char)13)*state[5]+((unsigned char)5)*state[6]+((unsigned char)15)*state[7]+((unsigned char)5)*state[8]+((unsigned char)15)*state[9]+((unsigned char)29)*state[10]+((unsigned char)8)*state[11]+((unsigned char)31)*state[12]+((unsigned char)12)*state[13]+((unsigned char)15)*state[14]+((unsigned char)10)*state[15]+((unsigned char)20)*state[16]+((unsigned char)21)*state[17]+((unsigned char)4)*state[18]+((unsigned char)15)*state[19]+((unsigned char)23)*state[20]+((unsigned char)23)*state[21]+((unsigned char)8)*state[22]+((unsigned char)1)*state[23]+((unsigned char)23)*state[24]+((unsigned char)11)*state[25]+((unsigned char)26)*state[26]+((unsigned char)29)*state[27]+((unsigned char)20)*state[28]+((unsigned char)13)*state[29]+((unsigned char)20)*state[30])%32;
    if (i == 5) return (((unsigned char)5)*state[0]+((unsigned char)4)*state[1]+((unsigned char)27)*state[2]+((unsigned char)17)*state[3]+((unsigned char)8)*state[4]+((unsigned char)3)*state[5]+((unsigned char)13)*state[6]+((unsigned char)5)*state[7]+((unsigned char)15)*state[8]+((unsigned char)5)*state[9]+((unsigned char)15)*state[10]+((unsigned char)29)*state[11]+((unsigned char)8)*state[12]+((unsigned char)31)*state[13]+((unsigned char)12)*state[14]+((unsigned char)15)*state[15]+((unsigned char)10)*state[16]+((unsigned char)20)*state[17]+((unsigned char)21)*state[18]+((unsigned char)4)*state[19]+((unsigned char)15)*state[20]+((unsigned char)23)*state[21]+((unsigned char)23)*state[22]+((unsigned char)8)*state[23]+((unsigned char)1)*state[24]+((unsigned char)23)*state[25]+((unsigned char)11)*state[26]+((unsigned char)26)*state[27]+((unsigned char)29)*state[28]+((unsigned char)20)*state[29]+((unsigned char)13)*state[30])%32;
    if (i == 6) return (((unsigned char)8)*state[0]+((unsigned char)5)*state[1]+((unsigned char)4)*state[2]+((unsigned char)27)*state[3]+((unsigned char)17)*state[4]+((unsigned char)8)*state[5]+((unsigned char)3)*state[6]+((unsigned char)13)*state[7]+((unsigned char)5)*state[8]+((unsigned char)15)*state[9]+((unsigned char)5)*state[10]+((unsigned char)15)*state[11]+((unsigned char)29)*state[12]+((unsigned char)8)*state[13]+((unsigned char)31)*state[14]+((unsigned char)12)*state[15]+((unsigned char)15)*state[16]+((unsigned char)10)*state[17]+((unsigned char)20)*state[18]+((unsigned char)21)*state[19]+((unsigned char)4)*state[20]+((unsigned char)15)*state[21]+((unsigned char)23)*state[22]+((unsigned char)23)*state[23]+((unsigned char)8)*state[24]+((unsigned char)1)*state[25]+((unsigned char)23)*state[26]+((unsigned char)11)*state[27]+((unsigned char)26)*state[28]+((unsigned char)29)*state[29]+((unsigned char)20)*state[30])%32;
    if (i == 7) return (((unsigned char)24)*state[0]+((unsigned char)8)*state[1]+((unsigned char)5)*state[2]+((unsigned char)4)*state[3]+((unsigned char)27)*state[4]+((unsigned char)17)*state[5]+((unsigned char)8)*state[6]+((unsigned char)3)*state[7]+((unsigned char)13)*state[8]+((unsigned char)5)*state[9]+((unsigned char)15)*state[10]+((unsigned char)5)*state[11]+((unsigned char)15)*state[12]+((unsigned char)29)*state[13]+((unsigned char)8)*state[14]+((unsigned char)31)*state[15]+((unsigned char)12)*state[16]+((unsigned char)15)*state[17]+((unsigned char)10)*state[18]+((unsigned char)20)*state[19]+((unsigned char)21)*state[20]+((unsigned char)4)*state[21]+((unsigned char)15)*state[22]+((unsigned char)23)*state[23]+((unsigned char)23)*state[24]+((unsigned char)8)*state[25]+((unsigned char)1)*state[26]+((unsigned char)23)*state[27]+((unsigned char)11)*state[28]+((unsigned char)26)*state[29]+((unsigned char)29)*state[30])%32;
    if (i == 8) return (((unsigned char)2)*state[0]+((unsigned char)24)*state[1]+((unsigned char)8)*state[2]+((unsigned char)5)*state[3]+((unsigned char)4)*state[4]+((unsigned char)27)*state[5]+((unsigned char)17)*state[6]+((unsigned char)8)*state[7]+((unsigned char)3)*state[8]+((unsigned char)13)*state[9]+((unsigned char)5)*state[10]+((unsigned char)15)*state[11]+((unsigned char)5)*state[12]+((unsigned char)15)*state[13]+((unsigned char)29)*state[14]+((unsigned char)8)*state[15]+((unsigned char)31)*state[16]+((unsigned char)12)*state[17]+((unsigned char)15)*state[18]+((unsigned char)10)*state[19]+((unsigned char)20)*state[20]+((unsigned char)21)*state[21]+((unsigned char)4)*state[22]+((unsigned char)15)*state[23]+((unsigned char)23)*state[24]+((unsigned char)23)*state[25]+((unsigned char)8)*state[26]+((unsigned char)1)*state[27]+((unsigned char)23)*state[28]+((unsigned char)11)*state[29]+((unsigned char)26)*state[30])%32;
    if (i == 9) return (((unsigned char)2)*state[0]+((unsigned char)2)*state[1]+((unsigned char)24)*state[2]+((unsigned char)8)*state[3]+((unsigned char)5)*state[4]+((unsigned char)4)*state[5]+((unsigned char)27)*state[6]+((unsigned char)17)*state[7]+((unsigned char)8)*state[8]+((unsigned char)3)*state[9]+((unsigned char)13)*state[10]+((unsigned char)5)*state[11]+((unsigned char)15)*state[12]+((unsigned char)5)*state[13]+((unsigned char)15)*state[14]+((unsigned char)29)*state[15]+((unsigned char)8)*state[16]+((unsigned char)31)*state[17]+((unsigned char)12)*state[18]+((unsigned char)15)*state[19]+((unsigned char)10)*state[20]+((unsigned char)20)*state[21]+((unsigned char)21)*state[22]+((unsigned char)4)*state[23]+((unsigned char)15)*state[24]+((unsigned char)23)*state[25]+((unsigned char)23)*state[26]+((unsigned char)8)*state[27]+((unsigned char)1)*state[28]+((unsigned char)23)*state[29]+((unsigned char)11)*state[30])%32;
    return -1;
}

int main(int argc, const char* argv[]) {
    if (argc < 2) {
        puts("Please provide an argument.");
        return 1;
    }
    const char* s = argv[1];
    int inp[LIMIT];
    for (int i = 0; i < LIMIT; i ++) {
        inp[i] = -1;
    }
    for (int i = 0; i < LIMIT; i ++) {
        if (s[i] == '\0') {
            break;
        }
        inp[i] = hexToInt(s[i]);
    }
    #pragma omp parallel for
    for (unsigned int i = 0; i <= 0xfffffffe; i ++) {
        unsigned int fullstate[31];
        unsigned char state[31];
        populateState(fullstate, i);
        for (int i = 0; i < 31; i ++) {
            state[i] = fullstate[i];
        }
        int found = 1;
        for (int j = 0; j < LIMIT; j ++) {
            if (inp[j] != -1 && (nrand(state, j) >> 1) != inp[j]) {
                found = 0;
                break;
            }
        }
        if (found) {
            printf("%x\n", i);
            exit(0);
        }
    }
    return 0;
}