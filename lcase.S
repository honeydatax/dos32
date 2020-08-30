	.file	"lcase.c"
	.code16gcc
	.intel_syntax noprefix
	.text
	.globl	_lcase
	.def	_lcase;	.scl	2;	.type	32;	.endef
_lcase:
	push	ebp
	mov	ebp, esp
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	jmp	L2
L4:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	cmp	al, 64
	jle	L3
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	cmp	al, 90
	jg	L3
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	ecx, DWORD PTR [ebp-4]
	mov	edx, DWORD PTR [ebp+8]
	add	edx, ecx
	movzx	edx, BYTE PTR [edx]
	add	edx, 32
	mov	BYTE PTR [eax], dl
L3:
	add	DWORD PTR [ebp-4], 1
L2:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L4
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
	sub	esp, 48
	call	___main
	mov	DWORD PTR [esp+44], 0
	mov	DWORD PTR [esp+31], 1816945992
	mov	DWORD PTR [esp+35], 1867980879
	mov	DWORD PTR [esp+39], 172256338
	mov	BYTE PTR [esp+43], 0
	lea	eax, [esp+31]
	mov	DWORD PTR [esp], eax
	call	_lcase
	mov	DWORD PTR [esp+44], eax
	lea	eax, [esp+31]
	mov	DWORD PTR [esp], eax
	call	_puts
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (GNU) 4.9.1"
	.def	_puts;	.scl	2;	.type	32;	.endef
