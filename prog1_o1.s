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
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movl	$65001, %ecx
	call	*__imp_SetConsoleCP(%rip)
	movl	$65001, %ecx
	call	*__imp_SetConsoleOutputCP(%rip)
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	44(%rsp), %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	cmpl	$1, %eax
	jne	.L7
	movl	44(%rsp), %r10d
	movl	$100, %r9d
	movl	$0, %r8d
.L5:
	movslq	%r9d, %rdx
	imulq	$1717986919, %rdx, %rax
	sarq	$34, %rax
	movl	%r9d, %ebx
	sarl	$31, %ebx
	subl	%ebx, %eax
	movslq	%eax, %rcx
	imulq	$1717986919, %rcx, %rcx
	sarq	$34, %rcx
	movl	%eax, %r11d
	sarl	$31, %r11d
	subl	%r11d, %ecx
	leal	(%rcx,%rcx,4), %r11d
	addl	%r11d, %r11d
	movl	%eax, %ecx
	subl	%r11d, %ecx
	imulq	$1374389535, %rdx, %rdx
	sarq	$37, %rdx
	subl	%ebx, %edx
	addl	%ecx, %edx
	leal	(%rax,%rax,4), %eax
	addl	%eax, %eax
	movl	%r9d, %ecx
	subl	%eax, %ecx
	leal	(%rdx,%rcx), %eax
	cmpl	%r10d, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %r8d
	addl	$1, %r9d
	cmpl	$1000, %r9d
	jne	.L5
	movl	%r10d, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	movl	$0, %eax
.L1:
	addq	$48, %rsp
	popq	%rbx
	ret
.L7:
	leaq	.LC2(%rip), %rcx
	call	puts
	movl	$1, %eax
	jmp	.L1
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders) 14.3.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
