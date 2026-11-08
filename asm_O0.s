	.file	"ckodu.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_zmmul1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	SID
	.section	.srodata,"a"
	.align	2
	.type	SID, @object
	.size	SID, 4
SID:
	.word	1240017
	.globl	studentGrades
	.bss
	.align	2
	.type	studentGrades, @object
	.size	studentGrades, 164
studentGrades:
	.zero	164
	.globl	bucket
	.align	2
	.type	bucket, @object
	.size	bucket, 20
bucket:
	.zero	20
	.globl	mean
	.section	.sbss,"aw",@nobits
	.align	2
	.type	mean, @object
	.size	mean, 4
mean:
	.zero	4
	.globl	below_count
	.align	2
	.type	below_count, @object
	.size	below_count, 4
below_count:
	.zero	4
	.globl	pass_count
	.align	2
	.type	pass_count, @object
	.size	pass_count, 4
pass_count:
	.zero	4
	.text
	.align	2
	.globl	next_x
	.type	next_x, @function
next_x:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	lw	a4,-36(s0)
	li	a5,1662976
	addi	a5,a5,1549
	mul	a4,a4,a5
	li	a5,1013903360
	addi	a5,a5,863
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	next_x, .-next_x
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	li	a5,1241088
	addi	a5,a5,-1071
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	sw	zero,-28(s0)
	j	.L4
.L5:
	lw	a0,-20(s0)
	call	next_x
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	srli	a5,a5,16
	li	a4,1148157952
	addi	a4,a4,1623
	mulhu	a4,a5,a4
	sub	a3,a5,a4
	srli	a3,a3,1
	add	a4,a4,a3
	srli	a4,a4,6
	li	a3,101
	mul	a4,a4,a3
	sub	a4,a5,a4
	mv	a3,a4
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a3,0(a5)
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	add	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L4:
	lw	a4,-28(s0)
	li	a5,40
	ble	a4,a5,.L5
	lw	a5,-24(s0)
	li	a4,1676083200
	addi	a4,a4,1599
	mulh	a4,a5,a4
	srai	a4,a4,4
	srai	a5,a5,31
	sub	a4,a4,a5
	lui	a5,%hi(mean)
	sw	a4,%lo(mean)(a5)
	sw	zero,-32(s0)
	j	.L6
.L14:
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,56
	ble	a4,a5,.L7
	lui	a5,%hi(pass_count)
	lw	a5,%lo(pass_count)(a5)
	addi	a4,a5,1
	lui	a5,%hi(pass_count)
	sw	a4,%lo(pass_count)(a5)
.L7:
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,49
	bgt	a4,a5,.L8
	sw	zero,-36(s0)
	lui	a5,%hi(bucket)
	addi	a4,a5,%lo(bucket)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(bucket)
	addi	a3,a5,%lo(bucket)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	j	.L9
.L8:
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,64
	bgt	a4,a5,.L10
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,49
	ble	a4,a5,.L10
	li	a5,1
	sw	a5,-36(s0)
	lui	a5,%hi(bucket)
	addi	a4,a5,%lo(bucket)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(bucket)
	addi	a3,a5,%lo(bucket)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	j	.L9
.L10:
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,74
	bgt	a4,a5,.L11
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,64
	ble	a4,a5,.L11
	li	a5,2
	sw	a5,-36(s0)
	lui	a5,%hi(bucket)
	addi	a4,a5,%lo(bucket)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(bucket)
	addi	a3,a5,%lo(bucket)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	j	.L9
.L11:
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,84
	bgt	a4,a5,.L12
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,74
	ble	a4,a5,.L12
	li	a5,3
	sw	a5,-36(s0)
	lui	a5,%hi(bucket)
	addi	a4,a5,%lo(bucket)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(bucket)
	addi	a3,a5,%lo(bucket)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	j	.L9
.L12:
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,100
	bgt	a4,a5,.L9
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,84
	ble	a4,a5,.L9
	li	a5,4
	sw	a5,-36(s0)
	lui	a5,%hi(bucket)
	addi	a4,a5,%lo(bucket)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	addi	a4,a5,1
	lui	a5,%hi(bucket)
	addi	a3,a5,%lo(bucket)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
.L9:
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lui	a5,%hi(mean)
	lw	a5,%lo(mean)(a5)
	bge	a4,a5,.L13
	lui	a5,%hi(below_count)
	lw	a5,%lo(below_count)(a5)
	addi	a4,a5,1
	lui	a5,%hi(below_count)
	sw	a4,%lo(below_count)(a5)
	lui	a5,%hi(studentGrades)
	addi	a4,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	ori	a4,a5,256
	lui	a5,%hi(studentGrades)
	addi	a3,a5,%lo(studentGrades)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
.L13:
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L6:
	lw	a4,-32(s0)
	li	a5,40
	ble	a4,a5,.L14
	li	a5,0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"GCC: (Arch Linux Repositories) 16.2.0"
	.section	.note.GNU-stack,"",@progbits
