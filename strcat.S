	.file	"strcat.c"
	.code16gcc
	.intel_syntax noprefix
	.text
	.globl	_strslen
	.def	_strslen;	.scl	2;	.type	32;	.endef
_strslen:
	push	ebp
	mov	ebp, esp
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	L2
L3:
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
	.globl	_strcat
	.def	_strcat;	.scl	2;	.type	32;	.endef
_strcat:
	push	ebp
	mov	ebp, esp
	sub	esp, 20
	mov	DWORD PTR [ebp-4], 0
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_strslen
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	DWORD PTR [ebp-8], eax
	jmp	L6
L7:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp-8]
	add	edx, eax
	mov	ecx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-4], 1
L6:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L7
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp-8]
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
	.ascii "world\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	push	edi
	push	ebx
	and	esp, -16
	sub	esp, 80
	call	___main
	mov	DWORD PTR [esp+26], 1819043176
	mov	DWORD PTR [esp+30], 8303
	lea	eax, [esp+34]
	mov	ecx, 42
	mov	ebx, 0
	mov	DWORD PTR [eax], ebx
	mov	DWORD PTR [eax-4+ecx], ebx
	lea	edx, [eax+4]
	and	edx, -4
	sub	eax, edx
	add	ecx, eax
	and	ecx, -4
	shr	ecx, 2
	mov	edi, edx
	mov	eax, ebx
	rep stosd
	mov	DWORD PTR [esp+76], OFFSET FLAT:LC0
	mov	eax, DWORD PTR [esp+76]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [esp+26]
	mov	DWORD PTR [esp], eax
	call	_strcat
	lea	eax, [esp+26]
	mov	DWORD PTR [esp], eax
	call	_puts
	mov	eax, 0
	lea	esp, [ebp-8]
	pop	ebx
	pop	edi
	pop	ebp
	ret
	.ident	"GCC: (GNU) 4.9.1"
	.def	_puts;	.scl	2;	.type	32;	.endef
