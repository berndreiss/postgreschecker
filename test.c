#include <stddef.h>

void *palloc(size_t size);
void pfree(void *pointer);

int main(void)
{
    int *a = palloc(sizeof(int));

    pfree(a);
    *a = 2; /* use after pfree */

    return 0;
}
