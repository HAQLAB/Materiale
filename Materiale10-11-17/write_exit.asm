bits 32
SECTION .text
global _start

_start:
  ;azzeriamo i registri
  xor eax, eax
  xor ebx, ebx
  xor ecx, ecx
  xor edx, edx
                         ;eax   ebx        ecx              edx
  ;eseguiamo la syscall write(int fd, const void *buf, size_t count)
  mov bl, 0x1       ;standard output
  push cl           ;pushiamo uno zero sulla stack
  push 0x44434241   ;pushiamo la stringa ABCD(little-endian) sullo stack
  mov ecx, esp      ;mettiamo in ecx l'indirizzo del top dello stack (ovvero della stringa ABCD)
  mov dl, 0x4       ;stampiamo 4 caratteri con la write
  mov al, 0x4       ;mettiamo negli ultimi 8 bit di eax il valore della syscall write (cat /usr/include/x86_64-linux-gnu/asm/unistd_32.h|grep write)
  
  int 0x80          ;chiamiamo un interrupt che fa eseguire la syscall
  
  ;azzeriamo i registri
  xor eax, eax
  xor ebx, ebx
  xor ecx, ecx
  xor edx, edx
  
  ;eseguiamo la syscall exit(0). ebx contiene già il valore 0
  mov al, 0x1
  int 0x80
