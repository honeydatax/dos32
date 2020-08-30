	.file	"hello.c"
	.code16gcc
	.intel_syntax noprefix
/APP
	.code16gcc
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "hello world\0"
/NO_APP
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 16
	call	___main
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_puts
	nop
L2:
	call	_getchar
	cmp	eax, 27
	je	L2
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (GNU) 4.9.1"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_getchar;	.scl	2;	.type	32;	.endef
