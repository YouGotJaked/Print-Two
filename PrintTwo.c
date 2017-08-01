#include <stdio.h>
#include <stdint.h>
#include "library.h>

extern void PrintTwo(char *format, int32_t numb) ;

int main(void) {
    InitializeHardware(HEADER, PROJECT_NAME) ;
    
    PrintTwo("numb=%d\n", 10) ;
    return 0 ;
}
