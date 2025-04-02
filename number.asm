section .text
global _start

_start:
    xor     edi, edi

bop:
    mov     eax, edi
    call    an
    push    0x0A
    mov     ecx, esp
    mov     eax, 4
    mov     ebx, 1
    mov     edx, 1
    int     0x80
    add     esp, 4
    inc     edi
    cmp     edi, 10000
    jle     bop

    mov     eax, 1
    xor     ebx, ebx
    int     0x80

an:
    xor     esi, esi
    mov     ebx, 10

divi:
    xor     edx, edx
    div     ebx
    add     dl, '0'
    push    edx
    inc     esi
    test    eax, eax
    jnz     divi

aff:
    dec     esi
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, esp
    mov     edx, 1
    int     0x80
    add     esp, 4
    test    esi, esi
    jnz     aff
    ret