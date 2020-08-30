	.file	"strslong.c"
	.code16gcc
	.intel_syntax noprefix
	.text
	.globl	_strslong
	.def	_strslong;	.scl	2;	.type	32;	.endef
_strslong:
	push	ebp
	mov	ebp, esp
	sub	esp, 32
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [ebp-4], eax
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-16], 2147483647
	mov	DWORD PTR [ebp-12], 1000000000
	mov	DWORD PTR [ebp-20], 0
	mov	eax, DWORD PTR [ebp-16]
	and	DWORD PTR [ebp-4], eax
	add	DWORD PTR [ebp-16], 1
	mov	eax, DWORD PTR [ebp+12]
	and	DWORD PTR [ebp-16], eax
	mov	edx, DWORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	BYTE PTR [eax], 43
	cmp	DWORD PTR [ebp-16], 0
	je	L2
	mov	edx, DWORD PTR [ebp-8]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	BYTE PTR [eax], 45
L2:
	mov	DWORD PTR [ebp-8], 0
	jmp	L3
L4:
	mov	eax, DWORD PTR [ebp-4]
	cdq
	idiv	DWORD PTR [ebp-12]
	mov	DWORD PTR [ebp-20], eax
	add	DWORD PTR [ebp-20], 48
	mov	eax, DWORD PTR [ebp-8]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	edx, DWORD PTR [ebp-20]
	mov	BYTE PTR [eax], dl
	mov	eax, DWORD PTR [ebp-4]
	cdq
	idiv	DWORD PTR [ebp-12]
	mov	DWORD PTR [ebp-4], edx
	mov	ecx, DWORD PTR [ebp-12]
	mov	edx, 1717986919
	mov	eax, ecx
	imul	edx
	sar	edx, 2
	mov	eax, ecx
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	mov	DWORD PTR [ebp-12], eax
	add	DWORD PTR [ebp-8], 1
L3:
	cmp	DWORD PTR [ebp-8], 9
	jle	L4
	mov	eax, DWORD PTR [ebp-8]
	lea	edx, [eax+1]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	BYTE PTR [eax], 0
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 48
	call	___main
	mov	DWORD PTR [esp+44], 1234567890
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [esp+24]
	mov	DWORD PTR [esp], eax
	call	_strslong
	lea	eax, [esp+24]
	mov	DWORD PTR [esp], eax
	call	_puts
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (GNU) 4.9.1"
	.def	_puts;	.scl	2;	.type	32;	.endef
