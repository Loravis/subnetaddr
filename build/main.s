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
	.file	"main.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%fs:40, %rax
	movq	%rax, 16(%rsp)
	movb	$0, 15(%rsp)
	movb	$0, 14(%rsp)
	movb	$0, 13(%rsp)
	movb	$0, 12(%rsp)
	leaq	.L.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_ZL6printfPKcU17pass_object_size1z
	leaq	15(%rsp), %rdi
	leaq	14(%rsp), %rsi
	leaq	13(%rsp), %rdx
	leaq	12(%rsp), %rcx
	callq	ip_input@PLT
	testl	%eax, %eax
	je	.LBB0_2
# %bb.1:
	leaq	.L.str.1(%rip), %rdi
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	_ZL6printfPKcU17pass_object_size1z
.LBB0_2:
	movzbl	15(%rsp), %r12d
	movzbl	14(%rsp), %r13d
	movzbl	13(%rsp), %eax
	movb	%al, 7(%rsp)                    # 1-byte Spill
	movzbl	12(%rsp), %eax
	movb	%al, 6(%rsp)                    # 1-byte Spill
	leaq	.L.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_ZL6printfPKcU17pass_object_size1z
	leaq	15(%rsp), %rdi
	leaq	14(%rsp), %rsi
	leaq	13(%rsp), %rdx
	leaq	12(%rsp), %rcx
	callq	ip_input@PLT
	testl	%eax, %eax
	je	.LBB0_4
# %bb.3:
	leaq	.L.str.1(%rip), %rdi
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	_ZL6printfPKcU17pass_object_size1z
.LBB0_4:
	movzbl	15(%rsp), %ebx
	movzbl	14(%rsp), %ebp
	movzbl	13(%rsp), %r14d
	movzbl	12(%rsp), %r15d
	movzbl	%r12b, %edi
	movzbl	%r13b, %esi
	movzbl	7(%rsp), %edx                   # 1-byte Folded Reload
	movzbl	6(%rsp), %ecx                   # 1-byte Folded Reload
	callq	addr_to_int_asm@PLT
	movl	%eax, %r12d
	movl	%ebx, %edi
	movl	%ebp, %esi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	callq	addr_to_int_asm@PLT
	movl	%r12d, %edi
	movl	%eax, %esi
	callq	calc_subnetaddr_asm@PLT
	movb	$0, 11(%rsp)
	movb	$0, 10(%rsp)
	movb	$0, 9(%rsp)
	movb	$0, 8(%rsp)
	leaq	11(%rsp), %rsi
	leaq	10(%rsp), %rdx
	leaq	9(%rsp), %rcx
	leaq	8(%rsp), %r8
	movl	%eax, %edi
	callq	int_to_addr_asm@PLT
	movzbl	11(%rsp), %edx
	movzbl	10(%rsp), %ecx
	movzbl	9(%rsp), %r8d
	movzbl	8(%rsp), %r9d
	leaq	.L.str.3(%rip), %rdi
	xorl	%eax, %eax
	callq	_ZL6printfPKcU17pass_object_size1z
	movq	%fs:40, %rax
	cmpq	16(%rsp), %rax
	jne	.LBB0_6
# %bb.5:                                # %SP_return
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_6:                                # %CallStackCheckFailBlk
	.cfi_def_cfa_offset 80
	callq	__stack_chk_fail@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	.asciz	"IP Address: "
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Error code %d\n"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Subnetmask: "
	.size	.L.str.2, 13

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%d.%d.%d.%d\n"
	.size	.L.str.3, 13

	.ident	"clang version 18.1.8"
	.section	".note.GNU-stack","",@progbits
