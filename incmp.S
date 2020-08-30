	.file	"incmp.c"
	.code16gcc
	.intel_syntax noprefix
	.text
	.globl	_incmp
	.def	_incmp;	.scl	2;	.type	32;	.endef
_incmp:
	push	ebp
	mov	ebp, esp
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-12], 0
	jmp	L2
L7:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	movzx	edx, BYTE PTR [eax]
	mov	ecx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	je	L3
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	movzx	edx, BYTE PTR [eax]
	mov	ecx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jle	L4
	mov	DWORD PTR [ebp-12], 1
L4:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	movzx	edx, BYTE PTR [eax]
	mov	ecx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jge	L5
	mov	DWORD PTR [ebp-12], -1
L5:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L6
	mov	DWORD PTR [ebp-12], 0
L6:
	mov	DWORD PTR [ebp-8], 1
L3:
	add	DWORD PTR [ebp-4], 1
L2:
	cmp	DWORD PTR [ebp-8], 1
	jne	L7
	mov	eax, DWORD PTR [ebp-12]
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "hello world\12\0"
LC1:
	.ascii "hello\0"
LC2:
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
	mov	DWORD PTR [esp+20], OFFSET FLAT:LC1
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp], eax
	call	_incmp
	mov	DWORD PTR [esp+28], eax
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_printf
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (GNU) 4.9.1"
	.def	_printf;	.scl	2;	.type	32;	.endef
