	.file	"main.cc"
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1708:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.text
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB8935:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.align 2
	.p2align 4,,15
	.def	_ZNSt6vectorIfSaIfEEC1EyRKS0_.isra.38;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIfSaIfEEC1EyRKS0_.isra.38
_ZNSt6vectorIfSaIfEEC1EyRKS0_.isra.38:
.LFB8975:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	testq	%rdx, %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	je	.L5
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rdx
	ja	.L11
	leaq	0(,%rdx,4), %rdi
	movq	%rdi, %rcx
	call	_Znwy
	xorl	%r8d, %r8d
	leaq	(%rax,%rdi), %rcx
	movq	%rax, (%rsi)
	movq	%rcx, 16(%rsi)
	.p2align 4,,10
.L7:
	movl	$0x00000000, (%rax,%r8,4)
	addq	$1, %r8
	cmpq	%r8, %rbx
	jne	.L7
.L8:
	movq	%rcx, 8(%rsi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L5:
	xorl	%ecx, %ecx
	jmp	.L8
.L11:
	call	_ZSt17__throw_bad_allocv
	nop
	.seh_endproc
	.p2align 4,,15
	.globl	_Z20generate_test_matrixPfS_i
	.def	_Z20generate_test_matrixPfS_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z20generate_test_matrixPfS_i
_Z20generate_test_matrixPfS_i:
.LFB8309:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$152, %rsp
	.seh_stackalloc	152
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	movaps	%xmm8, 128(%rsp)
	.seh_savexmm	%xmm8, 128
	.seh_endprologue
	testl	%r8d, %r8d
	movq	%rcx, 224(%rsp)
	movl	%r8d, 240(%rsp)
	jle	.L12
	movslq	%r8d, %rsi
	movq	%rcx, %rbx
	movss	.LC2(%rip), %xmm7
	xorl	%ecx, %ecx
	leaq	1(%rsi), %rax
	addq	$4, %rbx
	movq	%rdx, %r14
	movq	%rdx, 80(%rsp)
	movq	%rax, 48(%rsp)
	movl	%r8d, %eax
	movss	.LC1(%rip), %xmm8
	movq	%rcx, %rdi
	subl	$1, %eax
	movq	%rbx, 40(%rsp)
	movss	.LC3(%rip), %xmm6
	movq	%rax, 72(%rsp)
	leaq	(%rbx,%rax,4), %rbx
	addq	$1, %rax
	movq	%rax, 64(%rsp)
	leal	-2(%rsi), %r13d
	negq	%rax
	leaq	0(,%rsi,4), %r12
	movq	%rax, %rbp
	movq	224(%rsp), %rax
	movq	%rsi, 88(%rsp)
	salq	$2, %rbp
	movq	%rdx, 232(%rsp)
	addq	$8, %rax
	movq	%rax, 56(%rsp)
	.p2align 4,,10
.L22:
	leaq	0(%rbp,%rbx), %rax
	.p2align 4,,10
.L14:
	movl	$0x00000000, (%rax)
	addq	$4, %rax
	cmpq	%rbx, %rax
	jne	.L14
	movq	224(%rsp), %rax
	cmpl	$-1, %r13d
	movss	%xmm8, (%rax,%rdi,4)
	je	.L15
	movq	40(%rsp), %rax
	movq	56(%rsp), %rsi
	leaq	(%rax,%rdi,4), %r15
	movl	%r13d, %eax
	addq	%rdi, %rax
	leaq	(%rsi,%rax,4), %rsi
	.p2align 4,,10
.L17:
	call	rand
	pxor	%xmm0, %xmm0
	addq	$4, %r15
	cvtsi2ss	%eax, %xmm0
	divss	%xmm7, %xmm0
	mulss	%xmm6, %xmm0
	movss	%xmm0, -4(%r15)
	cmpq	%rsi, %r15
	jne	.L17
	call	rand
	pxor	%xmm0, %xmm0
	addq	$4, %r14
	subl	$1, %r13d
	cvtsi2ss	%eax, %xmm0
	addq	48(%rsp), %rdi
	addq	%r12, %rbx
	divss	%xmm7, %xmm0
	mulss	%xmm6, %xmm0
	movss	%xmm0, -4(%r14)
	jmp	.L22
.L12:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	movaps	128(%rsp), %xmm8
	addq	$152, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L15:
	movq	88(%rsp), %rsi
	movq	232(%rsp), %r15
	movq	80(%rsp), %rdi
	call	rand
	pxor	%xmm0, %xmm0
	movq	64(%rsp), %r13
	movl	$1, %r10d
	cvtsi2ss	%eax, %xmm0
	movq	72(%rsp), %rax
	movq	224(%rsp), %rbx
	movl	240(%rsp), %r9d
	divss	%xmm7, %xmm0
	leaq	(%rsi,%rax), %rcx
	leaq	4(%rbx,%rcx,4), %rbx
	mulss	%xmm0, %xmm6
	movss	%xmm6, (%r15,%rax,4)
	xorl	%eax, %eax
	.p2align 4,,10
.L21:
	cmpq	%r10, %r13
	je	.L12
	leaq	(%rax,%rsi), %r11
	movq	%rsi, %rcx
	movq	%r10, %r8
	leaq	(%rbx,%rax,4), %rdx
	negq	%rcx
	.p2align 4,,10
.L20:
	leaq	0(%rbp,%rdx), %rax
	.p2align 4,,10
.L18:
	movss	(%rax), %xmm0
	addss	(%rax,%rcx,4), %xmm0
	addq	$4, %rax
	movss	%xmm0, -4(%rax)
	cmpq	%rax, %rdx
	jne	.L18
	movss	(%r15,%r8,4), %xmm0
	subq	%rsi, %rcx
	addq	%r12, %rdx
	addss	(%rdi), %xmm0
	movss	%xmm0, (%r15,%r8,4)
	addq	$1, %r8
	cmpl	%r8d, %r9d
	jg	.L20
	addq	$1, %r10
	addq	$4, %rdi
	movq	%r11, %rax
	jmp	.L21
	.seh_endproc
	.p2align 4,,15
	.globl	_Z27gaussian_elimination_serialPfS_S_i
	.def	_Z27gaussian_elimination_serialPfS_S_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z27gaussian_elimination_serialPfS_S_i
_Z27gaussian_elimination_serialPfS_S_i:
.LFB8310:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leal	-1(%r9), %eax
	testl	%r9d, %r9d
	movq	%rcx, %rbp
	movq	%r8, %r13
	movl	%r9d, %ecx
	movl	%eax, 36(%rsp)
	jle	.L26
	movq	%rax, 40(%rsp)
	movslq	%r9d, %r12
	addq	$1, %rax
	xorl	%esi, %esi
	leaq	1(%r12), %rdi
	movq	%rax, 8(%rsp)
	movss	.LC1(%rip), %xmm3
	movq	%rdi, 16(%rsp)
	leaq	4(%rbp), %rax
	movl	$1, %edi
	cmpq	8(%rsp), %rdi
	movq	%r8, 144(%rsp)
	movq	%rax, %r13
	leaq	0(,%r12,4), %rbx
	leaq	4(%rbp,%rbx), %r11
	leal	-2(%r9), %r14d
	movq	%r11, 24(%rsp)
	leaq	8(%rbp), %r15
	je	.L27
	.p2align 4,,10
.L41:
	leaq	0(,%rsi,4), %r10
	movl	%r14d, %r8d
	leaq	(%r8,%rsi), %r9
	leaq	0(%r13,%r10), %rax
	leaq	(%r15,%r9,4), %r9
	.p2align 4,,10
.L29:
	movss	(%rax), %xmm0
	addq	$4, %rax
	divss	0(%rbp,%rsi,4), %xmm0
	movss	%xmm0, -4(%rax)
	cmpq	%r9, %rax
	jne	.L29
	addq	24(%rsp), %r10
	leaq	(%r12,%rsi), %rax
	movq	%r12, %r9
	movq	%rdi, %r11
	addq	%r8, %rax
	movss	-4(%rdx,%rdi,4), %xmm0
	negq	%r9
	divss	0(%rbp,%rsi,4), %xmm0
	leaq	(%r15,%rax,4), %r8
	movss	%xmm0, -4(%rdx,%rdi,4)
	movss	%xmm3, 0(%rbp,%rsi,4)
	.p2align 4,,10
.L31:
	movss	-4(%r10), %xmm2
	movq	%r10, %rax
	.p2align 4,,10
.L30:
	movss	(%rax,%r9,4), %xmm1
	addq	$4, %rax
	movss	-4(%rax), %xmm0
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -4(%rax)
	cmpq	%rax, %r8
	jne	.L30
	mulss	-4(%rdx,%rdi,4), %xmm2
	subq	%r12, %r9
	addq	%rbx, %r8
	movss	(%rdx,%r11,4), %xmm0
	subss	%xmm2, %xmm0
	movss	%xmm0, (%rdx,%r11,4)
	addq	$1, %r11
	movl	$0x00000000, -4(%r10)
	addq	%rbx, %r10
	cmpl	%r11d, %ecx
	jg	.L31
	addq	$1, %rdi
	subl	$1, %r14d
	addq	16(%rsp), %rsi
	cmpq	8(%rsp), %rdi
	jne	.L41
.L27:
	movq	40(%rsp), %rdi
	leaq	4(%rbx), %rax
	movq	144(%rsp), %r13
	imulq	%rdi, %rax
	leaq	(%rdx,%rdi,4), %r8
	movss	(%r8), %xmm0
	addq	%rbp, %rax
	divss	(%rax), %xmm0
	movss	%xmm0, (%r8)
	movss	%xmm3, (%rax)
.L33:
	movslq	36(%rsp), %r10
	movl	%ecx, %esi
	movl	%ecx, %ebx
	notl	%esi
	negl	%ebx
	movslq	%esi, %rsi
	movslq	%ebx, %rbx
	salq	$2, %rsi
	salq	$2, %rbx
	leaq	0(%r13,%r10,4), %r8
	movq	%r10, %rax
	imull	%ecx, %eax
	cltq
	leaq	(%rax,%r10), %r9
	leaq	0(%rbp,%r9,4), %r11
	leaq	0(%rbp,%rax,4), %r9
	.p2align 4,,10
.L37:
	movss	(%rdx,%r10,4), %xmm1
	leal	1(%r10), %eax
	cmpl	%eax, %ecx
	movss	%xmm1, (%r8)
	jle	.L34
	cltq
	.p2align 4,,10
.L35:
	movss	(%r9,%rax,4), %xmm0
	mulss	0(%r13,%rax,4), %xmm0
	addq	$1, %rax
	cmpl	%eax, %ecx
	subss	%xmm0, %xmm1
	movss	%xmm1, (%r8)
	jg	.L35
.L34:
	subq	$1, %r10
	divss	(%r11), %xmm1
	subq	$4, %r8
	movss	%xmm1, 4(%r8)
	addq	%rsi, %r11
	addq	%rbx, %r9
	testl	%r10d, %r10d
	jns	.L37
.L25:
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L26:
	movl	36(%rsp), %eax
	testl	%eax, %eax
	js	.L25
	jmp	.L33
	.seh_endproc
	.p2align 4,,15
	.globl	_Z25gaussian_elimination_simdPfS_S_i
	.def	_Z25gaussian_elimination_simdPfS_S_i;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z25gaussian_elimination_simdPfS_S_i
_Z25gaussian_elimination_simdPfS_S_i:
.LFB8311:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	leal	-1(%r9), %eax
	testl	%r9d, %r9d
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%r8, %r15
	movl	%eax, 92(%rsp)
	jle	.L43
	movslq	%r9d, %r12
	movq	%rcx, %rbx
	movl	$4, %r14d
	movss	.LC1(%rip), %xmm4
	leal	-5(%r9), %eax
	movq	%r12, %r11
	movl	%r14d, %r15d
	movq	$0, 32(%rsp)
	movl	%eax, 44(%rsp)
	movl	$4, %ebp
	leaq	0(,%r12,4), %rax
	movl	$5, 88(%rsp)
	movq	%rax, 16(%rsp)
	leaq	1(%r12), %rax
	movq	%rax, 64(%rsp)
	leaq	4(%rcx), %rax
	movq	%rax, 72(%rsp)
	leaq	20(%rcx), %rax
	movq	%rax, 24(%rsp)
	leaq	(%r12,%r12), %rax
	movq	$1, 48(%rsp)
	movq	%rax, 80(%rsp)
	movq	%r8, 192(%rsp)
	.p2align 4,,10
.L56:
	movq	32(%rsp), %rax
	cmpl	%r15d, %r9d
	movl	48(%rsp), %r13d
	movss	(%rdi,%rax,4), %xmm2
	movaps	%xmm2, %xmm1
	shufps	$0, %xmm1, %xmm1
	jle	.L74
	movl	44(%rsp), %ecx
	movq	32(%rsp), %r14
	movq	72(%rsp), %rax
	shrl	$2, %ecx
	movl	%ecx, %edx
	leaq	(%r14,%rdx,4), %rdx
	leaq	(%rax,%r14,4), %rax
	movq	24(%rsp), %r14
	leaq	(%r14,%rdx,4), %rdx
	.p2align 4,,10
.L48:
	pxor	%xmm0, %xmm0
	movlps	(%rax), %xmm0
	addq	$16, %rax
	movhps	-8(%rax), %xmm0
	divps	%xmm1, %xmm0
	movlps	%xmm0, -16(%rax)
	movhps	%xmm0, -8(%rax)
	cmpq	%rdx, %rax
	jne	.L48
	movl	88(%rsp), %eax
	leal	(%rax,%rcx,4), %edx
.L49:
	cmpl	%edx, %r9d
	movslq	%edx, %rax
	jle	.L50
.L51:
	movss	(%rbx,%rax,4), %xmm0
	divss	%xmm2, %xmm0
	movss	%xmm0, (%rbx,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %r9d
	jg	.L51
.L50:
	movss	-4(%rsi,%rbp), %xmm0
	movq	32(%rsp), %rax
	divss	%xmm2, %xmm0
	cmpl	$-4, 44(%rsp)
	movss	%xmm0, -4(%rsi,%rbp)
	movss	%xmm4, (%rdi,%rax,4)
	je	.L75
	movq	32(%rsp), %rax
	leaq	(%rdi,%r11,4), %rcx
	subq	%r12, %r11
	movq	%r12, %rdx
	movq	%r11, 56(%rsp)
	movl	88(%rsp), %r10d
	negq	%rdx
	leaq	(%r12,%rax), %r11
	movl	44(%rsp), %eax
	shrl	$2, %eax
	movl	%eax, %r14d
	leal	(%r10,%rax,4), %eax
	salq	$2, %r14
	movq	48(%rsp), %r10
	cmpl	%r15d, %r9d
	cmovg	%eax, %r13d
	movl	%eax, 40(%rsp)
	movslq	%r13d, %r13
	.p2align 4,,10
.L55:
	movss	(%rdi,%r11,4), %xmm3
	cmpl	%r15d, %r9d
	movaps	%xmm3, %xmm2
	shufps	$0, %xmm2, %xmm2
	jle	.L53
	leaq	(%rcx,%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rax
	leaq	(%r11,%r14), %r8
	leaq	(%rax,%r8,4), %r8
	movq	8(%rsp), %rax
	.p2align 4,,10
.L58:
	pxor	%xmm1, %xmm1
	movlps	(%rax,%rdx,4), %xmm1
	pxor	%xmm0, %xmm0
	movlps	(%rax), %xmm0
	movhps	8(%rax,%rdx,4), %xmm1
	movhps	8(%rax), %xmm0
	addq	$16, %rax
	mulps	%xmm2, %xmm1
	subps	%xmm1, %xmm0
	movlps	%xmm0, -16(%rax)
	movhps	%xmm0, -8(%rax)
	cmpq	%rax, %r8
	jne	.L58
	cmpl	%r9d, 40(%rsp)
	jge	.L59
.L53:
	movq	%r13, %rax
.L60:
	movss	(%rbx,%rax,4), %xmm1
	movss	(%rcx,%rax,4), %xmm0
	mulss	%xmm3, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, (%rcx,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %r9d
	jg	.L60
.L59:
	mulss	-4(%rsi,%rbp), %xmm3
	subq	%r12, %rdx
	movss	(%rsi,%r10,4), %xmm0
	addq	16(%rsp), %rcx
	subss	%xmm3, %xmm0
	movss	%xmm0, (%rsi,%r10,4)
	addq	$1, %r10
	movl	$0x00000000, (%rdi,%r11,4)
	addq	%r12, %r11
	cmpl	%r10d, %r9d
	jg	.L55
	movq	56(%rsp), %r11
	addl	$1, %r15d
	addq	$4, %rbp
	movq	64(%rsp), %rcx
	addq	$1, 48(%rsp)
	subl	$1, 44(%rsp)
	addl	$1, 88(%rsp)
	addq	16(%rsp), %rbx
	addq	80(%rsp), %r11
	addq	%rcx, 32(%rsp)
	jmp	.L56
.L75:
	movq	192(%rsp), %r15
.L46:
	movslq	92(%rsp), %r8
	movl	%r9d, %ebx
	movl	%r9d, %r11d
	notl	%ebx
	negl	%r11d
	movslq	%ebx, %rbx
	movslq	%r11d, %r11
	salq	$2, %rbx
	salq	$2, %r11
	leaq	(%r15,%r8,4), %rdx
	movq	%r8, %rax
	imull	%r9d, %eax
	cltq
	leaq	(%rax,%r8), %rcx
	leaq	(%rdi,%rcx,4), %r10
	leaq	(%rdi,%rax,4), %rcx
	.p2align 4,,10
.L52:
	movss	(%rsi,%r8,4), %xmm1
	leal	1(%r8), %eax
	cmpl	%eax, %r9d
	movss	%xmm1, (%rdx)
	jle	.L61
	cltq
	.p2align 4,,10
.L62:
	movss	(%rcx,%rax,4), %xmm0
	mulss	(%r15,%rax,4), %xmm0
	addq	$1, %rax
	cmpl	%eax, %r9d
	subss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	jg	.L62
.L61:
	subq	$1, %r8
	divss	(%r10), %xmm1
	subq	$4, %rdx
	addq	%rbx, %r10
	movss	%xmm1, 4(%rdx)
	addq	%r11, %rcx
	testl	%r8d, %r8d
	jns	.L52
.L42:
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L74:
	movl	%r13d, %edx
	jmp	.L49
.L43:
	movl	92(%rsp), %eax
	testl	%eax, %eax
	js	.L42
	jmp	.L46
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii "\351\252\214\350\257\201\345\244\261\350\264\245: \350\241\214 \0"
.LC6:
	.ascii ", \346\234\237\346\234\233 \0"
.LC7:
	.ascii ", \345\276\227\345\210\260 \0"
	.text
	.p2align 4,,15
	.globl	_Z15verify_solutionPfS_S_if
	.def	_Z15verify_solutionPfS_S_if;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15verify_solutionPfS_S_if
_Z15verify_solutionPfS_S_if:
.LFB8312:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movss	112(%rsp), %xmm1
	testl	%r9d, %r9d
	jle	.L85
	movq	%rdx, %rbx
	movslq	%r9d, %rdx
	xorl	%esi, %esi
	leal	-1(%r9), %r11d
	salq	$2, %rdx
	movss	.LC4(%rip), %xmm2
	.p2align 4,,10
.L84:
	xorl	%eax, %eax
	pxor	%xmm6, %xmm6
	jmp	.L78
	.p2align 4,,10
.L86:
	movq	%r10, %rax
.L78:
	movss	(%rcx,%rax,4), %xmm0
	leaq	1(%rax), %r10
	cmpq	%rax, %r11
	mulss	(%r8,%rax,4), %xmm0
	addss	%xmm0, %xmm6
	jne	.L86
	movaps	%xmm6, %xmm0
	subss	(%rbx), %xmm0
	andps	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	ja	.L91
	addl	$1, %esi
	addq	$4, %rbx
	addq	%rdx, %rcx
	cmpl	%esi, %r9d
	jne	.L84
.L85:
	movaps	32(%rsp), %xmm6
	movl	$1, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L91:
	movq	.refptr._ZSt4cerr(%rip), %rcx
	movl	$18, %r8d
	leaq	.LC5(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cerr(%rip), %rcx
	movl	%esi, %edx
	call	_ZNSolsEi
	movl	$9, %r8d
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rsi
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rcx
	pxor	%xmm1, %xmm1
	cvtss2sd	(%rbx), %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$9, %r8d
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rsi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L92
	cmpb	$0, 56(%rbx)
	je	.L82
	movsbl	67(%rbx), %edx
.L83:
	movq	%rsi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	nop
	movaps	32(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L82:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %edx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L83
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L83
.L92:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.section	.text$_ZNSt6vectorIfSaIfEEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNSt6vectorIfSaIfEEC1ERKS1_
	.def	_ZNSt6vectorIfSaIfEEC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIfSaIfEEC1ERKS1_
_ZNSt6vectorIfSaIfEEC1ERKS1_:
.LFB8618:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	xorl	%r9d, %r9d
	movq	8(%rdx), %rsi
	subq	(%rdx), %rsi
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	$0, (%rcx)
	movq	%rsi, %rax
	movq	$0, 8(%rcx)
	sarq	$2, %rax
	movq	$0, 16(%rcx)
	testq	%rax, %rax
	je	.L95
	movabsq	$4611686018427387903, %rdx
	cmpq	%rdx, %rax
	ja	.L99
	movq	%rsi, %rcx
	call	_Znwy
	movq	%rax, %r9
.L95:
	addq	%r9, %rsi
	movq	%r9, (%rbx)
	movq	%rsi, 16(%rbx)
	movq	%r9, 8(%rbx)
	movq	8(%rdi), %rax
	movq	(%rdi), %rdx
	movq	%rax, %rsi
	subq	%rdx, %rsi
	cmpq	%rdx, %rax
	je	.L98
	movq	%r9, %rcx
	movq	%rsi, %r8
	call	memmove
	movq	%rax, %r9
.L98:
	addq	%rsi, %r9
	movq	%r9, 8(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L99:
	call	_ZSt17__throw_bad_allocv
	nop
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC8:
	.ascii "\351\227\256\351\242\230\350\247\204\346\250\241 N = \0"
.LC10:
	.ascii "\344\270\262\350\241\214\347\211\210\346\234\254\350\200\227\346\227\266: \0"
.LC11:
	.ascii " ms\0"
.LC12:
	.ascii "SIMD\345\271\266\350\241\214\347\211\210\346\234\254\350\200\227\346\227\266: \0"
.LC13:
	.ascii "\345\212\240\351\200\237\346\257\224: \0"
	.align 8
.LC15:
	.ascii "\344\270\262\350\241\214\347\211\210\346\234\254\347\273\223\346\236\234\351\252\214\350\257\201\351\200\232\350\277\207\0"
	.align 8
.LC16:
	.ascii "SIMD\345\271\266\350\241\214\347\211\210\346\234\254\347\273\223\346\236\234\351\252\214\350\257\201\351\200\232\350\277\207\0"
	.align 8
.LC17:
	.ascii "\344\270\262\350\241\214\344\270\216SIMD\350\247\243\347\232\204\346\234\200\345\244\247\350\257\257\345\267\256: \0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB8313:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$360, %rsp
	.seh_stackalloc	360
	movaps	%xmm6, 304(%rsp)
	.seh_savexmm	%xmm6, 304
	movaps	%xmm7, 320(%rsp)
	.seh_savexmm	%xmm7, 320
	movaps	%xmm8, 336(%rsp)
	.seh_savexmm	%xmm8, 336
	.seh_endprologue
	movl	$512, %ebx
	movl	%ecx, %esi
	movq	%rdx, %rdi
	call	__main
	cmpl	$1, %esi
	jle	.L101
	movq	8(%rdi), %rcx
	call	atoi
	movl	%eax, %ebx
.L101:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$17, %r8d
	movslq	%ebx, %rbp
	leaq	.LC8(%rip), %rdx
	leaq	48(%rsp), %rdi
	leaq	80(%rsp), %rsi
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%ebx, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	%ebx, %edx
	movq	%rdi, %rcx
	imull	%ebx, %edx
	movslq	%edx, %rdx
	call	_ZNSt6vectorIfSaIfEEC1EyRKS0_.isra.38
.LEHE0:
	movq	%rbp, %rdx
	movq	%rsi, %rcx
.LEHB1:
	call	_ZNSt6vectorIfSaIfEEC1EyRKS0_.isra.38
.LEHE1:
	leaq	112(%rsp), %rcx
	movq	%rbp, %rdx
.LEHB2:
	call	_ZNSt6vectorIfSaIfEEC1EyRKS0_.isra.38
.LEHE2:
	leaq	144(%rsp), %rcx
	movq	%rbp, %rdx
.LEHB3:
	call	_ZNSt6vectorIfSaIfEEC1EyRKS0_.isra.38
.LEHE3:
	movq	80(%rsp), %rdx
	movl	%ebx, %r8d
	movq	48(%rsp), %rcx
	call	_Z20generate_test_matrixPfS_i
	leaq	176(%rsp), %rcx
	movq	%rdi, %rdx
.LEHB4:
	call	_ZNSt6vectorIfSaIfEEC1ERKS1_
.LEHE4:
	leaq	208(%rsp), %rcx
	movq	%rsi, %rdx
.LEHB5:
	call	_ZNSt6vectorIfSaIfEEC1ERKS1_
.LEHE5:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	112(%rsp), %r8
	movl	%ebx, %r9d
	pxor	%xmm7, %xmm7
	movq	208(%rsp), %rdx
	movq	%rax, %rbp
	movq	176(%rsp), %rcx
	call	_Z27gaussian_elimination_serialPfS_S_i
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$20, %r8d
	movsd	.LC9(%rip), %xmm8
	subq	%rbp, %rax
	cvtsi2sdq	%rax, %xmm7
	leaq	.LC10(%rip), %rdx
	divsd	%xmm8, %xmm7
.LEHB6:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$3, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbp
	leaq	.LC11(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	leaq	240(%rsp), %rcx
	movq	%rdi, %rdx
	call	_ZNSt6vectorIfSaIfEEC1ERKS1_
.LEHE6:
	leaq	272(%rsp), %rcx
	movq	%rsi, %rdx
.LEHB7:
	call	_ZNSt6vectorIfSaIfEEC1ERKS1_
.LEHE7:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	144(%rsp), %r8
	movl	%ebx, %r9d
	pxor	%xmm6, %xmm6
	movq	272(%rsp), %rdx
	movq	%rax, %rsi
	movq	240(%rsp), %rcx
	call	_Z25gaussian_elimination_simdPfS_S_i
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$24, %r8d
	leaq	.LC12(%rip), %rdx
	subq	%rsi, %rax
	cvtsi2sdq	%rax, %xmm6
	divsd	%xmm8, %xmm6
.LEHB8:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$3, %r8d
	movq	%rax, %rcx
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$11, %r8d
	leaq	.LC13(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	divsd	%xmm6, %xmm7
	movapd	%xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	112(%rsp), %r8
	movl	%ebx, %r9d
	movq	80(%rsp), %rdx
	movq	48(%rsp), %rcx
	movss	.LC14(%rip), %xmm6
	movss	%xmm6, 32(%rsp)
	call	_Z15verify_solutionPfS_S_if
	testb	%al, %al
	je	.L104
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$30, %r8d
	leaq	.LC15(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.L104:
	movq	80(%rsp), %rdx
	movss	%xmm6, 32(%rsp)
	movl	%ebx, %r9d
	movq	144(%rsp), %r8
	movq	48(%rsp), %rcx
	call	_Z15verify_solutionPfS_S_if
	testb	%al, %al
	jne	.L197
.L108:
	testl	%ebx, %ebx
	jle	.L198
	movq	112(%rsp), %r9
	leal	-1(%rbx), %ecx
	xorl	%eax, %eax
	pxor	%xmm6, %xmm6
	movq	144(%rsp), %r8
	movss	.LC4(%rip), %xmm1
	jmp	.L110
	.p2align 4,,10
.L138:
	movq	%rdx, %rax
.L110:
	movss	(%r9,%rax,4), %xmm0
	leaq	1(%rax), %rdx
	cmpq	%rcx, %rax
	subss	(%r8,%rax,4), %xmm0
	andps	%xmm1, %xmm0
	maxss	%xmm6, %xmm0
	movaps	%xmm0, %xmm6
	jne	.L138
.L106:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$33, %r8d
	leaq	.LC17(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	272(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L111
	call	_ZdlPv
.L111:
	movq	240(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L112
	call	_ZdlPv
.L112:
	movq	208(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L113
	call	_ZdlPv
.L113:
	movq	176(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L114
	call	_ZdlPv
.L114:
	movq	144(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L115
	call	_ZdlPv
.L115:
	movq	112(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L116
	call	_ZdlPv
.L116:
	movq	80(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L117
	call	_ZdlPv
.L117:
	movq	48(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L163
	call	_ZdlPv
	nop
.L163:
	movaps	304(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	320(%rsp), %xmm7
	movaps	336(%rsp), %xmm8
	addq	$360, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L197:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	$34, %r8d
	leaq	.LC16(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.LEHE8:
	jmp	.L108
.L198:
	pxor	%xmm6, %xmm6
	jmp	.L106
.L142:
	movq	%rax, %rbx
.L127:
	movq	144(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L129
	call	_ZdlPv
.L129:
	movq	112(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L131
	call	_ZdlPv
.L131:
	movq	80(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L133
	call	_ZdlPv
.L133:
	movq	48(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L134
	call	_ZdlPv
.L134:
	movq	%rbx, %rcx
.LEHB9:
	call	_Unwind_Resume
.LEHE9:
.L146:
	movq	272(%rsp), %rcx
	movq	%rax, %rbx
	testq	%rcx, %rcx
	je	.L121
	call	_ZdlPv
.L121:
	movq	240(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L123
	call	_ZdlPv
.L123:
	movq	208(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L125
	call	_ZdlPv
.L125:
	movq	176(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L127
	call	_ZdlPv
	jmp	.L127
.L140:
	movq	%rax, %rbx
	jmp	.L131
.L145:
	movq	%rax, %rbx
	jmp	.L121
.L144:
	movq	%rax, %rbx
	jmp	.L123
.L143:
	movq	%rax, %rbx
	jmp	.L125
.L139:
	movq	%rax, %rbx
	jmp	.L133
.L141:
	movq	%rax, %rbx
	jmp	.L129
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8313:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8313-.LLSDACSB8313
.LLSDACSB8313:
	.uleb128 .LEHB0-.LFB8313
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8313
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L139-.LFB8313
	.uleb128 0
	.uleb128 .LEHB2-.LFB8313
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L140-.LFB8313
	.uleb128 0
	.uleb128 .LEHB3-.LFB8313
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L141-.LFB8313
	.uleb128 0
	.uleb128 .LEHB4-.LFB8313
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L142-.LFB8313
	.uleb128 0
	.uleb128 .LEHB5-.LFB8313
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L143-.LFB8313
	.uleb128 0
	.uleb128 .LEHB6-.LFB8313
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L144-.LFB8313
	.uleb128 0
	.uleb128 .LEHB7-.LFB8313
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L145-.LFB8313
	.uleb128 0
	.uleb128 .LEHB8-.LFB8313
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L146-.LFB8313
	.uleb128 0
	.uleb128 .LEHB9-.LFB8313
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE8313:
	.section	.text.startup,"x"
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I__Z20generate_test_matrixPfS_i;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z20generate_test_matrixPfS_i
_GLOBAL__sub_I__Z20generate_test_matrixPfS_i:
.LFB8936:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__Z20generate_test_matrixPfS_i
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	1191181824
	.align 4
.LC3:
	.long	1120403456
	.align 16
.LC4:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC9:
	.long	0
	.long	1093567616
	.align 4
.LC14:
	.long	953267991
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	atoi;	.scl	2;	.type	32;	.endef
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZSt4cerr, "dr"
	.globl	.refptr._ZSt4cerr
	.linkonce	discard
.refptr._ZSt4cerr:
	.quad	_ZSt4cerr
