#include<stdio.h>
#include<stdlib.h>

void findWaitingTime(int n, int bt[], int at[], int wt[]) {
    int currentTime = 0;
    int remainingTime[n];
    for (int i = 0; i < n; i++)
        remainingTime[i] = bt[i];

    int completed = 0;
    while (completed < n) {
        int shortest = -1;
        for (int i = 0; i < n; i++) {
            if (at[i] <= currentTime && remainingTime[i] > 0) {
                if (shortest == -1 || remainingTime[i] < remainingTime[shortest])
                    shortest = i;
            }
        }
        if (shortest == -1) {
            currentTime++;
            continue;
        }
        wt[shortest] = currentTime - at[shortest];
        currentTime += remainingTime[shortest];
        remainingTime[shortest] = 0;
        completed++;
    }
}

void findTurnAroundTime(int n, int bt[], int wt[], int tat[]) {
    for (int i = 0; i < n; i++)
        tat[i] = bt[i] + wt[i];
}

void findAverageTime(int n, int bt[], int at[]) {
    int wt[n], tat[n], total_wt = 0, total_tat = 0;
    findWaitingTime(n, bt, at, wt);
    findTurnAroundTime(n, bt, wt, tat);
    printf("Processes Burst time Arrival time Waiting time Turnaround time\n");
    for (int i = 0; i < n; i++) {
        total_wt += wt[i];
        total_tat += tat[i];
        printf("   %d\t\t%d\t\t%d\t\t%d\t\t%d\n", i + 1, bt[i], at[i], wt[i], tat[i]);
    }

    printf("\nAverage waiting time = %.2f", (float)total_wt / n);
    printf("\nAverage turnaround time = %.2f\n", (float)total_tat / n);
}

int main() {
    int n;
    printf("Enter the number of processes: ");
    scanf("%d", &n);

    int *burst_time = (int*)malloc(n * sizeof(int));
    int *arrival_time = (int*)malloc(n * sizeof(int));

    if (burst_time == NULL || arrival_time == NULL) {
        printf("Memory allocation failed!\n");
        return 1;
    }

    printf("Enter burst times and arrival times for each process:\n");
    for (int i = 0; i < n; i++) {
        printf("Arrival time for process %d: ", i + 1);
        scanf("%d", &arrival_time[i]);
        printf("Burst time for process %d: ", i + 1);
        scanf("%d", &burst_time[i]);
    }

    findAverageTime(n, burst_time, arrival_time);

    free(burst_time);
    free(arrival_time);
    return 0;
}
