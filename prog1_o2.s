	.file	"prog1.c"
	.text
	.section .rdata,"dr"
.LC1:
	.ascii "\320\222\320\262\320\265\320\264\320\270 N: \0"
.LC2:
	.ascii "%d\0"
.LC3:
	.ascii "\320\236\321\210\320\270\320\261\320\272\320\260 \320\262\320\262\320\276\320\264\320\260!\0"
	.align 8
.LC7:
	.ascii "\320\232\320\276\320\273\320\270\321\207\320\265\321\201\321\202\320\262\320\276 \321\202\321\200\320\265\321\205\320\267\320\275\320\260\321\207\320\275\321\213\321\205 \321\207\320\270\321\201\320\265\320\273 \321\201 \321\201\321\203\320\274\320\274\320\276\320\271 \321\206\320\270\321\204\321\200 %d: %d\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$248, %rsp
	.seh_stackalloc	248
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	movaps	%xmm9, 128(%rsp)
	.seh_savexmm	%xmm9, 128
	movaps	%xmm10, 144(%rsp)
	.seh_savexmm	%xmm10, 144
	movaps	%xmm11, 160(%rsp)
	.seh_savexmm	%xmm11, 160
	movaps	%xmm12, 176(%rsp)
	.seh_savexmm	%xmm12, 176
	movaps	%xmm13, 192(%rsp)
	.seh_savexmm	%xmm13, 192
	movaps	%xmm14, 208(%rsp)
	.seh_savexmm	%xmm14, 208
	movaps	%xmm15, 224(%rsp)
	.seh_savexmm	%xmm15, 224
	.seh_endprologue
	call	__main
	movl	$65001, %ecx
	call	*__imp_SetConsoleCP(%rip)
	movl	$65001, %ecx
	call	*__imp_SetConsoleOutputCP(%rip)
	leaq	.LC1(%rip), %rcx
	call	printf
	leaq	76(%rsp), %rdx
	leaq	.LC2(%rip), %rcx
	call	scanf
	cmpl	$1, %eax
	jne	.L7
	movl	76(%rsp), %edx
	movl	$4, %ecx
	pxor	%xmm13, %xmm13
	xorl	%eax, %eax
	movdqa	%xmm13, %xmm10
	movdqa	%xmm13, %xmm14
	movdqa	%xmm13, %xmm11
	movdqa	.LC0(%rip), %xmm12
	movd	%edx, %xmm6
	pshufd	$0, %xmm6, %xmm6
	movaps	%xmm6, 32(%rsp)
	movd	%ecx, %xmm6
	movl	$1717986919, %ecx
	pshufd	$0, %xmm6, %xmm6
	movaps	%xmm6, 48(%rsp)
	movd	%ecx, %xmm6
	movl	$1374389535, %ecx
	movd	%ecx, %xmm9
	pshufd	$0, %xmm6, %xmm6
	pcmpgtd	%xmm6, %xmm10
	pshufd	$0, %xmm9, %xmm9
	pcmpgtd	%xmm9, %xmm14
	.p2align 4
	.p2align 3
