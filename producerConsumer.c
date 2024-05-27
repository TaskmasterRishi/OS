#include <stdio.h>

#define N 10
#define n 0

struct semaphore {
    int mutex;
    int empty;
    int full;
    int list[N];

    semaphore(){
        mutex = 1;
        empty=N;
        full=0;
    }
};

void lock(int *mutex) {
    if (*mutex == 0) {
        *mutex = 1;
    } else {
        *mutex = 0;
    }
}

int produce_item() {
    if (n < 100) {
        return n;
    } else {
        return -1;
    }
}

void producer(struct semaphore s) {
    int item;
    while (1) {
        item = produce_item();
        printf("Item produced: %d\n", item);
        s.empty--;
        lock(&s.mutex);
        scanf("%d", &s.list[n]);
        lock(&s.mutex);
        s.full++;
    }
}

void consumer(struct semaphore s) {
    int item;
    while (1) {
        item = consume_item();
        printf("Item consumed: %d\n", item);
        s.empty++;
        lock(&s.mutex);
        scanf("%d", &s.list[n]);
        lock(&s.mutex);
        s.full--;
    }
}

int main() {
    struct semaphore s;


    return 0;
}
