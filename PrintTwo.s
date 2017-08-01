            .syntax     unified
            .cpu        cortex-m4
            .text
            .thumb_func
            .align      2

// void PrintTwo(char *format, int32_t numb) ;

            .global     PrintTwo
PrintTwo:   PUSH        {R4,R5,LR}      // Preserve R4,R5
            MOV         R4,R0           // Keep *format safe in R4
            MOV         R5,R1           // Keep numb safe in R5
            BL          printf          // R0 <-- printf(format, numb)
            ADD         R1,R5,1         // R1 <-- numb + 1
            MOV         R0,R4           // R0 <-- *format
            BL          printf          // R0 <-- printf(format, numb)
            POP         {R4,R5,LR}      // Restore R4,R5
            .end