.L4:
	movdqa	%xmm12, %xmm2
	movdqa	%xmm11, %xmm5
	movdqa	%xmm10, %xmm3
	addl	$1, %eax
	pcmpgtd	%xmm2, %xmm5
	pmuludq	%xmm2, %xmm3
	movdqa	%xmm2, %xmm0
	pmuludq	%xmm6, %xmm0
	movdqa	%xmm11, %xmm4
	movdqa	%xmm10, %xmm8
	movdqa	%xmm10, %xmm15
	paddd	48(%rsp), %xmm12
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm6, %xmm1
	paddq	%xmm3, %xmm1
	movdqa	%xmm2, %xmm3
	psrlq	$32, %xmm3
	psllq	$32, %xmm1
	pcmpgtd	%xmm3, %xmm4
	paddq	%xmm1, %xmm0
	movdqa	%xmm3, %xmm7
	pmuludq	%xmm3, %xmm8
	pmuludq	%xmm6, %xmm7
	movdqa	%xmm4, %xmm1
	pmuludq	%xmm9, %xmm4
	pmuludq	%xmm6, %xmm1
	paddq	%xmm8, %xmm1
	movdqa	%xmm10, %xmm8
	psllq	$32, %xmm1
	paddq	%xmm7, %xmm1
	movdqa	%xmm11, %xmm7
	shufps	$221, %xmm1, %xmm0
	pshufd	$216, %xmm0, %xmm0
	psrad	$2, %xmm0
	pcmpgtd	%xmm0, %xmm7
	pmuludq	%xmm0, %xmm8
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm6, %xmm1
	pmuludq	%xmm6, %xmm7
	paddq	%xmm8, %xmm7
	movdqa	%xmm11, %xmm8
	psllq	$32, %xmm7
	paddq	%xmm7, %xmm1
	movdqa	%xmm0, %xmm7
	psrlq	$32, %xmm7
	pcmpgtd	%xmm7, %xmm8
	pmuludq	%xmm7, %xmm15
	pmuludq	%xmm6, %xmm7
	pmuludq	%xmm6, %xmm8
	paddq	%xmm15, %xmm8
	psllq	$32, %xmm8
	paddq	%xmm8, %xmm7
	movdqa	%xmm14, %xmm8
	shufps	$221, %xmm7, %xmm1
	pshufd	$216, %xmm1, %xmm1
	pmuludq	%xmm2, %xmm8
	psrad	$2, %xmm1
	movdqa	%xmm1, %xmm7
	pslld	$2, %xmm7
	paddd	%xmm7, %xmm1
	movdqa	%xmm0, %xmm7
	pslld	$1, %xmm1
	psubd	%xmm1, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm2, %xmm5
	pmuludq	%xmm9, %xmm1
	pmuludq	%xmm9, %xmm5
	paddq	%xmm8, %xmm1
	psllq	$32, %xmm1
	paddq	%xmm1, %xmm5
	movdqa	%xmm14, %xmm1
	pmuludq	%xmm3, %xmm1
	pmuludq	%xmm9, %xmm3
	paddq	%xmm1, %xmm4
	movdqa	%xmm0, %xmm1
	psllq	$32, %xmm4
	pslld	$2, %xmm1
	paddq	%xmm4, %xmm3
	paddd	%xmm1, %xmm0
	shufps	$221, %xmm3, %xmm5
	pshufd	$216, %xmm5, %xmm5
	pslld	$1, %xmm0
	psrad	$5, %xmm5
	psubd	%xmm0, %xmm2
	paddd	%xmm5, %xmm7
	paddd	%xmm2, %xmm7
	pcmpeqd	32(%rsp), %xmm7
	psubd	%xmm7, %xmm13
	cmpl	$225, %eax
	jne	.L4
	movdqa	%xmm13, %xmm0
	leaq	.LC7(%rip), %rcx
	psrldq	$8, %xmm0
	paddd	%xmm0, %xmm13
	movdqa	%xmm13, %xmm0
	psrldq	$4, %xmm0
	paddd	%xmm0, %xmm13
	movd	%xmm13, %r8d
	call	printf
	xorl	%eax, %eax
.L1:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	movaps	128(%rsp), %xmm9
	movaps	112(%rsp), %xmm8
	movaps	144(%rsp), %xmm10
	movaps	160(%rsp), %xmm11
	movaps	176(%rsp), %xmm12
	movaps	192(%rsp), %xmm13
	movaps	208(%rsp), %xmm14
	movaps	224(%rsp), %xmm15
	addq	$248, %rsp
	ret
.L7:
	leaq	.LC3(%rip), %rcx
	call	puts
	movl	$1, %eax
	jmp	.L1
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC0:
	.long	100
	.long	101
	.long	102
	.long	103
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders) 14.3.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
