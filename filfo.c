#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

#define NUM_FRAMES 3
#define MAX_PAGES 100

int pagefault(int reference_string[], int frames[], int num_pages, int num_frames) {
    bool is_page_fault[MAX_PAGES] = {false};
    int num_page_faults = 0;
    int frame_index = 0;

    for (int i = 0; i < num_pages; i++) {
        int page = reference_string[i];
        bool page_found = false;

        for (int j = 0; j < num_frames; j++) {
            if (frames[j] == page) {
                page_found = true;
                break;
            }
        }

        if (!page_found) {
            is_page_fault[page] = true;
            num_page_faults++;

            frames[frame_index] = page;
            frame_index = (frame_index + 1) % num_frames;
        }

        printf("Page %d: ", page);
        for (int j = 0; j < num_frames; j++) {
            if (frames[j] == -1)
                printf(" - ");
            else
                printf(" %d ", frames[j]);
        }
        printf("\n");
    }

    return num_page_faults;
}

int main() {
    int reference_string[MAX_PAGES];
    int num_pages;
    int frames[NUM_FRAMES];

    printf("Enter the number of pages: ");
    scanf("%d", &num_pages);

    printf("Enter the reference string: ");
    for (int i = 0; i < num_pages; i++) {
        scanf("%d", &reference_string[i]);
    }

    for (int i = 0; i < NUM_FRAMES; i++) {
        frames[i] = -1;
    }

    int num_page_faults = pagefault(reference_string, frames, num_pages, NUM_FRAMES);
    printf("Number of page faults: %d\n", num_page_faults);

    return 0;
}
