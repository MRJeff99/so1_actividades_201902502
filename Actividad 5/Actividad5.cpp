
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

int main() {
    pid_t pid;

    pid = fork();
    if (pid == 0) {
        /* child process */
        fork();
        pthread_t thread;
        pthread_create(&thread, NULL, NULL, NULL);
    }
    fork();

    return 0;
}
