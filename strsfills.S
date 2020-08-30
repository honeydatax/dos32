	.file	"strsfills.c"
	.code16gcc
	.intel_syntax noprefix
	.text
	.globl	_strsfills
	.def	_strsfills;	.scl	2;	.type	32;	.endef
_strsfills:
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
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L3
	mov	eax, DWORD PTR [ebp-4]
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%s \12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 48
	call	___main
	mov	DWORD PTR [esp+44], 0
	mov	DWORD PTR [esp+31], 1819043176
	mov	DWORD PTR [esp+35], 1870078063
	mov	DWORD PTR [esp+39], 174353522
	mov	BYTE PTR [esp+43], 0
	mov	DWORD PTR [esp+4], 42
	lea	eax, [esp+31]
	mov	DWORD PTR [esp], eax
	call	_strsfills
	lea	eax, [esp+31]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_printf
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (GNU) 4.9.1"
	.def	_printf;	.scl	2;	.type	32;	.endef
