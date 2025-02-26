	.text
	.section	.note.gnu.property,"a",@note
	.p2align	3, 0x0
	.long	4
	.long	16
	.long	5
	.asciz	"GNU"
	.long	3221225474
	.long	4
	.long	3
	.p2align	3, 0x0
	.text
	.file	"ip_input.c"
	.globl	ip_input                        # -- Begin function ip_input
	.p2align	4, 0x90
	.type	ip_input,@function
ip_input:                               # @ip_input
	.cfi_startproc
# %bb.0:
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%fs:40, %rax
	movq	%rax, 16(%rsp)
	movw	$0, 14(%rsp)
	movw	$0, 12(%rsp)
	movw	$0, 10(%rsp)
	movw	$0, 8(%rsp)
	leaq	.L.str(%rip), %rdi
	leaq	14(%rsp), %rsi
	leaq	12(%rsp), %rdx
	leaq	10(%rsp), %rcx
	leaq	8(%rsp), %r8
	xorl	%eax, %eax
	callq	__isoc99_scanf@PLT
	movzwl	14(%rsp), %edx
	movzwl	12(%rsp), %esi
	movzwl	10(%rsp), %ecx
	movzwl	8(%rsp), %eax
	testw	%dx, %dx
	jne	.LBB0_5
# %bb.1:
	testw	%si, %si
	jne	.LBB0_5
# %bb.2:
	testw	%cx, %cx
	jne	.LBB0_5
# %bb.3:
	testw	%ax, %ax
	jne	.LBB0_5
# %bb.4:
	leaq	.L.str.1(%rip), %rdi
	xorl	%eax, %eax
	callq	_ZL6printfPKcU17pass_object_size1z
	jmp	.LBB0_11
.LBB0_5:
	movzwl	%dx, %edi
	cmpl	$255, %edi
	ja	.LBB0_10
# %bb.6:
	movzwl	%si, %edi
	cmpl	$255, %edi
	ja	.LBB0_10
# %bb.7:
	movzwl	%cx, %edi
	cmpl	$255, %edi
	ja	.LBB0_10
# %bb.8:
	movzwl	%ax, %edi
	cmpl	$256, %edi                      # imm = 0x100
	jae	.LBB0_10
# %bb.9:
	movb	%dl, (%r12)
	movb	%sil, (%r15)
	movb	%cl, (%r14)
	movb	%al, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_12
.LBB0_10:
	leaq	.L.str.2(%rip), %rdi
	movl	$255, %edx
	xorl	%eax, %eax
	callq	_ZL6printfPKcU17pass_object_size1z
.LBB0_11:
	movl	$1, %eax
.LBB0_12:
	movq	%fs:40, %rcx
	cmpq	16(%rsp), %rcx
	jne	.LBB0_14
# %bb.13:                               # %SP_return
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_14:                               # %CallStackCheckFailBlk
	.cfi_def_cfa_offset 64
	callq	__stack_chk_fail@PLT
.Lfunc_end0:
	.size	ip_input, .Lfunc_end0-ip_input
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL6printfPKcU17pass_object_size1z
	.type	_ZL6printfPKcU17pass_object_size1z,@function
_ZL6printfPKcU17pass_object_size1z:     # @_ZL6printfPKcU17pass_object_size1z
	.cfi_startproc
# %bb.0:
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	movq	%rdi, %rsi
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r9, 40(%rsp)
	testb	%al, %al
	je	.LBB1_4
# %bb.3:
	vmovaps	%xmm0, 48(%rsp)
	vmovaps	%xmm1, 64(%rsp)
	vmovaps	%xmm2, 80(%rsp)
	vmovaps	%xmm3, 96(%rsp)
	vmovaps	%xmm4, 112(%rsp)
	vmovaps	%xmm5, 128(%rsp)
	vmovaps	%xmm6, 144(%rsp)
	vmovaps	%xmm7, 160(%rsp)
.LBB1_4:
	movq	%fs:40, %rax
	movq	%rax, 208(%rsp)
	movq	%rsp, %rax
	movq	%rax, 192(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 184(%rsp)
	movabsq	$206158430224, %rax             # imm = 0x3000000010
	movq	%rax, 176(%rsp)
	leaq	176(%rsp), %rdx
	movl	$1, %edi
	callq	__vprintf_chk@PLT
	movq	%fs:40, %rax
	cmpq	208(%rsp), %rax
	jne	.LBB1_2
# %bb.1:                                # %SP_return
	addq	$216, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_2:                                # %CallStackCheckFailBlk
	.cfi_def_cfa_offset 224
	callq	__stack_chk_fail@PLT
.Lfunc_end1:
	.size	_ZL6printfPKcU17pass_object_size1z, .Lfunc_end1-_ZL6printfPKcU17pass_object_size1z
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%hu.%hu.%hu.%hu"
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Invalid input"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Invalid input; cannot process values greater than %d.\n"
	.size	.L.str.2, 55

	.ident	"clang version 18.1.8"
	.section	".note.GNU-stack","",@progbits
