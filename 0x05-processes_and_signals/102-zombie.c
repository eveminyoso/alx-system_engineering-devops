#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

/**
 * create_zombie_processes - Creates 5 zombie processes
 */
void create_zombie_processes() {
    int i;

    for (i = 0; i < 5; i++) {
        pid_t child_pid = fork();

        if (child_pid == -1) {
            perror("fork");
            exit(EXIT_FAILURE);
        }

        if (child_pid == 0) {
            // This is the child process
            printf("Zombie process created, PID: %d\n", getpid());
            exit(EXIT_SUCCESS);
        }
    }

    // This is the parent process
    sleep(10); // Sleep for a while to allow the zombies to exist
}

int main() {
    create_zombie_processes();
    return 0;
}
