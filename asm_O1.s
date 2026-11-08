	.file	"ckodu.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	next_x
	.type	next_x, @function
next_x:
	li	a5,1662976
	addi	a5,a5,1549
	mul	a0,a0,a5
	li	a5,1013903360
	addi	a5,a5,863
	add	a0,a0,a5
	ret
	.size	next_x, .-next_x
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	s0,44(sp)
	sw	s1,40(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	sw	s4,28(sp)
	sw	s5,24(sp)
	sw	s6,20(sp)
	sw	s7,16(sp)
	sw	s8,12(sp)
	sw	s9,8(sp)
	sw	s10,4(sp)
	lui	t4,%hi(.LANCHOR0)
	addi	t4,t4,%lo(.LANCHOR0)
	addi	t5,t4,164
	mv	a3,t4
	li	a0,0
	li	a4,1241088
	addi	a4,a4,-1071
	li	t1,1662976
	addi	t1,t1,1549
	li	a7,1013903360
	addi	a7,a7,863
	li	a6,1148157952
	addi	a6,a6,1623
	li	t3,101
.L3:
	mul	a4,a4,t1
	add	a4,a4,a7
	srli	a2,a4,16
	mulhu	a5,a2,a6
	sub	a1,a2,a5
	srli	a1,a1,1
	add	a5,a5,a1
	srli	a5,a5,6
	mul	a5,a5,t3
	sub	a5,a2,a5
	sw	a5,0(a3)
	add	a0,a0,a5
	addi	a3,a3,4
	bne	t5,a3,.L3
	li	a2,1676083200
	addi	a2,a2,1599
	mulh	a2,a0,a2
	srai	a2,a2,4
	srai	a0,a0,31
	sub	a2,a2,a0
	lui	a5,%hi(mean)
	sw	a2,%lo(mean)(a5)
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a0,164(a5)
	lui	a4,%hi(pass_count)
	lw	a1,%lo(pass_count)(a4)
	lw	s6,180(a5)
	lw	s5,176(a5)
	lw	s3,172(a5)
	lw	t0,168(a5)
	lui	a5,%hi(below_count)
	lw	a6,%lo(below_count)(a5)
	li	t6,0
	li	s10,0
	li	s9,0
	li	s4,0
	li	s2,0
	li	t3,0
	li	t1,0
	li	a7,56
	li	s0,49
	li	a4,1
	li	t2,14
	li	s1,9
	li	s7,15
	j	.L11
.L20:
	mv	t1,a4
.L5:
	addi	t0,t0,1
	mv	s2,a4
	j	.L7
.L8:
	addi	t1,a5,-75
	bgtu	t1,s1,.L9
	addi	s5,s5,1
	mv	s9,a4
	mv	t1,a4
	j	.L7
.L9:
	addi	s8,a5,-85
	mv	t1,a4
	bgtu	s8,s7,.L7
	addi	s6,s6,1
	mv	s10,a4
	j	.L7
.L27:
	beq	t6,zero,.L12
	lui	a5,%hi(below_count)
	sw	a6,%lo(below_count)(a5)
.L12:
	beq	s10,zero,.L13
	lui	a5,%hi(.LANCHOR0+180)
	sw	s6,%lo(.LANCHOR0+180)(a5)
.L13:
	beq	s9,zero,.L14
	lui	a5,%hi(.LANCHOR0+176)
	sw	s5,%lo(.LANCHOR0+176)(a5)
.L14:
	beq	s4,zero,.L15
	lui	a5,%hi(.LANCHOR0+172)
	sw	s3,%lo(.LANCHOR0+172)(a5)
.L15:
	beq	s2,zero,.L16
	lui	a5,%hi(.LANCHOR0+168)
	sw	t0,%lo(.LANCHOR0+168)(a5)
.L16:
	beq	t3,zero,.L17
	lui	a5,%hi(.LANCHOR0+164)
	sw	a0,%lo(.LANCHOR0+164)(a5)
.L17:
	beq	t1,zero,.L22
	lui	a5,%hi(pass_count)
	sw	a1,%lo(pass_count)(a5)
.L22:
	li	a0,0
	lw	s0,44(sp)
	lw	s1,40(sp)
	lw	s2,36(sp)
	lw	s3,32(sp)
	lw	s4,28(sp)
	lw	s5,24(sp)
	lw	s6,20(sp)
	lw	s7,16(sp)
	lw	s8,12(sp)
	lw	s9,8(sp)
	lw	s10,4(sp)
	addi	sp,sp,48
	jr	ra
.L4:
	bgt	a5,s0,.L5
	addi	a0,a0,1
	mv	t3,a4
.L7:
	ble	a2,a5,.L10
	addi	a6,a6,1
	ori	a5,a5,256
	sw	a5,0(a3)
	mv	t6,a4
.L10:
	addi	t4,t4,4
	beq	t5,t4,.L27
.L11:
	mv	a3,t4
	lw	a5,0(t4)
	ble	a5,a7,.L4
	addi	a1,a1,1
	addi	t1,a5,-50
	bleu	t1,t2,.L20
	addi	t1,a5,-65
	bgtu	t1,s1,.L8
	addi	s3,s3,1
	mv	s4,a4
	mv	t1,a4
	j	.L7
	.size	main, .-main
	.globl	pass_count
	.globl	below_count
	.globl	mean
	.globl	bucket
	.globl	studentGrades
	.globl	SID
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	studentGrades, @object
	.size	studentGrades, 164
studentGrades:
	.zero	164
	.type	bucket, @object
	.size	bucket, 20
bucket:
	.zero	20
	.section	.sbss,"aw",@nobits
	.align	2
	.type	pass_count, @object
	.size	pass_count, 4
pass_count:
	.zero	4
	.type	below_count, @object
	.size	below_count, 4
below_count:
	.zero	4
	.type	mean, @object
	.size	mean, 4
mean:
	.zero	4
	.section	.srodata,"a"
	.align	2
	.type	SID, @object
	.size	SID, 4
SID:
	.word	1240017
	.ident	"GCC: (Arch Linux Repositories) 16.2.0"
	.section	.note.GNU-stack,"",@progbits
