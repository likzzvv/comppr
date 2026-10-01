	.file	"prog1.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "\320\222\320\262\320\265\320\264\320\270 N: \0"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "\320\236\321\210\320\270\320\261\320\272\320\260 \320\262\320\262\320\276\320\264\320\260!\0"
	.align 8
.LC3:
	.ascii "\320\232\320\276\320\273\320\270\321\207\320\265\321\201\321\202\320\262\320\276 \321\202\321\200\320\265\321\205\320\267\320\275\320\260\321\207\320\275\321\213\321\205 \321\207\320\270\321\201\320\265\320\273 \321\201 \321\201\321\203\320\274\320\274\320\276\320\271 \321\206\320\270\321\204\321\200 %d: %d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	movl	$65001, %ecx
	movq	__imp_SetConsoleCP(%rip), %rax
	call	*%rax
	movl	$65001, %ecx
	movq	__imp_SetConsoleOutputCP(%rip), %rax
	call	*%rax
	movl	$0, -4(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	cmpl	$1, %eax
	je	.L2
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, %eax
	jmp	.L7
.L2:
	movl	$100, -8(%rbp)
	jmp	.L4
.L6:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	sarl	$2, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	sarl	$2, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L5
	addl	$1, -4(%rbp)
.L5:
	addl	$1, -8(%rbp)
.L4:
	cmpl	$999, -8(%rbp)
	jle	.L6
	movl	-24(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %eax
.L7:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders) 14.3.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
