	.file	"strncopy.c"
	.code16gcc
	.intel_syntax noprefix
	.text
	.globl	_strnfill
	.def	_strnfill;	.scl	2;	.type	32;	.endef
_strnfill:
	push	ebp
	mov	ebp, esp
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+12]
	mov	BYTE PTR [ebp-20], al
	mov	DWORD PTR [ebp-4], 0
	jmp	L2
L3:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	edx, eax
	movzx	eax, BYTE PTR [ebp-20]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-4], 1
L2:
	mov	eax, DWORD PTR [ebp-4]
	cmp	eax, DWORD PTR [ebp+16]
	jle	L3
	mov	eax, DWORD PTR [ebp-4]
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 144
	call	___main
	mov	DWORD PTR [esp+8], 80
	mov	DWORD PTR [esp+4], 42
	lea	eax, [esp+20]
	mov	DWORD PTR [esp], eax
	call	_strnfill
	mov	BYTE PTR [esp+100], 0
	lea	eax, [esp+20]
	mov	DWORD PTR [esp], eax
	call	_puts
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (GNU) 4.9.1"
	.def	_puts;	.scl	2;	.type	32;	.endef
