	.file	"strcopy.c"
	.code16gcc
	.intel_syntax noprefix
	.text
	.globl	_strcopy
	.def	_strcopy;	.scl	2;	.type	32;	.endef
_strcopy:
	push	ebp
	mov	ebp, esp
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	L2
L3:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	edx, eax
	mov	ecx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-4], 1
L2:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L3
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	edx, eax
	mov	ecx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	mov	eax, DWORD PTR [ebp-4]
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "hello world\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 1056
	call	___main
	mov	DWORD PTR [esp+1052], OFFSET FLAT:LC0
	mov	eax, DWORD PTR [esp+1052]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [esp+28]
	mov	DWORD PTR [esp], eax
	call	_strcopy
	lea	eax, [esp+28]
	mov	DWORD PTR [esp], eax
	call	_puts
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (GNU) 4.9.1"
	.def	_puts;	.scl	2;	.type	32;	.endef
