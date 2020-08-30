	.file	"findchr.c"
	.code16gcc
	.intel_syntax noprefix
	.text
	.globl	_findcahr
	.def	_findcahr;	.scl	2;	.type	32;	.endef
_findcahr:
	push	ebp
	mov	ebp, esp
	sub	esp, 20
	mov	eax, DWORD PTR [ebp+12]
	mov	BYTE PTR [ebp-20], al
	mov	DWORD PTR [ebp-4], 0
	jmp	L2
L4:
	add	DWORD PTR [ebp-4], 1
L2:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	L3
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	cmp	al, BYTE PTR [ebp-20]
	jne	L4
L3:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	cmp	al, BYTE PTR [ebp-20]
	je	L5
	mov	DWORD PTR [ebp-4], -1
L5:
	mov	eax, DWORD PTR [ebp-4]
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "hello world\12\0"
LC1:
	.ascii "%s %d \12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 32
	call	___main
	mov	DWORD PTR [esp+28], 0
	mov	DWORD PTR [esp+24], OFFSET FLAT:LC0
	mov	DWORD PTR [esp+4], 119
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	call	_findcahr
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_printf
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (GNU) 4.9.1"
	.def	_printf;	.scl	2;	.type	32;	.endef
