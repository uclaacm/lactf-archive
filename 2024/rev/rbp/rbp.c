#define _POSIX_C_SOURCE 199309L
#define _GNU_SOURCE 1

#include <errno.h>
#include <setjmp.h>
#include <signal.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/mman.h>
#include <ucontext.h>
#include <unistd.h>

int time = 0;
int btime = 0;
int ttime = 0;
int ptime = 0;
int rtime = 13003401;
char buf[36] = { [35] = '\0' };

void __gnu_time_helper(int signum, siginfo_t* info, void* data) {
    for (int i = 0; i < btime; i++) {
        buf[i] = ((buf[i] + 1) - 'a') % 26 + 'a';
    }
    ucontext_t* context = (ucontext_t*) data;
    context->uc_mcontext.gregs[REG_RAX] = 1;
    context->uc_mcontext.gregs[REG_RIP] = (greg_t)*(void**)(context->uc_mcontext.gregs[REG_RSP]);
}

void trap(char which);

bool __attribute__((__section__(".p"))) p(char l) {
    if (l < 'a' || l > 'z') return false;
    buf[btime++] = l;
    if (l == 'b' || l == 'c' || l == 'h' || l == 's' || l == 't') {
        ptime++;
        if (ptime != 2 && ptime != 8 && ptime != 9 && ptime != 12) {
            ttime = 1;
        }
    }
    if (l == 'd') ttime = 2;
    return true;
}

bool __attribute__((__section__(".b"))) b(char l) {
    if (l < '0' || l > '9') return false;
    if (l - '0' != rtime % 10) return false;
    rtime /= 10;
    if (ptime == 3) {
        ttime = 2;
    } else {
        ttime = 0;
    }
    return true;
}

bool __attribute__((__section__(".r"))) r(char l) {
    if (!((l * l) % 9024)) return false;
    ttime = 0;
    return true;
}

void trap(char which) {
    if (mprotect(&p, 4096, PROT_READ | PROT_WRITE | (which == 0 ? PROT_EXEC : 0)) == -1) abort();
    if (mprotect(&b, 4096, PROT_READ | PROT_WRITE | (which == 1 ? PROT_EXEC : 0)) == -1) abort();
    if (mprotect(&r, 4096, PROT_READ | PROT_WRITE | (which == 2 ? PROT_EXEC : 0)) == -1) abort();
}

bool decode(const char* flag) {
    size_t flag_len = strlen(flag);
    
    // step 1: check flag len
    int primes[10] = {};
    int primes_found = 0, i = 2;
    while (primes_found < 10) {
        i++;
        for (int j = 2; j < i; j++) {
            if (i % j == 0) goto next_num;
        }
        primes[primes_found++] = i;
        next_num:
    }
    if (flag_len != primes[1] * primes[2]) {
        return false;
    }

    // step 2: lactf{
    int prefix_check[] = { 0,13,15,24,10,23,13,0,2,21,7,26,15,2,0,23,5,24,24,21,23,0,18,15,10,7,5,18,0,29,23,26,24,15,29,0 };
    uint64_t prefix_check_2 = 1;
    for (int p = 0, i = 0; i < 6; i++) {
        for (int j = 0; j < 6; j++) {
            if ((flag[i] ^ flag[j]) != prefix_check[p++]) return false;
        }
        prefix_check_2 *= (uint64_t) flag[i];
    }
    if (prefix_check_2 != 1509363893664UL) return false;
    if (flag[34] != '}') return false;

    // step 3: good luck
    for (int i = 6; i < 34; i++) {
        if (ttime != -1) {
            trap(ttime);
            ttime = -1;
        }
        if (!p(flag[i]) || !b(flag[i]) || !r(flag[i])) return false;
    }
    if (strcmp(buf, "vwbowpcjrhpkobfryu") != 0) return false;

    return true;
}

int main() {
    struct sigaction handler = {
        .sa_sigaction = &__gnu_time_helper,
        .sa_flags = SA_SIGINFO,
    };
    sigemptyset(&handler.sa_mask);
    if (sigaction(SIGSEGV, &handler, NULL) == -1) abort();

    char flag_buf[69] = "";
    printf("she r on my b till I p > ");
    fgets(flag_buf, 69, stdin);
    strtok(flag_buf, "\n");
    if (decode(flag_buf)) {
        printf("omg how did u guess\n");
    } else {
        printf("extremely loud incorrect buzzer\n");
    }
}
