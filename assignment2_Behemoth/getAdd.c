//Function to get the address of the environment variable that we are tracing.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char** argv)
{
    const char* ptr = getenv(argv[1]);
    ptr += (strlen(argv[0]) - strlen(argv[2]))*2;
    printf("%x\n", ptr);
    return 0;
    //Need to compile this into a 32 bit executable, does not work otherwise.
}
