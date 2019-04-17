	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$10, %ecx
	movl	%ecx, %esi
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	callq	__ZN6SeamanC1Em
Ltmp0:
	movq	-136(%rbp), %rdi        ## 8-byte Reload
	callq	__ZN6Seaman3runEv
Ltmp1:
	jmp	LBB0_1
LBB0_1:
	leaq	-112(%rbp), %rdi
	callq	__ZN6SeamanD1Ev
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdi
	jne	LBB0_5
## %bb.2:                               ## %SP_return
	xorl	%eax, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
LBB0_3:
Ltmp2:
	movl	%edx, %ecx
	movq	%rax, -120(%rbp)
	movl	%ecx, -124(%rbp)
	leaq	-112(%rbp), %rdi
	callq	__ZN6SeamanD1Ev
## %bb.4:
	movq	-120(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
LBB0_5:                                 ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	ud2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0 ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0     ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0     ## >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0            ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0     ##     jumps to Ltmp2
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0     ## >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp1       ##   Call between Ltmp1 and Lfunc_end0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN6SeamanC1Em         ## -- Begin function _ZN6SeamanC1Em
	.weak_def_can_be_hidden	__ZN6SeamanC1Em
	.p2align	4, 0x90
__ZN6SeamanC1Em:                        ## @_ZN6SeamanC1Em
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZN6SeamanC2Em
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN6Seaman3runEv       ## -- Begin function _ZN6Seaman3runEv
	.weak_definition	__ZN6Seaman3runEv
	.p2align	4, 0x90
__ZN6Seaman3runEv:                      ## @_ZN6Seaman3runEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__15mutex6unlockEv
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movb	80(%rax), %cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	LBB2_2
	jmp	LBB2_3
LBB2_2:                                 ##   in Loop: Header=BB2_1 Depth=1
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNK6Seaman8showRoadEv
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$20, -20(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-20(%rbp), %rsi
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IiEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EE
	jmp	LBB2_1
LBB2_3:
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNK6Seaman8showRoadEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN6SeamanD1Ev         ## -- Begin function _ZN6SeamanD1Ev
	.weak_def_can_be_hidden	__ZN6SeamanD1Ev
	.p2align	4, 0x90
__ZN6SeamanD1Ev:                        ## @_ZN6SeamanD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN6SeamanD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN6SeamanC2Em         ## -- Begin function _ZN6SeamanC2Em
	.weak_def_can_be_hidden	__ZN6SeamanC2Em
	.p2align	4, 0x90
__ZN6SeamanC2Em:                        ## @_ZN6SeamanC2Em
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	$0, 56(%rsi)
	movq	$0, 48(%rsi)
	movq	$0, 40(%rsi)
	movq	$0, 32(%rsi)
	movq	$0, 24(%rsi)
	movq	$0, 16(%rsi)
	movq	$0, 8(%rsi)
	movq	$0, (%rsi)
	movq	%rdi, -104(%rbp)        ## 8-byte Spill
	movq	%rsi, %rdi
	movq	%rsi, -112(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__15mutexC1Ev
	movq	-112(%rbp), %rsi        ## 8-byte Reload
	addq	$64, %rsi
Ltmp3:
	movq	-112(%rbp), %rdi        ## 8-byte Reload
	movq	%rsi, -120(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__15mutex4lockEv
Ltmp4:
	jmp	LBB4_1
LBB4_1:
	movq	__ZN6Seaman14changePositionEi@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -56(%rbp)
	movl	$1, -60(%rbp)
Ltmp5:
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rcx
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__16threadC1IM6SeamanFviEJPS2_iEvEEOT_DpOT0_
Ltmp6:
	jmp	LBB4_2
LBB4_2:
	movq	-104(%rbp), %rax        ## 8-byte Reload
	addq	$72, %rax
	movq	__ZN6Seaman14changePositionEi@GOTPCREL(%rip), %rcx
	movq	%rcx, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	-104(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -88(%rbp)
	movl	$-1, -92(%rbp)
Ltmp8:
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-92(%rbp), %rcx
	movq	%rax, %rdi
	callq	__ZNSt3__16threadC1IM6SeamanFviEJPS2_iEvEEOT_DpOT0_
Ltmp9:
	jmp	LBB4_3
LBB4_3:
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movb	$0, 80(%rax)
	movq	-16(%rbp), %rcx
	movq	%rcx, 88(%rax)
	movq	-16(%rbp), %rcx
	shrq	$1, %rcx
	movq	%rcx, 96(%rax)
	addq	$128, %rsp
	popq	%rbp
	retq
LBB4_4:
Ltmp7:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	jmp	LBB4_6
LBB4_5:
Ltmp10:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__16threadD1Ev
LBB4_6:
	movq	-112(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__15mutexD1Ev
## %bb.7:
	movq	-24(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp3-Lfunc_begin1     ## >> Call Site 1 <<
	.uleb128 Ltmp6-Ltmp3            ##   Call between Ltmp3 and Ltmp6
	.uleb128 Ltmp7-Lfunc_begin1     ##     jumps to Ltmp7
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin1     ## >> Call Site 2 <<
	.uleb128 Ltmp9-Ltmp8            ##   Call between Ltmp8 and Ltmp9
	.uleb128 Ltmp10-Lfunc_begin1    ##     jumps to Ltmp10
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin1     ## >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp9       ##   Call between Ltmp9 and Lfunc_end1
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__15mutexC1Ev
__ZNSt3__15mutexC1Ev:                   ## @_ZNSt3__15mutexC1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__15mutexC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN6Seaman14changePositionEi ## -- Begin function _ZN6Seaman14changePositionEi
	.weak_definition	__ZN6Seaman14changePositionEi
	.p2align	4, 0x90
__ZN6Seaman14changePositionEi:          ## @_ZN6Seaman14changePositionEi
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	leaq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi         ## 8-byte Reload
	callq	__ZNSt3__110lock_guardINS_5mutexEEC1ERS1_
	movq	-72(%rbp), %rsi         ## 8-byte Reload
	testb	$1, 80(%rsi)
	jne	LBB6_7
## %bb.2:                               ##   in Loop: Header=BB6_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	96(%rcx), %rdx
	addq	%rax, %rdx
	movq	%rdx, 96(%rcx)
Ltmp11:
	movq	%rcx, %rdi
	callq	__ZNK6Seaman12bandCollidedEv
Ltmp12:
	movb	%al, -73(%rbp)          ## 1-byte Spill
	jmp	LBB6_3
LBB6_3:                                 ##   in Loop: Header=BB6_1 Depth=1
	movb	-73(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB6_4
	jmp	LBB6_6
LBB6_4:                                 ##   in Loop: Header=BB6_1 Depth=1
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movb	$1, 80(%rax)
	movl	$2, -40(%rbp)
	jmp	LBB6_9
LBB6_5:
Ltmp13:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__110lock_guardINS_5mutexEED1Ev
	jmp	LBB6_12
LBB6_6:                                 ##   in Loop: Header=BB6_1 Depth=1
	jmp	LBB6_8
LBB6_7:                                 ##   in Loop: Header=BB6_1 Depth=1
	movl	$2, -40(%rbp)
	jmp	LBB6_9
LBB6_8:                                 ##   in Loop: Header=BB6_1 Depth=1
	movl	$0, -40(%rbp)
LBB6_9:                                 ##   in Loop: Header=BB6_1 Depth=1
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__110lock_guardINS_5mutexEED1Ev
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	je	LBB6_10
	jmp	LBB6_14
LBB6_14:
	movl	-80(%rbp), %eax         ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	je	LBB6_11
	jmp	LBB6_13
LBB6_10:                                ##   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	imull	$5, -12(%rbp), %eax
	movl	%eax, -60(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IiEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	movq	__ZN6Seaman9SleepTimeE@GOTPCREL(%rip), %rdi
	leaq	-56(%rbp), %rsi
	callq	__ZNSt3__16chronomiIxNS_5ratioILl1ELl1000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EE
	jmp	LBB6_1
LBB6_11:
	addq	$96, %rsp
	popq	%rbp
	retq
LBB6_12:
	movq	-32(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
LBB6_13:
	ud2
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2 ## >> Call Site 1 <<
	.uleb128 Ltmp11-Lfunc_begin2    ##   Call between Lfunc_begin2 and Ltmp11
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin2    ## >> Call Site 2 <<
	.uleb128 Ltmp12-Ltmp11          ##   Call between Ltmp11 and Ltmp12
	.uleb128 Ltmp13-Lfunc_begin2    ##     jumps to Ltmp13
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin2    ## >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp12      ##   Call between Ltmp12 and Lfunc_end2
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end2:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16threadC1IM6SeamanFviEJPS2_iEvEEOT_DpOT0_ ## -- Begin function _ZNSt3__16threadC1IM6SeamanFviEJPS2_iEvEEOT_DpOT0_
	.globl	__ZNSt3__16threadC1IM6SeamanFviEJPS2_iEvEEOT_DpOT0_
	.weak_def_can_be_hidden	__ZNSt3__16threadC1IM6SeamanFviEJPS2_iEvEEOT_DpOT0_
	.p2align	4, 0x90
__ZNSt3__16threadC1IM6SeamanFviEJPS2_iEvEEOT_DpOT0_: ## @_ZNSt3__16threadC1IM6SeamanFviEJPS2_iEvEEOT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	__ZNSt3__16threadC2IM6SeamanFviEJPS2_iEvEEOT_DpOT0_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__15mutexC2Ev
__ZNSt3__15mutexC2Ev:                   ## @_ZNSt3__15mutexC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movl	$56, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$850045863, (%rdi)      ## imm = 0x32AAABA7
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movq	%rcx, %rdi
	callq	_memset
	movq	-16(%rbp), %rcx         ## 8-byte Reload
	movb	$0, 8(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110lock_guardINS_5mutexEEC1ERS1_
__ZNSt3__110lock_guardINS_5mutexEEC1ERS1_: ## @_ZNSt3__110lock_guardINS_5mutexEEC1ERS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__110lock_guardINS_5mutexEEC2ERS1_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNK6Seaman12bandCollidedEv ## -- Begin function _ZNK6Seaman12bandCollidedEv
	.weak_definition	__ZNK6Seaman12bandCollidedEv
	.p2align	4, 0x90
__ZNK6Seaman12bandCollidedEv:           ## @_ZNK6Seaman12bandCollidedEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 96(%rdi)
	movb	$1, %al
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movb	%al, -17(%rbp)          ## 1-byte Spill
	je	LBB10_2
## %bb.1:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	96(%rax), %rcx
	movq	88(%rax), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rcx
	sete	%sil
	movb	%sil, -17(%rbp)         ## 1-byte Spill
LBB10_2:
	movb	-17(%rbp), %al          ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110lock_guardINS_5mutexEED1Ev
__ZNSt3__110lock_guardINS_5mutexEED1Ev: ## @_ZNSt3__110lock_guardINS_5mutexEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110lock_guardINS_5mutexEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EE ## -- Begin function _ZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EE
	.weak_definition	__ZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EE
	.p2align	4, 0x90
__ZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EE: ## @_ZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE4zeroEv
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	leaq	-16(%rbp), %rsi
	callq	__ZNSt3__16chronogtIxNS_5ratioILl1ELl1000EEExS3_EEbRKNS0_8durationIT_T0_EERKNS4_IT1_T2_EE
	testb	$1, %al
	jne	LBB12_1
	jmp	LBB12_7
LBB12_1:
	movq	-8(%rbp), %rdi
	leaq	__ZZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EEE4_Max(%rip), %rsi
	callq	__ZNSt3__16chronoltIxNS_5ratioILl1ELl1000EEEeNS2_ILl1ELl1EEEEEbRKNS0_8durationIT_T0_EERKNS5_IT1_T2_EE
	testb	$1, %al
	jne	LBB12_2
	jmp	LBB12_5
LBB12_2:
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExNS3_ILl1ELl1000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16chronoltIxNS_5ratioILl1ELl1000000000EEExNS2_ILl1ELl1000EEEEEbRKNS0_8durationIT_T0_EERKNS5_IT1_T2_EE
	testb	$1, %al
	jne	LBB12_3
	jmp	LBB12_4
LBB12_3:
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEv
	movq	%rax, -56(%rbp)         ## 8-byte Spill
LBB12_4:
	jmp	LBB12_6
LBB12_5:
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3maxEv
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
LBB12_6:
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__111this_thread9sleep_forERKNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEE
LBB12_7:
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chronomiIxNS_5ratioILl1ELl1000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
__ZNSt3__16chronomiIxNS_5ratioILl1ELl1000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_: ## @_ZNSt3__16chronomiIxNS_5ratioILl1ELl1000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	leaq	-40(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	leaq	-48(%rbp), %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	subq	%rax, %rsi
	movq	%rsi, -32(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IiEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IiEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IiEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IiEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110lock_guardINS_5mutexEEC2ERS1_
__ZNSt3__110lock_guardINS_5mutexEEC2ERS1_: ## @_ZNSt3__110lock_guardINS_5mutexEEC2ERS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, (%rsi)
	movq	(%rsi), %rdi
	callq	__ZNSt3__15mutex4lockEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110lock_guardINS_5mutexEED2Ev
__ZNSt3__110lock_guardINS_5mutexEED2Ev: ## @_ZNSt3__110lock_guardINS_5mutexEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	__ZNSt3__15mutex6unlockEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chronogtIxNS_5ratioILl1ELl1000EEExS3_EEbRKNS0_8durationIT_T0_EERKNS4_IT1_T2_EE
__ZNSt3__16chronogtIxNS_5ratioILl1ELl1000EEExS3_EEbRKNS0_8durationIT_T0_EERKNS4_IT1_T2_EE: ## @_ZNSt3__16chronogtIxNS_5ratioILl1ELl1000EEExS3_EEbRKNS0_8durationIT_T0_EERKNS4_IT1_T2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	__ZNSt3__16chronoltIxNS_5ratioILl1ELl1000EEExS3_EEbRKNS0_8durationIT_T0_EERKNS4_IT1_T2_EE
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE4zeroEv
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE4zeroEv: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE4zeroEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	__ZNSt3__16chrono15duration_valuesIxE4zeroEv
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chronoltIxNS_5ratioILl1ELl1000EEEeNS2_ILl1ELl1EEEEEbRKNS0_8durationIT_T0_EERKNS5_IT1_T2_EE
__ZNSt3__16chronoltIxNS_5ratioILl1ELl1000EEEeNS2_ILl1ELl1EEEEEbRKNS0_8durationIT_T0_EERKNS5_IT1_T2_EE: ## @_ZNSt3__16chronoltIxNS_5ratioILl1ELl1000EEEeNS2_ILl1ELl1EEEEEbRKNS0_8durationIT_T0_EERKNS5_IT1_T2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rdi
	callq	__ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeNS3_ILl1ELl1EEEEEEclERKS5_RKS7_
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExNS3_ILl1ELl1000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
__ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExNS3_ILl1ELl1000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE: ## @_ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExNS3_ILl1ELl1000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdi
	callq	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IxNS3_ILl1ELl1000000000EEEEENS3_ILl1000000ELl1EEELb0ELb1EEclERKS5_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chronoltIxNS_5ratioILl1ELl1000000000EEExNS2_ILl1ELl1000EEEEEbRKNS0_8durationIT_T0_EERKNS5_IT1_T2_EE
__ZNSt3__16chronoltIxNS_5ratioILl1ELl1000000000EEExNS2_ILl1ELl1000EEEEEbRKNS0_8durationIT_T0_EERKNS5_IT1_T2_EE: ## @_ZNSt3__16chronoltIxNS_5ratioILl1ELl1000000000EEExNS2_ILl1ELl1000EEEEEbRKNS0_8durationIT_T0_EERKNS5_IT1_T2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rdi
	callq	__ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEEEclERKS5_RKS7_
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEv
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEv: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEppEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	addq	$1, %rax
	movq	%rax, (%rdi)
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3maxEv
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3maxEv: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE3maxEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	__ZNSt3__16chrono15duration_valuesIxE3maxEv
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chronoltIxNS_5ratioILl1ELl1000EEExS3_EEbRKNS0_8durationIT_T0_EERKNS4_IT1_T2_EE
__ZNSt3__16chronoltIxNS_5ratioILl1ELl1000EEExS3_EEbRKNS0_8durationIT_T0_EERKNS4_IT1_T2_EE: ## @_ZNSt3__16chronoltIxNS_5ratioILl1ELl1000EEExS3_EEbRKNS0_8durationIT_T0_EERKNS4_IT1_T2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rdi
	callq	__ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEES5_EclERKS5_S8_
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEES5_EclERKS5_S8_
__ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEES5_EclERKS5_S8_: ## @_ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEES5_EclERKS5_S8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv
	movq	-32(%rbp), %rdx         ## 8-byte Reload
	cmpq	%rax, %rdx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv: ## @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono15duration_valuesIxE4zeroEv
__ZNSt3__16chrono15duration_valuesIxE4zeroEv: ## @_ZNSt3__16chrono15duration_valuesIxE4zeroEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rdx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeNS3_ILl1ELl1EEEEEEclERKS5_RKS7_
__ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeNS3_ILl1ELl1EEEEEEclERKS5_RKS7_: ## @_ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeNS3_ILl1ELl1EEEEEEclERKS5_RKS7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-48(%rbp), %rdi
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	movq	%rdx, -80(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IxS3_EERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS7_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS7_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEE5countEv
	movq	-24(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rdi
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	movq	%rdx, -88(%rbp)         ## 8-byte Spill
	movq	%rcx, %rdx
	fstpt	-100(%rbp)              ## 10-byte Folded Spill
	callq	__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IeNS2_ILl1ELl1EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEE5countEv
	fldt	-100(%rbp)              ## 10-byte Folded Reload
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	seta	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IxS3_EERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS7_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS7_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IxS3_EERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS7_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS7_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IxS3_EERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS7_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS7_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IxS3_EERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS7_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS7_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEE5countEv
__ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEE5countEv: ## @_ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEE5countEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	fldt	(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IeNS2_ILl1ELl1EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IeNS2_ILl1ELl1EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IeNS2_ILl1ELl1EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IeNS2_ILl1ELl1EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IxS3_EERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS7_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS7_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IxS3_EERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS7_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS7_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IxS3_EERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS7_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS7_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdx, -56(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__16chronoL13duration_castINS0_8durationIeNS_5ratioILl1ELl1000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE
	fstpt	-48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEE5countEv
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	fstpt	(%rdx)
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chronoL13duration_castINS0_8durationIeNS_5ratioILl1ELl1000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE
__ZNSt3__16chronoL13duration_castINS0_8durationIeNS_5ratioILl1ELl1000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE: ## @_ZNSt3__16chronoL13duration_castINS0_8durationIeNS_5ratioILl1ELl1000EEEEExS4_EENS_9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS2_IT0_T1_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	callq	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeS4_EENS3_ILl1ELl1EEELb1ELb1EEclERKS5_
	fstpt	-16(%rbp)
	fldt	-16(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeS4_EENS3_ILl1ELl1EEELb1ELb1EEclERKS5_
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeS4_EENS3_ILl1ELl1EEELb1ELb1EEclERKS5_: ## @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IeS4_EENS3_ILl1ELl1EEELb1ELb1EEclERKS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv
	movq	%rax, -56(%rbp)
	fildll	-56(%rbp)
	fstpt	-48(%rbp)
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-16(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IeEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_eEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	fldt	-16(%rbp)
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IeEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_eEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IeEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_eEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IeEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_eEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IeEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_eEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IeEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_eEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IeEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_eEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IeEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_eEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	fldt	(%rsi)
	fstpt	(%rdx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IeNS2_ILl1ELl1EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IeNS2_ILl1ELl1EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC2IeNS2_ILl1ELl1EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdx, -56(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__16chronoL13duration_castINS0_8durationIeNS_5ratioILl1ELl1000EEEEEeNS3_ILl1ELl1EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	fstpt	-48(%rbp)
	leaq	-48(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEE5countEv
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	fstpt	(%rdx)
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chronoL13duration_castINS0_8durationIeNS_5ratioILl1ELl1000EEEEEeNS3_ILl1ELl1EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
__ZNSt3__16chronoL13duration_castINS0_8durationIeNS_5ratioILl1ELl1000EEEEEeNS3_ILl1ELl1EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE: ## @_ZNSt3__16chronoL13duration_castINS0_8durationIeNS_5ratioILl1ELl1000EEEEEeNS3_ILl1ELl1EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	callq	__ZNKSt3__16chrono15__duration_castINS0_8durationIeNS_5ratioILl1ELl1EEEEENS2_IeNS3_ILl1ELl1000EEEEENS3_ILl1000ELl1EEELb0ELb1EEclERKS5_
	fstpt	-16(%rbp)
	fldt	-16(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIeNS_5ratioILl1ELl1EEEEENS2_IeNS3_ILl1ELl1000EEEEENS3_ILl1000ELl1EEELb0ELb1EEclERKS5_
LCPI41_0:
	.long	1148846080              ## float 1000
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
__ZNKSt3__16chrono15__duration_castINS0_8durationIeNS_5ratioILl1ELl1EEEEENS2_IeNS3_ILl1ELl1000EEEEENS3_ILl1000ELl1EEELb0ELb1EEclERKS5_: ## @_ZNKSt3__16chrono15__duration_castINS0_8durationIeNS_5ratioILl1ELl1EEEEENS2_IeNS3_ILl1ELl1000EEEEENS3_ILl1000ELl1EEELb0ELb1EEclERKS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEE5countEv
	flds	LCPI41_0(%rip)
	fmulp	%st(1)
	fstpt	-48(%rbp)
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	__ZNSt3__16chrono8durationIeNS_5ratioILl1ELl1000EEEEC1IeEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_eEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	fldt	-16(%rbp)
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEE5countEv
__ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEE5countEv: ## @_ZNKSt3__16chrono8durationIeNS_5ratioILl1ELl1EEEE5countEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	fldt	(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IxNS3_ILl1ELl1000000000EEEEENS3_ILl1000000ELl1EEELb0ELb1EEclERKS5_
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IxNS3_ILl1ELl1000000000EEEEENS3_ILl1000000ELl1EEELb0ELb1EEclERKS5_: ## @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000EEEEENS2_IxNS3_ILl1ELl1000000000EEEEENS3_ILl1000000ELl1EEELb0ELb1EEclERKS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEE5countEv
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	imulq	$1000000, %rax, %rax    ## imm = 0xF4240
	movq	%rax, -32(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rdx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEEEclERKS5_RKS7_
__ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEEEclERKS5_RKS7_: ## @_ZNKSt3__16chrono13__duration_ltINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IxNS3_ILl1ELl1000EEEEEEclERKS5_RKS7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	leaq	-32(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxNS2_ILl1ELl1000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	leaq	-40(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	cmpq	%rax, %rdx
	setl	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv: ## @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxNS2_ILl1ELl1000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxNS2_ILl1ELl1000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxNS2_ILl1ELl1000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxNS2_ILl1ELl1000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxNS2_ILl1ELl1000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxNS2_ILl1ELl1000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxNS2_ILl1ELl1000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdx, -40(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__16chronoL13duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEExNS3_ILl1ELl1000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	movq	-40(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, (%rdx)
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono15duration_valuesIxE3maxEv
__ZNSt3__16chrono15duration_valuesIxE3maxEv: ## @_ZNSt3__16chrono15duration_valuesIxE3maxEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__114numeric_limitsIxE3maxEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114numeric_limitsIxE3maxEv
__ZNSt3__114numeric_limitsIxE3maxEv:    ## @_ZNSt3__114numeric_limitsIxE3maxEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxEv
__ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxEv: ## @_ZNSt3__123__libcpp_numeric_limitsIxLb1EE3maxEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$9223372036854775807, %rax ## imm = 0x7FFFFFFFFFFFFFFF
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IiEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IiEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000EEEEC2IiEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	%rsi, (%rdx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZNSt3__16threadC2IM6SeamanFviEJPS2_iEvEEOT_DpOT0_ ## -- Begin function _ZNSt3__16threadC2IM6SeamanFviEJPS2_iEvEEOT_DpOT0_
	.globl	__ZNSt3__16threadC2IM6SeamanFviEJPS2_iEvEEOT_DpOT0_
	.weak_def_can_be_hidden	__ZNSt3__16threadC2IM6SeamanFviEJPS2_iEvEEOT_DpOT0_
	.p2align	4, 0x90
__ZNSt3__16threadC2IM6SeamanFviEJPS2_iEvEEOT_DpOT0_: ## @_ZNSt3__16threadC2IM6SeamanFviEJPS2_iEvEEOT_DpOT0_
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rdi, -104(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	callq	__Znwm
	movq	%rax, %rcx
	movq	%rax, %rdx
Ltmp14:
	movq	%rax, %rdi
	movq	%rdx, -112(%rbp)        ## 8-byte Spill
	movq	%rcx, -120(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__115__thread_structC1Ev
Ltmp15:
	jmp	LBB54_1
LBB54_1:
	leaq	-40(%rbp), %rdi
	movq	-112(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_
Ltmp17:
	movl	$40, %eax
	movl	%eax, %edi
	callq	__Znwm
Ltmp18:
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	jmp	LBB54_2
LBB54_2:
	movq	-128(%rbp), %rax        ## 8-byte Reload
	leaq	-40(%rbp), %rdi
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__1L4moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIM6SeamanFviEEEOT_RNS_16remove_referenceIS4_E4typeE
Ltmp20:
	movq	%rax, %rdi
	callq	__ZNSt3__1L12__decay_copyIM6SeamanFviEEENS_5decayIT_E4typeEOS5_
Ltmp21:
	movq	%rdx, -152(%rbp)        ## 8-byte Spill
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	jmp	LBB54_3
LBB54_3:
	movq	-160(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIP6SeamanEEOT_RNS_16remove_referenceIS3_E4typeE
Ltmp22:
	movq	%rax, %rdi
	callq	__ZNSt3__1L12__decay_copyIP6SeamanEENS_5decayIT_E4typeEOS4_
Ltmp23:
	movq	%rax, -168(%rbp)        ## 8-byte Spill
	jmp	LBB54_4
LBB54_4:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
Ltmp24:
	movq	%rax, %rdi
	callq	__ZNSt3__1L12__decay_copyIiEENS_5decayIT_E4typeEOS2_
Ltmp25:
	movl	%eax, -172(%rbp)        ## 4-byte Spill
	jmp	LBB54_5
LBB54_5:
	movl	-172(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -92(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-92(%rbp), %r8
	movq	-136(%rbp), %rdi        ## 8-byte Reload
	movq	-144(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEC1IJS5_S8_S9_iELb0ELb0EEEDpOT_
	leaq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movq	-136(%rbp), %rsi        ## 8-byte Reload
	movq	%rcx, -184(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEC1ILb1EvEEPSA_
	movq	-184(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEE3getEv
Ltmp27:
	movq	__ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEEEEPvSC_@GOTPCREL(%rip), %rsi
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__1L22__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_
Ltmp28:
	movl	%eax, -188(%rbp)        ## 4-byte Spill
	jmp	LBB54_6
LBB54_6:
	movl	-188(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jne	LBB54_12
## %bb.7:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEE7releaseEv
	movq	%rax, -200(%rbp)        ## 8-byte Spill
	jmp	LBB54_14
LBB54_8:
Ltmp16:
	movl	%edx, %ecx
	movq	%rax, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	callq	__ZdlPv
	jmp	LBB54_16
LBB54_9:
Ltmp19:
	movl	%edx, %ecx
	movq	%rax, -48(%rbp)
	movl	%ecx, -52(%rbp)
	jmp	LBB54_15
LBB54_10:
Ltmp26:
	movl	%edx, %ecx
	movq	%rax, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	-128(%rbp), %rdi        ## 8-byte Reload
	callq	__ZdlPv
	jmp	LBB54_15
LBB54_11:
Ltmp31:
	movl	%edx, %ecx
	movq	%rax, -48(%rbp)
	movl	%ecx, -52(%rbp)
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEED1Ev
	jmp	LBB54_15
LBB54_12:
	movl	-96(%rbp), %edi
Ltmp29:
	leaq	L_.str(%rip), %rsi
	callq	__ZNSt3__120__throw_system_errorEiPKc
Ltmp30:
	jmp	LBB54_13
LBB54_13:
	ud2
LBB54_14:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEED1Ev
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
	addq	$208, %rsp
	popq	%rbp
	retq
LBB54_15:
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
LBB54_16:
	movq	-48(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table54:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3 ## >> Call Site 1 <<
	.uleb128 Ltmp14-Lfunc_begin3    ##   Call between Lfunc_begin3 and Ltmp14
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp14-Lfunc_begin3    ## >> Call Site 2 <<
	.uleb128 Ltmp15-Ltmp14          ##   Call between Ltmp14 and Ltmp15
	.uleb128 Ltmp16-Lfunc_begin3    ##     jumps to Ltmp16
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin3    ## >> Call Site 3 <<
	.uleb128 Ltmp18-Ltmp17          ##   Call between Ltmp17 and Ltmp18
	.uleb128 Ltmp19-Lfunc_begin3    ##     jumps to Ltmp19
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin3    ## >> Call Site 4 <<
	.uleb128 Ltmp25-Ltmp20          ##   Call between Ltmp20 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin3    ##     jumps to Ltmp26
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin3    ## >> Call Site 5 <<
	.uleb128 Ltmp30-Ltmp27          ##   Call between Ltmp27 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin3    ##     jumps to Ltmp31
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin3    ## >> Call Site 6 <<
	.uleb128 Lfunc_end3-Ltmp30      ##   Call between Ltmp30 and Lfunc_end3
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end3:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_
__ZNSt3__1L4moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_: ## @_ZNSt3__1L4moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L12__decay_copyIM6SeamanFviEEENS_5decayIT_E4typeEOS5_
__ZNSt3__1L12__decay_copyIM6SeamanFviEEENS_5decayIT_E4typeEOS5_: ## @_ZNSt3__1L12__decay_copyIM6SeamanFviEEENS_5decayIT_E4typeEOS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIM6SeamanFviEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	(%rax), %rdi
	movq	8(%rax), %rdx
	movq	%rdi, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardIM6SeamanFviEEEOT_RNS_16remove_referenceIS4_E4typeE
__ZNSt3__1L7forwardIM6SeamanFviEEEOT_RNS_16remove_referenceIS4_E4typeE: ## @_ZNSt3__1L7forwardIM6SeamanFviEEEOT_RNS_16remove_referenceIS4_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L12__decay_copyIP6SeamanEENS_5decayIT_E4typeEOS4_
__ZNSt3__1L12__decay_copyIP6SeamanEENS_5decayIT_E4typeEOS4_: ## @_ZNSt3__1L12__decay_copyIP6SeamanEENS_5decayIT_E4typeEOS4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIP6SeamanEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardIP6SeamanEEOT_RNS_16remove_referenceIS3_E4typeE
__ZNSt3__1L7forwardIP6SeamanEEOT_RNS_16remove_referenceIS3_E4typeE: ## @_ZNSt3__1L7forwardIP6SeamanEEOT_RNS_16remove_referenceIS3_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L12__decay_copyIiEENS_5decayIT_E4typeEOS2_
__ZNSt3__1L12__decay_copyIiEENS_5decayIT_E4typeEOS2_: ## @_ZNSt3__1L12__decay_copyIiEENS_5decayIT_E4typeEOS2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	movl	(%rax), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE: ## @_ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEC1IJS5_S8_S9_iELb0ELb0EEEDpOT_
__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEC1IJS5_S8_S9_iELb0ELb0EEEDpOT_: ## @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEC1IJS5_S8_S9_iELb0ELb0EEEDpOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEC2IJS5_S8_S9_iELb0ELb0EEEDpOT_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEC1ILb1EvEEPSA_
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEC1ILb1EvEEPSA_: ## @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEC1ILb1EvEEPSA_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEC2ILb1EvEEPSA_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L22__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_
__ZNSt3__1L22__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_: ## @_ZNSt3__1L22__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	movq	%rcx, %rsi
	movq	-32(%rbp), %rcx         ## 8-byte Reload
	callq	_pthread_create
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEEEEPvSC_ ## -- Begin function _ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEEEEPvSC_
	.weak_definition	__ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEEEEPvSC_
	.p2align	4, 0x90
__ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEEEEPvSC_: ## @_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEEEEPvSC_
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEC1ILb1EvEEPSA_
Ltmp32:
	callq	__ZNSt3__119__thread_local_dataEv
Ltmp33:
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	jmp	LBB66_1
LBB66_1:
Ltmp34:
	leaq	-16(%rbp), %rdi
	callq	__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEdeEv
Ltmp35:
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	jmp	LBB66_2
LBB66_2:
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__1L3getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_
	movq	%rax, %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv
Ltmp36:
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_
Ltmp37:
	jmp	LBB66_3
LBB66_3:
Ltmp38:
	leaq	-16(%rbp), %rdi
	callq	__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEdeEv
Ltmp39:
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	jmp	LBB66_4
LBB66_4:
Ltmp40:
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__1L16__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEJPS6_iEJLm2ELm3EEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE
Ltmp41:
	jmp	LBB66_5
LBB66_5:
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEED1Ev
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB66_6:
Ltmp42:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEED1Ev
## %bb.7:
	movq	-24(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table66:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp32-Lfunc_begin4    ## >> Call Site 1 <<
	.uleb128 Ltmp41-Ltmp32          ##   Call between Ltmp32 and Ltmp41
	.uleb128 Ltmp42-Lfunc_begin4    ##     jumps to Ltmp42
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin4    ## >> Call Site 2 <<
	.uleb128 Lfunc_end4-Ltmp41      ##   Call between Ltmp41 and Lfunc_end4
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end4:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEE3getEv
__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEE3getEv: ## @_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEE3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE5firstEv
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEE7releaseEv
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEE7releaseEv: ## @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEE7releaseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE5firstEv
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE5firstEv
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEED1Ev
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEED1Ev: ## @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
Ltmp43:
	leaq	-16(%rbp), %rsi
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_Lb1EEEOT_
Ltmp44:
	jmp	LBB71_1
LBB71_1:
	addq	$32, %rsp
	popq	%rbp
	retq
LBB71_2:
Ltmp45:
	movq	%rax, %rdi
	movq	%rdx, -24(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table71:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp43-Lfunc_begin5    ## >> Call Site 1 <<
	.uleb128 Ltmp44-Ltmp43          ##   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp45-Lfunc_begin5    ##     jumps to Ltmp45
	.byte	1                       ##   On action: 1
Lcst_end5:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_Lb1EEEOT_
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_Lb1EEEOT_: ## @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_Lb1EEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_Lb1EEEOT_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	pushq	%rax
	callq	___cxa_begin_catch
	movq	%rax, (%rsp)            ## 8-byte Spill
	callq	__ZSt9terminatev
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_Lb1EEEOT_
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_Lb1EEEOT_: ## @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_Lb1EEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE
__ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE: ## @_ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEC2IJS5_S8_S9_iELb0ELb0EEEDpOT_
__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEC2IJS5_S8_S9_iELb0ELb0EEEDpOT_: ## @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEC2IJS5_S8_S9_iELb0ELb0EEEDpOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movq	%rcx, %rdi
	callq	__ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	movq	-24(%rbp), %rdi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIM6SeamanFviEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	-32(%rbp), %rdi
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIP6SeamanEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	-40(%rbp), %rdi
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movq	-88(%rbp), %rsi         ## 8-byte Reload
	movq	-96(%rbp), %rdx         ## 8-byte Reload
	movq	-104(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, %r8
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEEC1IJLm0ELm1ELm2ELm3EEJS7_SA_SB_iEJEJEJS7_SA_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
__ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE: ## @_ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEEC1IJLm0ELm1ELm2ELm3EEJS7_SA_SB_iEJEJEJS7_SA_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEEC1IJLm0ELm1ELm2ELm3EEJS7_SA_SB_iEJEJEJS7_SA_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_: ## @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEEC1IJLm0ELm1ELm2ELm3EEJS7_SA_SB_iEJEJEJS7_SA_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %r8
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEEC2IJLm0ELm1ELm2ELm3EEJS7_SA_SB_iEJEJEJS7_SA_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEEC2IJLm0ELm1ELm2ELm3EEJS7_SA_SB_iEJEJEJS7_SA_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEEC2IJLm0ELm1ELm2ELm3EEJS7_SA_SB_iEJEJEJS7_SA_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_: ## @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEEC2IJLm0ELm1ELm2ELm3EEJS7_SA_SB_iEJEJEJS7_SA_SB_iEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	movq	-48(%rbp), %rdi
	movq	%rcx, -80(%rbp)         ## 8-byte Spill
	movq	%rdx, -88(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_
	movq	-80(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIM6SeamanFviEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	-96(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__112__tuple_leafILm1EM6SeamanFviELb0EEC2IS3_vEEOT_
	movq	-80(%rbp), %rax         ## 8-byte Reload
	addq	$24, %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIP6SeamanEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__112__tuple_leafILm2EP6SeamanLb0EEC2IS2_vEEOT_
	movq	-80(%rbp), %rax         ## 8-byte Reload
	addq	$32, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	-112(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__112__tuple_leafILm3EiLb0EEC2IivEEOT_
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_
__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_: ## @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	callq	__ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_leafILm1EM6SeamanFviELb0EEC2IS3_vEEOT_
__ZNSt3__112__tuple_leafILm1EM6SeamanFviELb0EEC2IS3_vEEOT_: ## @_ZNSt3__112__tuple_leafILm1EM6SeamanFviELb0EEC2IS3_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIM6SeamanFviEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	(%rax), %rsi
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, 8(%rdi)
	movq	%rsi, (%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_leafILm2EP6SeamanLb0EEC2IS2_vEEOT_
__ZNSt3__112__tuple_leafILm2EP6SeamanLb0EEC2IS2_vEEOT_: ## @_ZNSt3__112__tuple_leafILm2EP6SeamanLb0EEC2IS2_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIP6SeamanEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_leafILm3EiLb0EEC2IivEEOT_
__ZNSt3__112__tuple_leafILm3EiLb0EEC2IivEEOT_: ## @_ZNSt3__112__tuple_leafILm3EiLb0EEC2IivEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax         ## 8-byte Reload
	movl	%ecx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv
	movq	%rax, %rdi
	callq	__ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
Ltmp46:
	leaq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_
Ltmp47:
	jmp	LBB86_1
LBB86_1:
	addq	$48, %rsp
	popq	%rbp
	retq
LBB86_2:
Ltmp48:
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table86:
Lexception6:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp46-Lfunc_begin6    ## >> Call Site 1 <<
	.uleb128 Ltmp47-Ltmp46          ##   Call between Ltmp46 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin6    ##     jumps to Ltmp48
	.byte	1                       ##   On action: 1
Lcst_end6:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase1:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
__ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE: ## @_ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv: ## @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv: ## @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdx, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, -40(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE
__ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE: ## @_ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_
__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEC2ILb1EvEEPSA_
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEC2ILb1EvEEPSA_: ## @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEC2ILb1EvEEPSA_
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
Ltmp49:
	leaq	-16(%rbp), %rsi
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEEC1IRSC_Lb1EEEOT_
Ltmp50:
	jmp	LBB99_1
LBB99_1:
	addq	$32, %rsp
	popq	%rbp
	retq
LBB99_2:
Ltmp51:
	movq	%rax, %rdi
	movq	%rdx, -24(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table99:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp49-Lfunc_begin7    ## >> Call Site 1 <<
	.uleb128 Ltmp50-Ltmp49          ##   Call between Ltmp49 and Ltmp50
	.uleb128 Ltmp51-Lfunc_begin7    ##     jumps to Ltmp51
	.byte	1                       ##   On action: 1
Lcst_end7:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase2:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEEC1IRSC_Lb1EEEOT_
__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEEC1IRSC_Lb1EEEOT_: ## @_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEEC1IRSC_Lb1EEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEEC2IRSC_Lb1EEEOT_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEEC2IRSC_Lb1EEEOT_
__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEEC2IRSC_Lb1EEEOT_: ## @_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEEC2IRSC_Lb1EEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEEEEOT_RNS_16remove_referenceISE_E4typeE
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEELi0ELb0EEC2IRSC_vEEOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEEEEOT_RNS_16remove_referenceISE_E4typeE
__ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEEEEOT_RNS_16remove_referenceISE_E4typeE: ## @_ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEEEEOT_RNS_16remove_referenceISE_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEELi0ELb0EEC2IRSC_vEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEELi0ELb0EEC2IRSC_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEELi0ELb0EEC2IRSC_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEEEEOT_RNS_16remove_referenceISE_E4typeE
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_ ## -- Begin function _ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_
	.weak_definition	__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_
	.p2align	4, 0x90
__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_: ## @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__1L16__libcpp_tls_setEmPv
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L3getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_
__ZNSt3__1L3getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_: ## @_ZNSt3__1L3getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEdeEv
__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEdeEv: ## @_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEEdeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE5firstEv
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L16__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEJPS6_iEJLm2ELm3EEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE
__ZNSt3__1L16__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEJPS6_iEJLm2ELm3EEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE: ## @_ZNSt3__1L16__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEJPS6_iEJLm2ELm3EEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L3getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_
	movq	%rax, %rdi
	callq	__ZNSt3__1L4moveIRM6SeamanFviEEEONS_16remove_referenceIT_E4typeEOS6_
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L3getILm2EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_
	movq	%rax, %rdi
	callq	__ZNSt3__1L4moveIRP6SeamanEEONS_16remove_referenceIT_E4typeEOS5_
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L3getILm3EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_
	movq	%rax, %rdi
	callq	__ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__1L8__invokeIM6SeamanFviEPS1_JiEvEEDTcldsdeclsr3std3__1E7forwardIT0_Efp0_Efp_spclsr3std3__1E7forwardIT1_Efp1_EEEOT_OS5_DpOS6_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L16__libcpp_tls_setEmPv
__ZNSt3__1L16__libcpp_tls_setEmPv:      ## @_ZNSt3__1L16__libcpp_tls_setEmPv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_pthread_setspecific
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv
__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv: ## @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE5firstEv
__ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE5firstEv: ## @_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEELi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L8__invokeIM6SeamanFviEPS1_JiEvEEDTcldsdeclsr3std3__1E7forwardIT0_Efp0_Efp_spclsr3std3__1E7forwardIT1_Efp1_EEEOT_OS5_DpOS6_
__ZNSt3__1L8__invokeIM6SeamanFviEPS1_JiEvEEDTcldsdeclsr3std3__1E7forwardIT0_Efp0_Efp_spclsr3std3__1E7forwardIT1_Efp1_EEEOT_OS5_DpOS6_: ## @_ZNSt3__1L8__invokeIM6SeamanFviEPS1_JiEvEEDTcldsdeclsr3std3__1E7forwardIT0_Efp0_Efp_spclsr3std3__1E7forwardIT1_Efp1_EEEOT_OS5_DpOS6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIP6SeamanEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	8(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rsi, %rdx
	andq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	je	LBB112_2
## %bb.1:
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rcx
	movq	-32(%rbp), %rdx         ## 8-byte Reload
	subq	$1, %rdx
	movq	(%rcx,%rdx), %rcx
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	jmp	LBB112_3
LBB112_2:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -48(%rbp)         ## 8-byte Spill
LBB112_3:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIiEEOT_RNS_16remove_referenceIS1_E4typeE
	movl	(%rax), %esi
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	-56(%rbp), %rax         ## 8-byte Reload
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4moveIRM6SeamanFviEEEONS_16remove_referenceIT_E4typeEOS6_
__ZNSt3__1L4moveIRM6SeamanFviEEEONS_16remove_referenceIT_E4typeEOS6_: ## @_ZNSt3__1L4moveIRM6SeamanFviEEEONS_16remove_referenceIT_E4typeEOS6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L3getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_
__ZNSt3__1L3getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_: ## @_ZNSt3__1L3getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	__ZNSt3__112__tuple_leafILm1EM6SeamanFviELb0EE3getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4moveIRP6SeamanEEONS_16remove_referenceIT_E4typeEOS5_
__ZNSt3__1L4moveIRP6SeamanEEONS_16remove_referenceIT_E4typeEOS5_: ## @_ZNSt3__1L4moveIRP6SeamanEEONS_16remove_referenceIT_E4typeEOS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L3getILm2EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_
__ZNSt3__1L3getILm2EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_: ## @_ZNSt3__1L3getILm2EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$24, %rdi
	callq	__ZNSt3__112__tuple_leafILm2EP6SeamanLb0EE3getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
__ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_: ## @_ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L3getILm3EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_
__ZNSt3__1L3getILm3EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_: ## @_ZNSt3__1L3getILm3EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSE_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$32, %rdi
	callq	__ZNSt3__112__tuple_leafILm3EiLb0EE3getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_leafILm1EM6SeamanFviELb0EE3getEv
__ZNSt3__112__tuple_leafILm1EM6SeamanFviELb0EE3getEv: ## @_ZNSt3__112__tuple_leafILm1EM6SeamanFviELb0EE3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_leafILm2EP6SeamanLb0EE3getEv
__ZNSt3__112__tuple_leafILm2EP6SeamanLb0EE3getEv: ## @_ZNSt3__112__tuple_leafILm2EP6SeamanLb0EE3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_leafILm3EiLb0EE3getEv
__ZNSt3__112__tuple_leafILm3EiLb0EE3getEv: ## @_ZNSt3__112__tuple_leafILm3EiLb0EE3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE5firstEv
__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE5firstEv: ## @_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEELi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEED2Ev
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEED2Ev: ## @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEE5resetEPSA_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEE5resetEPSA_
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEE5resetEPSA_: ## @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEEENS3_ISA_EEE5resetEPSA_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE5firstEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE5firstEv
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	movq	%rsi, (%rax)
	cmpq	$0, -24(%rbp)
	je	LBB125_2
## %bb.1:
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE6secondEv
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEM6SeamanFviEPS6_iEEEEclEPSA_
LBB125_2:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE6secondEv
__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE6secondEv: ## @_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEM6SeamanFviEPS7_iEEENS4_ISB_EEE6secondEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEM6SeamanFviEPS7_iEEEEELi1ELb1EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEM6SeamanFviEPS6_iEEEEclEPSA_
__ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEM6SeamanFviEPS6_iEEEEclEPSA_: ## @_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEM6SeamanFviEPS6_iEEEEclEPSA_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, %rsi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	je	LBB127_2
## %bb.1:
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEED1Ev
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
LBB127_2:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEM6SeamanFviEPS7_iEEEEELi1ELb1EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEM6SeamanFviEPS7_iEEEEELi1ELb1EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEM6SeamanFviEPS7_iEEEEELi1ELb1EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEED1Ev ## -- Begin function _ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEED1Ev
	.p2align	4, 0x90
__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEED1Ev: ## @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEED2Ev ## -- Begin function _ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEED2Ev
	.p2align	4, 0x90
__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEED2Ev: ## @_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEM6SeamanFviEPS6_iEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEED1Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEED1Ev ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEED1Ev
	.p2align	4, 0x90
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEED1Ev: ## @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEED2Ev ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEED2Ev
	.p2align	4, 0x90
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEED2Ev: ## @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEM6SeamanFviEPS8_iEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev ## -- Begin function _ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev
	.weak_def_can_be_hidden	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev
	.p2align	4, 0x90
__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev: ## @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	movq	%rsi, (%rax)
	cmpq	$0, -24(%rbp)
	je	LBB135_2
## %bb.1:
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_
LBB135_2:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_
__ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_: ## @_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, %rsi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	je	LBB136_2
## %bb.1:
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__115__thread_structD1Ev
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
LBB136_2:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNK6Seaman8showRoadEv ## -- Begin function _ZNK6Seaman8showRoadEv
	.weak_definition	__ZNK6Seaman8showRoadEv
	.p2align	4, 0x90
__ZNK6Seaman8showRoadEv:                ## @_ZNK6Seaman8showRoadEv
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__110lock_guardINS_5mutexEEC1ERS1_
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movq	96(%rax), %rsi
	movq	%rsi, -16(%rbp)
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__110lock_guardINS_5mutexEED1Ev
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movl	$124, %esi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	movq	-16(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	$45, %edx
	movq	%rdi, -112(%rbp)        ## 8-byte Spill
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
Ltmp52:
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	movq	-112(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
Ltmp53:
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	jmp	LBB137_1
LBB137_1:
Ltmp54:
	movl	$42, %esi
	movq	-128(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
Ltmp55:
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	jmp	LBB137_2
LBB137_2:
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movq	88(%rax), %rcx
	movq	-16(%rbp), %rdx
	subq	%rdx, %rcx
	decq	%rcx
Ltmp56:
	leaq	-88(%rbp), %rdi
	movl	$45, %edx
	movq	%rcx, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
Ltmp57:
	jmp	LBB137_3
LBB137_3:
Ltmp59:
	leaq	-88(%rbp), %rsi
	movq	-136(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
Ltmp60:
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	jmp	LBB137_4
LBB137_4:
Ltmp61:
	movl	$124, %esi
	movq	-144(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
Ltmp62:
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	jmp	LBB137_5
LBB137_5:
Ltmp63:
	leaq	__ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rsi
	movq	-152(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp64:
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	jmp	LBB137_6
LBB137_6:
	leaq	-88(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	addq	$160, %rsp
	popq	%rbp
	retq
LBB137_7:
Ltmp58:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
	jmp	LBB137_9
LBB137_8:
Ltmp65:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
	leaq	-88(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
LBB137_9:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
## %bb.10:
	movq	-56(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table137:
Lexception8:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8 ## >> Call Site 1 <<
	.uleb128 Ltmp52-Lfunc_begin8    ##   Call between Lfunc_begin8 and Ltmp52
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin8    ## >> Call Site 2 <<
	.uleb128 Ltmp57-Ltmp52          ##   Call between Ltmp52 and Ltmp57
	.uleb128 Ltmp58-Lfunc_begin8    ##     jumps to Ltmp58
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp59-Lfunc_begin8    ## >> Call Site 3 <<
	.uleb128 Ltmp64-Ltmp59          ##   Call between Ltmp59 and Ltmp64
	.uleb128 Ltmp65-Lfunc_begin8    ##     jumps to Ltmp65
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp64-Lfunc_begin8    ## >> Call Site 4 <<
	.uleb128 Lfunc_end8-Ltmp64      ##   Call between Ltmp64 and Lfunc_end8
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end8:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c ## -- Begin function _ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.weak_definition	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.p2align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movl	$1, %esi
	movl	%esi, %edx
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-9(%rbp), %rsi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE ## -- Begin function _ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.weak_definition	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.p2align	4, 0x90
__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE: ## @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsbl	-17(%rbp), %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E: ## @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	*-16(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
__ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movl	$10, %esi
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movsbl	%al, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	-8(%rbp), %rcx
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rsi
Ltmp66:
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp67:
	jmp	LBB143_1
LBB143_1:
Ltmp69:
	leaq	-40(%rbp), %rdi
	callq	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
Ltmp70:
	movb	%al, -73(%rbp)          ## 1-byte Spill
	jmp	LBB143_2
LBB143_2:
	movb	-73(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB143_3
	jmp	LBB143_18
LBB143_3:
	movq	-8(%rbp), %rsi
	leaq	-72(%rbp), %rdi
	callq	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rdi
Ltmp71:
	movq	%rsi, -88(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__18ios_base5flagsEv
Ltmp72:
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	jmp	LBB143_4
LBB143_4:
	movl	-92(%rbp), %eax         ## 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	LBB143_6
## %bb.5:
	movq	-16(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	jmp	LBB143_7
LBB143_6:
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        ## 8-byte Spill
LBB143_7:
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	-24(%rsi), %rsi
	addq	%rsi, %rdx
Ltmp73:
	movq	%rdx, %rdi
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	movq	%rcx, -120(%rbp)        ## 8-byte Spill
	movq	%rdx, -128(%rbp)        ## 8-byte Spill
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
Ltmp74:
	movb	%al, -129(%rbp)         ## 1-byte Spill
	jmp	LBB143_8
LBB143_8:
	movq	-72(%rbp), %rdi
Ltmp75:
	movb	-129(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %r9d
	movq	-88(%rbp), %rsi         ## 8-byte Reload
	movq	-112(%rbp), %rdx        ## 8-byte Reload
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	movq	-128(%rbp), %r8         ## 8-byte Reload
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp76:
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	jmp	LBB143_9
LBB143_9:
	movq	-144(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rdi
	callq	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	testb	$1, %al
	jne	LBB143_10
	jmp	LBB143_17
LBB143_10:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
Ltmp77:
	movl	$5, %esi
	movq	%rax, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
Ltmp78:
	jmp	LBB143_11
LBB143_11:
	jmp	LBB143_17
LBB143_12:
Ltmp68:
	movl	%edx, %ecx
	movq	%rax, -48(%rbp)
	movl	%ecx, -52(%rbp)
	jmp	LBB143_14
LBB143_13:
Ltmp79:
	movl	%edx, %ecx
	movq	%rax, -48(%rbp)
	movl	%ecx, -52(%rbp)
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB143_14:
	movq	-48(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rdi
Ltmp80:
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp81:
	jmp	LBB143_15
LBB143_15:
	callq	___cxa_end_catch
LBB143_16:
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
LBB143_17:
	jmp	LBB143_18
LBB143_18:
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB143_16
LBB143_19:
Ltmp82:
	movl	%edx, %ecx
	movq	%rax, -48(%rbp)
	movl	%ecx, -52(%rbp)
Ltmp83:
	callq	___cxa_end_catch
Ltmp84:
	jmp	LBB143_20
LBB143_20:
	jmp	LBB143_21
LBB143_21:
	movq	-48(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
LBB143_22:
Ltmp85:
	movq	%rax, %rdi
	movq	%rdx, -160(%rbp)        ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table143:
Lexception9:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp66-Lfunc_begin9    ## >> Call Site 1 <<
	.uleb128 Ltmp67-Ltmp66          ##   Call between Ltmp66 and Ltmp67
	.uleb128 Ltmp68-Lfunc_begin9    ##     jumps to Ltmp68
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp69-Lfunc_begin9    ## >> Call Site 2 <<
	.uleb128 Ltmp78-Ltmp69          ##   Call between Ltmp69 and Ltmp78
	.uleb128 Ltmp79-Lfunc_begin9    ##     jumps to Ltmp79
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp78-Lfunc_begin9    ## >> Call Site 3 <<
	.uleb128 Ltmp80-Ltmp78          ##   Call between Ltmp78 and Ltmp80
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp80-Lfunc_begin9    ## >> Call Site 4 <<
	.uleb128 Ltmp81-Ltmp80          ##   Call between Ltmp80 and Ltmp81
	.uleb128 Ltmp82-Lfunc_begin9    ##     jumps to Ltmp82
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp81-Lfunc_begin9    ## >> Call Site 5 <<
	.uleb128 Ltmp83-Ltmp81          ##   Call between Ltmp81 and Ltmp83
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp83-Lfunc_begin9    ## >> Call Site 6 <<
	.uleb128 Ltmp84-Ltmp83          ##   Call between Ltmp83 and Ltmp84
	.uleb128 Ltmp85-Lfunc_begin9    ##     jumps to Ltmp85
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp84-Lfunc_begin9    ## >> Call Site 7 <<
	.uleb128 Lfunc_end9-Ltmp84      ##   Call between Ltmp84 and Lfunc_end9
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end9:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase3:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv: ## @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	(%rdi), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movb	%r9b, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movb	%al, -49(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB145_2
## %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB145_22
LBB145_2:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	__ZNKSt3__18ios_base5widthEv
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	LBB145_4
## %bb.3:
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	jmp	LBB145_5
LBB145_4:
	movq	$0, -72(%rbp)
LBB145_5:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jle	LBB145_9
## %bb.6:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	cmpq	-80(%rbp), %rax
	je	LBB145_8
## %bb.7:
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB145_22
LBB145_8:
	jmp	LBB145_9
LBB145_9:
	cmpq	$0, -72(%rbp)
	jle	LBB145_17
## %bb.10:
	movq	-72(%rbp), %rsi
	movsbl	-49(%rbp), %edx
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	movq	-16(%rbp), %rdi
	movq	-128(%rbp), %rax        ## 8-byte Reload
	movq	%rdi, -136(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	movq	-72(%rbp), %rdx
Ltmp86:
	movq	-136(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
Ltmp87:
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	jmp	LBB145_11
LBB145_11:
	movq	-144(%rbp), %rax        ## 8-byte Reload
	cmpq	-72(%rbp), %rax
	je	LBB145_14
## %bb.12:
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -120(%rbp)
	jmp	LBB145_15
LBB145_13:
Ltmp88:
	movl	%edx, %ecx
	movq	%rax, -112(%rbp)
	movl	%ecx, -116(%rbp)
	leaq	-104(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	jmp	LBB145_23
LBB145_14:
	movl	$0, -120(%rbp)
LBB145_15:
	leaq	-104(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	-120(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -148(%rbp)        ## 4-byte Spill
	je	LBB145_16
	jmp	LBB145_25
LBB145_25:
	movl	-148(%rbp), %eax        ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -152(%rbp)        ## 4-byte Spill
	je	LBB145_22
	jmp	LBB145_24
LBB145_16:
	jmp	LBB145_17
LBB145_17:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jle	LBB145_21
## %bb.18:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	cmpq	-80(%rbp), %rax
	je	LBB145_20
## %bb.19:
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB145_22
LBB145_20:
	jmp	LBB145_21
LBB145_21:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	__ZNSt3__18ios_base5widthEl
	movq	-16(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	%rax, -160(%rbp)        ## 8-byte Spill
LBB145_22:
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
LBB145_23:
	movq	-112(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
LBB145_24:
	ud2
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table145:
Lexception10:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10 ## >> Call Site 1 <<
	.uleb128 Ltmp86-Lfunc_begin10   ##   Call between Lfunc_begin10 and Ltmp86
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp86-Lfunc_begin10   ## >> Call Site 2 <<
	.uleb128 Ltmp87-Ltmp86          ##   Call between Ltmp86 and Ltmp87
	.uleb128 Ltmp88-Lfunc_begin10   ##     jumps to Ltmp88
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp87-Lfunc_begin10   ## >> Call Site 3 <<
	.uleb128 Lfunc_end10-Ltmp87     ##   Call between Ltmp87 and Lfunc_end10
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end10:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE: ## @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__18ios_base5flagsEv
__ZNKSt3__18ios_base5flagsEv:           ## @_ZNKSt3__18ios_base5flagsEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movl	144(%rdi), %esi
	movl	%eax, %edi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	$1, %al
	jne	LBB148_1
	jmp	LBB148_2
LBB148_1:
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movl	$32, %esi
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	movsbl	%al, %esi
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movl	%esi, 144(%rdi)
LBB148_2:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movl	144(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv: ## @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, (%rdi)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj: ## @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	__ZNSt3__18ios_base8setstateEj
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__18ios_base5widthEv
__ZNKSt3__18ios_base5widthEv:           ## @_ZNKSt3__18ios_base5widthEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl: ## @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdx), %rax
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         ## 8-byte Reload
	callq	*96(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	movq	%rax, %rdi
	callq	__ZNSt3__1L16__to_raw_pointerIcEEPT_S2_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__18ios_base5widthEl
__ZNSt3__18ios_base5widthEl:            ## @_ZNSt3__18ios_base5widthEl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, 24(%rsi)
	movq	-24(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L16__to_raw_pointerIcEEPT_S2_
__ZNSt3__1L16__to_raw_pointerIcEEPT_S2_: ## @_ZNSt3__1L16__to_raw_pointerIcEEPT_S2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	testb	$1, %al
	jne	LBB156_1
	jmp	LBB156_2
LBB156_1:
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	jmp	LBB156_3
LBB156_2:
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	movq	%rax, -24(%rbp)         ## 8-byte Spill
LBB156_3:
	movq	-24(%rbp), %rax         ## 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	andq	$1, %rax
	cmpq	$0, %rax
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movq	16(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	addq	$1, %rax
	movq	%rax, %rdi
	callq	__ZNSt3__114pointer_traitsIPcE10pointer_toERc
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: ## @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: ## @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toERc
__ZNSt3__114pointer_traitsIPcE10pointer_toERc: ## @_ZNSt3__114pointer_traitsIPcE10pointer_toERc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__1L9addressofIcEEPT_RS1_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L9addressofIcEEPT_RS1_
__ZNSt3__1L9addressofIcEEPT_RS1_:       ## @_ZNSt3__1L9addressofIcEEPT_RS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE: ## @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	addq	%rax, %rdi
Ltmp89:
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
Ltmp90:
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	jmp	LBB166_1
LBB166_1:
	movq	-24(%rbp), %rax         ## 8-byte Reload
	movq	-32(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
LBB166_2:
Ltmp91:
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table166:
Lexception11:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp89-Lfunc_begin11   ## >> Call Site 1 <<
	.uleb128 Ltmp90-Ltmp89          ##   Call between Ltmp89 and Ltmp90
	.uleb128 Ltmp91-Lfunc_begin11   ##     jumps to Ltmp91
	.byte	1                       ##   On action: 1
Lcst_end11:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase4:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__18ios_base5rdbufEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__18ios_base5rdbufEv
__ZNKSt3__18ios_base5rdbufEv:           ## @_ZNKSt3__18ios_base5rdbufEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ## -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ## @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	cmpl	-8(%rbp), %esi
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ## -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE3eofEv:       ## @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp92:
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
Ltmp93:
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	jmp	LBB171_1
LBB171_1:
	movsbl	-9(%rbp), %esi
Ltmp94:
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__15ctypeIcE5widenEc
Ltmp95:
	movb	%al, -57(%rbp)          ## 1-byte Spill
	jmp	LBB171_2
LBB171_2:
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movb	-57(%rbp), %al          ## 1-byte Reload
	movsbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB171_3:
Ltmp96:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
## %bb.4:
	movq	-32(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table171:
Lexception12:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Lfunc_begin12-Lfunc_begin12 ## >> Call Site 1 <<
	.uleb128 Ltmp92-Lfunc_begin12   ##   Call between Lfunc_begin12 and Ltmp92
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp92-Lfunc_begin12   ## >> Call Site 2 <<
	.uleb128 Ltmp95-Ltmp92          ##   Call between Ltmp92 and Ltmp95
	.uleb128 Ltmp96-Lfunc_begin12   ##     jumps to Ltmp96
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp95-Lfunc_begin12   ## >> Call Site 3 <<
	.uleb128 Lfunc_end12-Ltmp95     ##   Call between Ltmp95 and Lfunc_end12
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end12:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE: ## @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__15ctypeIcE5widenEc
__ZNKSt3__15ctypeIcE5widenEc:           ## @_ZNKSt3__15ctypeIcE5widenEc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movb	-9(%rbp), %al
	movq	(%rdi), %rcx
	movsbl	%al, %esi
	callq	*56(%rcx)
	movsbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__18ios_base8setstateEj
__ZNSt3__18ios_base8setstateEj:         ## @_ZNSt3__18ios_base8setstateEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	32(%rdi), %esi
	orl	-12(%rbp), %esi
	callq	__ZNSt3__18ios_base5clearEj
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	movq	%rax, %rdi
	callq	__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	testb	$1, %al
	jne	LBB176_1
	jmp	LBB176_2
LBB176_1:
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	jmp	LBB176_3
LBB176_2:
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
	movq	%rax, -24(%rbp)         ## 8-byte Spill
LBB176_3:
	movq	-24(%rbp), %rax         ## 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_
__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_: ## @_ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	testb	$1, %al
	jne	LBB178_1
	jmp	LBB178_2
LBB178_1:
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	jmp	LBB178_3
LBB178_2:
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	movq	%rax, -24(%rbp)         ## 8-byte Spill
LBB178_3:
	movq	-24(%rbp), %rax         ## 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movq	16(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	addq	$1, %rax
	movq	%rax, %rdi
	callq	__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_: ## @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__1L9addressofIKcEEPT_RS2_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L9addressofIKcEEPT_RS2_
__ZNSt3__1L9addressofIKcEEPT_RS2_:      ## @_ZNSt3__1L9addressofIKcEEPT_RS2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movq	8(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movzbl	(%rax), %ecx
	sarl	$1, %ecx
	movslq	%ecx, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movsbl	-17(%rbp), %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv: ## @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv: ## @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev: ## @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_memset
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev: ## @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__19allocatorIcEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19allocatorIcEC2Ev
__ZNSt3__19allocatorIcEC2Ev:            ## @_ZNSt3__19allocatorIcEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN6SeamanD2Ev         ## -- Begin function _ZN6SeamanD2Ev
	.weak_def_can_be_hidden	__ZN6SeamanD2Ev
	.p2align	4, 0x90
__ZN6SeamanD2Ev:                        ## @_ZN6SeamanD2Ev
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__15mutex6unlockEv
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movb	$1, 80(%rdi)
	addq	$64, %rdi
Ltmp97:
	callq	__ZNSt3__16thread4joinEv
Ltmp98:
	jmp	LBB191_1
LBB191_1:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	addq	$72, %rax
Ltmp99:
	movq	%rax, %rdi
	callq	__ZNSt3__16thread4joinEv
Ltmp100:
	jmp	LBB191_2
LBB191_2:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	addq	$72, %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16threadD1Ev
	movq	-32(%rbp), %rax         ## 8-byte Reload
	addq	$64, %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16threadD1Ev
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__15mutexD1Ev
	addq	$32, %rsp
	popq	%rbp
	retq
LBB191_3:
Ltmp101:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax         ## 8-byte Reload
	addq	$72, %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16threadD1Ev
	movq	-32(%rbp), %rax         ## 8-byte Reload
	addq	$64, %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16threadD1Ev
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__15mutexD1Ev
## %bb.4:
	movq	-16(%rbp), %rdi
	callq	___clang_call_terminate
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table191:
Lexception13:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Ltmp97-Lfunc_begin13   ## >> Call Site 1 <<
	.uleb128 Ltmp100-Ltmp97         ##   Call between Ltmp97 and Ltmp100
	.uleb128 Ltmp101-Lfunc_begin13  ##     jumps to Ltmp101
	.byte	1                       ##   On action: 1
Lcst_end13:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase5:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__const
	.globl	__ZN6Seaman9SleepTimeE  ## @_ZN6Seaman9SleepTimeE
	.weak_definition	__ZN6Seaman9SleepTimeE
	.p2align	3
__ZN6Seaman9SleepTimeE:
	.quad	20                      ## 0x14

	.p2align	4               ## @_ZZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EEE4_Max
__ZZNSt3__111this_thread9sleep_forIxNS_5ratioILl1ELl1000EEEEEvRKNS_6chrono8durationIT_T0_EEE4_Max:
	.quad	-8543223759426509418    ## x86_fp80 9223372036.85477580688
	.short	16416
	.space	6

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"thread constructor failed"


.subsections_via_symbols
