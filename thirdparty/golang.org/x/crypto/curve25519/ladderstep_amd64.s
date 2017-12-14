// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This code was translated into a form compatible with 6a from the public
// domain sources in SUPERCOP: https://bench.cr.yp.to/supercop.html

// +build amd64,!gccgo,!appengine

#include "const_amd64.h"

// func ladderstep(inout *[5][5]uint64)
TEXT ·ladderstep(SB),0,$296-8
	MOVQ inout+0(FP),DI

	MOVQ 40(DI),SI
	MOVQ 48(DI),DX
	MOVQ 56(DI),CX
	MOVQ 64(DI),R8
	MOVQ 72(DI),R9
	MOVQ SI,AX
	MOVQ DX,R10
	MOVQ CX,R11
	MOVQ R8,R12
	MOVQ R9,R13
	ADDQ ·_2P0(SB),AX
	ADDQ ·_2P1234(SB),R10
	ADDQ ·_2P1234(SB),R11
	ADDQ ·_2P1234(SB),R12
	ADDQ ·_2P1234(SB),R13
	ADDQ 80(DI),SI
	ADDQ 88(DI),DX
	ADDQ 96(DI),CX
	ADDQ 104(DI),R8
	ADDQ 112(DI),R9
	SUBQ 80(DI),AX
	SUBQ 88(DI),R10
	SUBQ 96(DI),R11
	SUBQ 104(DI),R12
	SUBQ 112(DI),R13
	MOVQ SI,0(SP)
	MOVQ DX,8(SP)
	MOVQ CX,16(SP)
	MOVQ R8,24(SP)
	MOVQ R9,32(SP)
	MOVQ AX,40(SP)
	MOVQ R10,48(SP)
	MOVQ R11,56(SP)
	MOVQ R12,64(SP)
	MOVQ R13,72(SP)
	MOVQ 40(SP),AX
	MULQ 40(SP)
	MOVQ AX,SI
	MOVQ DX,CX
	MOVQ 40(SP),AX
	SHLQ $1,AX
	MULQ 48(SP)
	MOVQ AX,R8
	MOVQ DX,R9
	MOVQ 40(SP),AX
	SHLQ $1,AX
	MULQ 56(SP)
	MOVQ AX,R10
	MOVQ DX,R11
	MOVQ 40(SP),AX
	SHLQ $1,AX
	MULQ 64(SP)
	MOVQ AX,R12
	MOVQ DX,R13
	MOVQ 40(SP),AX
	SHLQ $1,AX
	MULQ 72(SP)
	MOVQ AX,R14
	MOVQ DX,R15
	MOVQ 48(SP),AX
	MULQ 48(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 48(SP),AX
	SHLQ $1,AX
	MULQ 56(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 48(SP),AX
	SHLQ $1,AX
	MULQ 64(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 48(SP),DX
	IMUL3Q $38,DX,AX
	MULQ 72(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 56(SP),AX
	MULQ 56(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 56(SP),DX
	IMUL3Q $38,DX,AX
	MULQ 64(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 56(SP),DX
	IMUL3Q $38,DX,AX
	MULQ 72(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 64(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 64(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 64(SP),DX
	IMUL3Q $38,DX,AX
	MULQ 72(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 72(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 72(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ $REDMASK51,DX
	SHLQ $13,CX:SI
	ANDQ DX,SI
	SHLQ $13,R9:R8
	ANDQ DX,R8
	ADDQ CX,R8
	SHLQ $13,R11:R10
	ANDQ DX,R10
	ADDQ R9,R10
	SHLQ $13,R13:R12
	ANDQ DX,R12
	ADDQ R11,R12
	SHLQ $13,R15:R14
	ANDQ DX,R14
	ADDQ R13,R14
	IMUL3Q $19,R15,CX
	ADDQ CX,SI
	MOVQ SI,CX
	SHRQ $51,CX
	ADDQ R8,CX
	ANDQ DX,SI
	MOVQ CX,R8
	SHRQ $51,CX
	ADDQ R10,CX
	ANDQ DX,R8
	MOVQ CX,R9
	SHRQ $51,CX
	ADDQ R12,CX
	ANDQ DX,R9
	MOVQ CX,AX
	SHRQ $51,CX
	ADDQ R14,CX
	ANDQ DX,AX
	MOVQ CX,R10
	SHRQ $51,CX
	IMUL3Q $19,CX,CX
	ADDQ CX,SI
	ANDQ DX,R10
	MOVQ SI,80(SP)
	MOVQ R8,88(SP)
	MOVQ R9,96(SP)
	MOVQ AX,104(SP)
	MOVQ R10,112(SP)
	MOVQ 0(SP),AX
	MULQ 0(SP)
	MOVQ AX,SI
	MOVQ DX,CX
	MOVQ 0(SP),AX
	SHLQ $1,AX
	MULQ 8(SP)
	MOVQ AX,R8
	MOVQ DX,R9
	MOVQ 0(SP),AX
	SHLQ $1,AX
	MULQ 16(SP)
	MOVQ AX,R10
	MOVQ DX,R11
	MOVQ 0(SP),AX
	SHLQ $1,AX
	MULQ 24(SP)
	MOVQ AX,R12
	MOVQ DX,R13
	MOVQ 0(SP),AX
	SHLQ $1,AX
	MULQ 32(SP)
	MOVQ AX,R14
	MOVQ DX,R15
	MOVQ 8(SP),AX
	MULQ 8(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 8(SP),AX
	SHLQ $1,AX
	MULQ 16(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 8(SP),AX
	SHLQ $1,AX
	MULQ 24(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 8(SP),DX
	IMUL3Q $38,DX,AX
	MULQ 32(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 16(SP),AX
	MULQ 16(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 16(SP),DX
	IMUL3Q $38,DX,AX
	MULQ 24(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 16(SP),DX
	IMUL3Q $38,DX,AX
	MULQ 32(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 24(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 24(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 24(SP),DX
	IMUL3Q $38,DX,AX
	MULQ 32(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 32(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 32(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ $REDMASK51,DX
	SHLQ $13,CX:SI
	ANDQ DX,SI
	SHLQ $13,R9:R8
	ANDQ DX,R8
	ADDQ CX,R8
	SHLQ $13,R11:R10
	ANDQ DX,R10
	ADDQ R9,R10
	SHLQ $13,R13:R12
	ANDQ DX,R12
	ADDQ R11,R12
	SHLQ $13,R15:R14
	ANDQ DX,R14
	ADDQ R13,R14
	IMUL3Q $19,R15,CX
	ADDQ CX,SI
	MOVQ SI,CX
	SHRQ $51,CX
	ADDQ R8,CX
	ANDQ DX,SI
	MOVQ CX,R8
	SHRQ $51,CX
	ADDQ R10,CX
	ANDQ DX,R8
	MOVQ CX,R9
	SHRQ $51,CX
	ADDQ R12,CX
	ANDQ DX,R9
	MOVQ CX,AX
	SHRQ $51,CX
	ADDQ R14,CX
	ANDQ DX,AX
	MOVQ CX,R10
	SHRQ $51,CX
	IMUL3Q $19,CX,CX
	ADDQ CX,SI
	ANDQ DX,R10
	MOVQ SI,120(SP)
	MOVQ R8,128(SP)
	MOVQ R9,136(SP)
	MOVQ AX,144(SP)
	MOVQ R10,152(SP)
	MOVQ SI,SI
	MOVQ R8,DX
	MOVQ R9,CX
	MOVQ AX,R8
	MOVQ R10,R9
	ADDQ ·_2P0(SB),SI
	ADDQ ·_2P1234(SB),DX
	ADDQ ·_2P1234(SB),CX
	ADDQ ·_2P1234(SB),R8
	ADDQ ·_2P1234(SB),R9
	SUBQ 80(SP),SI
	SUBQ 88(SP),DX
	SUBQ 96(SP),CX
	SUBQ 104(SP),R8
	SUBQ 112(SP),R9
	MOVQ SI,160(SP)
	MOVQ DX,168(SP)
	MOVQ CX,176(SP)
	MOVQ R8,184(SP)
	MOVQ R9,192(SP)
	MOVQ 120(DI),SI
	MOVQ 128(DI),DX
	MOVQ 136(DI),CX
	MOVQ 144(DI),R8
	MOVQ 152(DI),R9
	MOVQ SI,AX
	MOVQ DX,R10
	MOVQ CX,R11
	MOVQ R8,R12
	MOVQ R9,R13
	ADDQ ·_2P0(SB),AX
	ADDQ ·_2P1234(SB),R10
	ADDQ ·_2P1234(SB),R11
	ADDQ ·_2P1234(SB),R12
	ADDQ ·_2P1234(SB),R13
	ADDQ 160(DI),SI
	ADDQ 168(DI),DX
	ADDQ 176(DI),CX
	ADDQ 184(DI),R8
	ADDQ 192(DI),R9
	SUBQ 160(DI),AX
	SUBQ 168(DI),R10
	SUBQ 176(DI),R11
	SUBQ 184(DI),R12
	SUBQ 192(DI),R13
	MOVQ SI,200(SP)
	MOVQ DX,208(SP)
	MOVQ CX,216(SP)
	MOVQ R8,224(SP)
	MOVQ R9,232(SP)
	MOVQ AX,240(SP)
	MOVQ R10,248(SP)
	MOVQ R11,256(SP)
	MOVQ R12,264(SP)
	MOVQ R13,272(SP)
	MOVQ 224(SP),SI
	IMUL3Q $19,SI,AX
	MOVQ AX,280(SP)
	MULQ 56(SP)
	MOVQ AX,SI
	MOVQ DX,CX
	MOVQ 232(SP),DX
	IMUL3Q $19,DX,AX
	MOVQ AX,288(SP)
	MULQ 48(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 200(SP),AX
	MULQ 40(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 200(SP),AX
	MULQ 48(SP)
	MOVQ AX,R8
	MOVQ DX,R9
	MOVQ 200(SP),AX
	MULQ 56(SP)
	MOVQ AX,R10
	MOVQ DX,R11
	MOVQ 200(SP),AX
	MULQ 64(SP)
	MOVQ AX,R12
	MOVQ DX,R13
	MOVQ 200(SP),AX
	MULQ 72(SP)
	MOVQ AX,R14
	MOVQ DX,R15
	MOVQ 208(SP),AX
	MULQ 40(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 208(SP),AX
	MULQ 48(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 208(SP),AX
	MULQ 56(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 208(SP),AX
	MULQ 64(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 208(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 72(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 216(SP),AX
	MULQ 40(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 216(SP),AX
	MULQ 48(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 216(SP),AX
	MULQ 56(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 216(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 64(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 216(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 72(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 224(SP),AX
	MULQ 40(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 224(SP),AX
	MULQ 48(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 280(SP),AX
	MULQ 64(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 280(SP),AX
	MULQ 72(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 232(SP),AX
	MULQ 40(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 288(SP),AX
	MULQ 56(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 288(SP),AX
	MULQ 64(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 288(SP),AX
	MULQ 72(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ $REDMASK51,DX
	SHLQ $13,CX:SI
	ANDQ DX,SI
	SHLQ $13,R9:R8
	ANDQ DX,R8
	ADDQ CX,R8
	SHLQ $13,R11:R10
	ANDQ DX,R10
	ADDQ R9,R10
	SHLQ $13,R13:R12
	ANDQ DX,R12
	ADDQ R11,R12
	SHLQ $13,R15:R14
	ANDQ DX,R14
	ADDQ R13,R14
	IMUL3Q $19,R15,CX
	ADDQ CX,SI
	MOVQ SI,CX
	SHRQ $51,CX
	ADDQ R8,CX
	MOVQ CX,R8
	SHRQ $51,CX
	ANDQ DX,SI
	ADDQ R10,CX
	MOVQ CX,R9
	SHRQ $51,CX
	ANDQ DX,R8
	ADDQ R12,CX
	MOVQ CX,AX
	SHRQ $51,CX
	ANDQ DX,R9
	ADDQ R14,CX
	MOVQ CX,R10
	SHRQ $51,CX
	ANDQ DX,AX
	IMUL3Q $19,CX,CX
	ADDQ CX,SI
	ANDQ DX,R10
	MOVQ SI,40(SP)
	MOVQ R8,48(SP)
	MOVQ R9,56(SP)
	MOVQ AX,64(SP)
	MOVQ R10,72(SP)
	MOVQ 264(SP),SI
	IMUL3Q $19,SI,AX
	MOVQ AX,200(SP)
	MULQ 16(SP)
	MOVQ AX,SI
	MOVQ DX,CX
	MOVQ 272(SP),DX
	IMUL3Q $19,DX,AX
	MOVQ AX,208(SP)
	MULQ 8(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 240(SP),AX
	MULQ 0(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 240(SP),AX
	MULQ 8(SP)
	MOVQ AX,R8
	MOVQ DX,R9
	MOVQ 240(SP),AX
	MULQ 16(SP)
	MOVQ AX,R10
	MOVQ DX,R11
	MOVQ 240(SP),AX
	MULQ 24(SP)
	MOVQ AX,R12
	MOVQ DX,R13
	MOVQ 240(SP),AX
	MULQ 32(SP)
	MOVQ AX,R14
	MOVQ DX,R15
	MOVQ 248(SP),AX
	MULQ 0(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 248(SP),AX
	MULQ 8(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 248(SP),AX
	MULQ 16(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 248(SP),AX
	MULQ 24(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 248(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 32(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 256(SP),AX
	MULQ 0(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 256(SP),AX
	MULQ 8(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 256(SP),AX
	MULQ 16(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 256(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 24(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 256(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 32(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 264(SP),AX
	MULQ 0(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 264(SP),AX
	MULQ 8(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 200(SP),AX
	MULQ 24(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 200(SP),AX
	MULQ 32(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 272(SP),AX
	MULQ 0(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 208(SP),AX
	MULQ 16(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 208(SP),AX
	MULQ 24(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 208(SP),AX
	MULQ 32(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ $REDMASK51,DX
	SHLQ $13,CX:SI
	ANDQ DX,SI
	SHLQ $13,R9:R8
	ANDQ DX,R8
	ADDQ CX,R8
	SHLQ $13,R11:R10
	ANDQ DX,R10
	ADDQ R9,R10
	SHLQ $13,R13:R12
	ANDQ DX,R12
	ADDQ R11,R12
	SHLQ $13,R15:R14
	ANDQ DX,R14
	ADDQ R13,R14
	IMUL3Q $19,R15,CX
	ADDQ CX,SI
	MOVQ SI,CX
	SHRQ $51,CX
	ADDQ R8,CX
	MOVQ CX,R8
	SHRQ $51,CX
	ANDQ DX,SI
	ADDQ R10,CX
	MOVQ CX,R9
	SHRQ $51,CX
	ANDQ DX,R8
	ADDQ R12,CX
	MOVQ CX,AX
	SHRQ $51,CX
	ANDQ DX,R9
	ADDQ R14,CX
	MOVQ CX,R10
	SHRQ $51,CX
	ANDQ DX,AX
	IMUL3Q $19,CX,CX
	ADDQ CX,SI
	ANDQ DX,R10
	MOVQ SI,DX
	MOVQ R8,CX
	MOVQ R9,R11
	MOVQ AX,R12
	MOVQ R10,R13
	ADDQ ·_2P0(SB),DX
	ADDQ ·_2P1234(SB),CX
	ADDQ ·_2P1234(SB),R11
	ADDQ ·_2P1234(SB),R12
	ADDQ ·_2P1234(SB),R13
	ADDQ 40(SP),SI
	ADDQ 48(SP),R8
	ADDQ 56(SP),R9
	ADDQ 64(SP),AX
	ADDQ 72(SP),R10
	SUBQ 40(SP),DX
	SUBQ 48(SP),CX
	SUBQ 56(SP),R11
	SUBQ 64(SP),R12
	SUBQ 72(SP),R13
	MOVQ SI,120(DI)
	MOVQ R8,128(DI)
	MOVQ R9,136(DI)
	MOVQ AX,144(DI)
	MOVQ R10,152(DI)
	MOVQ DX,160(DI)
	MOVQ CX,168(DI)
	MOVQ R11,176(DI)
	MOVQ R12,184(DI)
	MOVQ R13,192(DI)
	MOVQ 120(DI),AX
	MULQ 120(DI)
	MOVQ AX,SI
	MOVQ DX,CX
	MOVQ 120(DI),AX
	SHLQ $1,AX
	MULQ 128(DI)
	MOVQ AX,R8
	MOVQ DX,R9
	MOVQ 120(DI),AX
	SHLQ $1,AX
	MULQ 136(DI)
	MOVQ AX,R10
	MOVQ DX,R11
	MOVQ 120(DI),AX
	SHLQ $1,AX
	MULQ 144(DI)
	MOVQ AX,R12
	MOVQ DX,R13
	MOVQ 120(DI),AX
	SHLQ $1,AX
	MULQ 152(DI)
	MOVQ AX,R14
	MOVQ DX,R15
	MOVQ 128(DI),AX
	MULQ 128(DI)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 128(DI),AX
	SHLQ $1,AX
	MULQ 136(DI)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 128(DI),AX
	SHLQ $1,AX
	MULQ 144(DI)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 128(DI),DX
	IMUL3Q $38,DX,AX
	MULQ 152(DI)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 136(DI),AX
	MULQ 136(DI)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 136(DI),DX
	IMUL3Q $38,DX,AX
	MULQ 144(DI)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 136(DI),DX
	IMUL3Q $38,DX,AX
	MULQ 152(DI)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 144(DI),DX
	IMUL3Q $19,DX,AX
	MULQ 144(DI)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 144(DI),DX
	IMUL3Q $38,DX,AX
	MULQ 152(DI)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 152(DI),DX
	IMUL3Q $19,DX,AX
	MULQ 152(DI)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ $REDMASK51,DX
	SHLQ $13,CX:SI
	ANDQ DX,SI
	SHLQ $13,R9:R8
	ANDQ DX,R8
	ADDQ CX,R8
	SHLQ $13,R11:R10
	ANDQ DX,R10
	ADDQ R9,R10
	SHLQ $13,R13:R12
	ANDQ DX,R12
	ADDQ R11,R12
	SHLQ $13,R15:R14
	ANDQ DX,R14
	ADDQ R13,R14
	IMUL3Q $19,R15,CX
	ADDQ CX,SI
	MOVQ SI,CX
	SHRQ $51,CX
	ADDQ R8,CX
	ANDQ DX,SI
	MOVQ CX,R8
	SHRQ $51,CX
	ADDQ R10,CX
	ANDQ DX,R8
	MOVQ CX,R9
	SHRQ $51,CX
	ADDQ R12,CX
	ANDQ DX,R9
	MOVQ CX,AX
	SHRQ $51,CX
	ADDQ R14,CX
	ANDQ DX,AX
	MOVQ CX,R10
	SHRQ $51,CX
	IMUL3Q $19,CX,CX
	ADDQ CX,SI
	ANDQ DX,R10
	MOVQ SI,120(DI)
	MOVQ R8,128(DI)
	MOVQ R9,136(DI)
	MOVQ AX,144(DI)
	MOVQ R10,152(DI)
	MOVQ 160(DI),AX
	MULQ 160(DI)
	MOVQ AX,SI
	MOVQ DX,CX
	MOVQ 160(DI),AX
	SHLQ $1,AX
	MULQ 168(DI)
	MOVQ AX,R8
	MOVQ DX,R9
	MOVQ 160(DI),AX
	SHLQ $1,AX
	MULQ 176(DI)
	MOVQ AX,R10
	MOVQ DX,R11
	MOVQ 160(DI),AX
	SHLQ $1,AX
	MULQ 184(DI)
	MOVQ AX,R12
	MOVQ DX,R13
	MOVQ 160(DI),AX
	SHLQ $1,AX
	MULQ 192(DI)
	MOVQ AX,R14
	MOVQ DX,R15
	MOVQ 168(DI),AX
	MULQ 168(DI)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 168(DI),AX
	SHLQ $1,AX
	MULQ 176(DI)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 168(DI),AX
	SHLQ $1,AX
	MULQ 184(DI)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 168(DI),DX
	IMUL3Q $38,DX,AX
	MULQ 192(DI)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 176(DI),AX
	MULQ 176(DI)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 176(DI),DX
	IMUL3Q $38,DX,AX
	MULQ 184(DI)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 176(DI),DX
	IMUL3Q $38,DX,AX
	MULQ 192(DI)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 184(DI),DX
	IMUL3Q $19,DX,AX
	MULQ 184(DI)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 184(DI),DX
	IMUL3Q $38,DX,AX
	MULQ 192(DI)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 192(DI),DX
	IMUL3Q $19,DX,AX
	MULQ 192(DI)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ $REDMASK51,DX
	SHLQ $13,CX:SI
	ANDQ DX,SI
	SHLQ $13,R9:R8
	ANDQ DX,R8
	ADDQ CX,R8
	SHLQ $13,R11:R10
	ANDQ DX,R10
	ADDQ R9,R10
	SHLQ $13,R13:R12
	ANDQ DX,R12
	ADDQ R11,R12
	SHLQ $13,R15:R14
	ANDQ DX,R14
	ADDQ R13,R14
	IMUL3Q $19,R15,CX
	ADDQ CX,SI
	MOVQ SI,CX
	SHRQ $51,CX
	ADDQ R8,CX
	ANDQ DX,SI
	MOVQ CX,R8
	SHRQ $51,CX
	ADDQ R10,CX
	ANDQ DX,R8
	MOVQ CX,R9
	SHRQ $51,CX
	ADDQ R12,CX
	ANDQ DX,R9
	MOVQ CX,AX
	SHRQ $51,CX
	ADDQ R14,CX
	ANDQ DX,AX
	MOVQ CX,R10
	SHRQ $51,CX
	IMUL3Q $19,CX,CX
	ADDQ CX,SI
	ANDQ DX,R10
	MOVQ SI,160(DI)
	MOVQ R8,168(DI)
	MOVQ R9,176(DI)
	MOVQ AX,184(DI)
	MOVQ R10,192(DI)
	MOVQ 184(DI),SI
	IMUL3Q $19,SI,AX
	MOVQ AX,0(SP)
	MULQ 16(DI)
	MOVQ AX,SI
	MOVQ DX,CX
	MOVQ 192(DI),DX
	IMUL3Q $19,DX,AX
	MOVQ AX,8(SP)
	MULQ 8(DI)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 160(DI),AX
	MULQ 0(DI)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 160(DI),AX
	MULQ 8(DI)
	MOVQ AX,R8
	MOVQ DX,R9
	MOVQ 160(DI),AX
	MULQ 16(DI)
	MOVQ AX,R10
	MOVQ DX,R11
	MOVQ 160(DI),AX
	MULQ 24(DI)
	MOVQ AX,R12
	MOVQ DX,R13
	MOVQ 160(DI),AX
	MULQ 32(DI)
	MOVQ AX,R14
	MOVQ DX,R15
	MOVQ 168(DI),AX
	MULQ 0(DI)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 168(DI),AX
	MULQ 8(DI)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 168(DI),AX
	MULQ 16(DI)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 168(DI),AX
	MULQ 24(DI)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 168(DI),DX
	IMUL3Q $19,DX,AX
	MULQ 32(DI)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 176(DI),AX
	MULQ 0(DI)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 176(DI),AX
	MULQ 8(DI)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 176(DI),AX
	MULQ 16(DI)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 176(DI),DX
	IMUL3Q $19,DX,AX
	MULQ 24(DI)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 176(DI),DX
	IMUL3Q $19,DX,AX
	MULQ 32(DI)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 184(DI),AX
	MULQ 0(DI)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 184(DI),AX
	MULQ 8(DI)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 0(SP),AX
	MULQ 24(DI)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 0(SP),AX
	MULQ 32(DI)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 192(DI),AX
	MULQ 0(DI)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 8(SP),AX
	MULQ 16(DI)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 8(SP),AX
	MULQ 24(DI)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 8(SP),AX
	MULQ 32(DI)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ $REDMASK51,DX
	SHLQ $13,CX:SI
	ANDQ DX,SI
	SHLQ $13,R9:R8
	ANDQ DX,R8
	ADDQ CX,R8
	SHLQ $13,R11:R10
	ANDQ DX,R10
	ADDQ R9,R10
	SHLQ $13,R13:R12
	ANDQ DX,R12
	ADDQ R11,R12
	SHLQ $13,R15:R14
	ANDQ DX,R14
	ADDQ R13,R14
	IMUL3Q $19,R15,CX
	ADDQ CX,SI
	MOVQ SI,CX
	SHRQ $51,CX
	ADDQ R8,CX
	MOVQ CX,R8
	SHRQ $51,CX
	ANDQ DX,SI
	ADDQ R10,CX
	MOVQ CX,R9
	SHRQ $51,CX
	ANDQ DX,R8
	ADDQ R12,CX
	MOVQ CX,AX
	SHRQ $51,CX
	ANDQ DX,R9
	ADDQ R14,CX
	MOVQ CX,R10
	SHRQ $51,CX
	ANDQ DX,AX
	IMUL3Q $19,CX,CX
	ADDQ CX,SI
	ANDQ DX,R10
	MOVQ SI,160(DI)
	MOVQ R8,168(DI)
	MOVQ R9,176(DI)
	MOVQ AX,184(DI)
	MOVQ R10,192(DI)
	MOVQ 144(SP),SI
	IMUL3Q $19,SI,AX
	MOVQ AX,0(SP)
	MULQ 96(SP)
	MOVQ AX,SI
	MOVQ DX,CX
	MOVQ 152(SP),DX
	IMUL3Q $19,DX,AX
	MOVQ AX,8(SP)
	MULQ 88(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 120(SP),AX
	MULQ 80(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 120(SP),AX
	MULQ 88(SP)
	MOVQ AX,R8
	MOVQ DX,R9
	MOVQ 120(SP),AX
	MULQ 96(SP)
	MOVQ AX,R10
	MOVQ DX,R11
	MOVQ 120(SP),AX
	MULQ 104(SP)
	MOVQ AX,R12
	MOVQ DX,R13
	MOVQ 120(SP),AX
	MULQ 112(SP)
	MOVQ AX,R14
	MOVQ DX,R15
	MOVQ 128(SP),AX
	MULQ 80(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 128(SP),AX
	MULQ 88(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 128(SP),AX
	MULQ 96(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 128(SP),AX
	MULQ 104(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 128(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 112(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 136(SP),AX
	MULQ 80(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 136(SP),AX
	MULQ 88(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 136(SP),AX
	MULQ 96(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 136(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 104(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 136(SP),DX
	IMUL3Q $19,DX,AX
	MULQ 112(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 144(SP),AX
	MULQ 80(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 144(SP),AX
	MULQ 88(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 0(SP),AX
	MULQ 104(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 0(SP),AX
	MULQ 112(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 152(SP),AX
	MULQ 80(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 8(SP),AX
	MULQ 96(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 8(SP),AX
	MULQ 104(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 8(SP),AX
	MULQ 112(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ $REDMASK51,DX
	SHLQ $13,CX:SI
	ANDQ DX,SI
	SHLQ $13,R9:R8
	ANDQ DX,R8
	ADDQ CX,R8
	SHLQ $13,R11:R10
	ANDQ DX,R10
	ADDQ R9,R10
	SHLQ $13,R13:R12
	ANDQ DX,R12
	ADDQ R11,R12
	SHLQ $13,R15:R14
	ANDQ DX,R14
	ADDQ R13,R14
	IMUL3Q $19,R15,CX
	ADDQ CX,SI
	MOVQ SI,CX
	SHRQ $51,CX
	ADDQ R8,CX
	MOVQ CX,R8
	SHRQ $51,CX
	ANDQ DX,SI
	ADDQ R10,CX
	MOVQ CX,R9
	SHRQ $51,CX
	ANDQ DX,R8
	ADDQ R12,CX
	MOVQ CX,AX
	SHRQ $51,CX
	ANDQ DX,R9
	ADDQ R14,CX
	MOVQ CX,R10
	SHRQ $51,CX
	ANDQ DX,AX
	IMUL3Q $19,CX,CX
	ADDQ CX,SI
	ANDQ DX,R10
	MOVQ SI,40(DI)
	MOVQ R8,48(DI)
	MOVQ R9,56(DI)
	MOVQ AX,64(DI)
	MOVQ R10,72(DI)
	MOVQ 160(SP),AX
	MULQ ·_121666_213(SB)
	SHRQ $13,AX
	MOVQ AX,SI
	MOVQ DX,CX
	MOVQ 168(SP),AX
	MULQ ·_121666_213(SB)
	SHRQ $13,AX
	ADDQ AX,CX
	MOVQ DX,R8
	MOVQ 176(SP),AX
	MULQ ·_121666_213(SB)
	SHRQ $13,AX
	ADDQ AX,R8
	MOVQ DX,R9
	MOVQ 184(SP),AX
	MULQ ·_121666_213(SB)
	SHRQ $13,AX
	ADDQ AX,R9
	MOVQ DX,R10
	MOVQ 192(SP),AX
	MULQ ·_121666_213(SB)
	SHRQ $13,AX
	ADDQ AX,R10
	IMUL3Q $19,DX,DX
	ADDQ DX,SI
	ADDQ 80(SP),SI
	ADDQ 88(SP),CX
	ADDQ 96(SP),R8
	ADDQ 104(SP),R9
	ADDQ 112(SP),R10
	MOVQ SI,80(DI)
	MOVQ CX,88(DI)
	MOVQ R8,96(DI)
	MOVQ R9,104(DI)
	MOVQ R10,112(DI)
	MOVQ 104(DI),SI
	IMUL3Q $19,SI,AX
	MOVQ AX,0(SP)
	MULQ 176(SP)
	MOVQ AX,SI
	MOVQ DX,CX
	MOVQ 112(DI),DX
	IMUL3Q $19,DX,AX
	MOVQ AX,8(SP)
	MULQ 168(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 80(DI),AX
	MULQ 160(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 80(DI),AX
	MULQ 168(SP)
	MOVQ AX,R8
	MOVQ DX,R9
	MOVQ 80(DI),AX
	MULQ 176(SP)
	MOVQ AX,R10
	MOVQ DX,R11
	MOVQ 80(DI),AX
	MULQ 184(SP)
	MOVQ AX,R12
	MOVQ DX,R13
	MOVQ 80(DI),AX
	MULQ 192(SP)
	MOVQ AX,R14
	MOVQ DX,R15
	MOVQ 88(DI),AX
	MULQ 160(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 88(DI),AX
	MULQ 168(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 88(DI),AX
	MULQ 176(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 88(DI),AX
	MULQ 184(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 88(DI),DX
	IMUL3Q $19,DX,AX
	MULQ 192(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 96(DI),AX
	MULQ 160(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 96(DI),AX
	MULQ 168(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 96(DI),AX
	MULQ 176(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 96(DI),DX
	IMUL3Q $19,DX,AX
	MULQ 184(SP)
	ADDQ AX,SI
	ADCQ DX,CX
	MOVQ 96(DI),DX
	IMUL3Q $19,DX,AX
	MULQ 192(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 104(DI),AX
	MULQ 160(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ 104(DI),AX
	MULQ 168(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 0(SP),AX
	MULQ 184(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 0(SP),AX
	MULQ 192(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 112(DI),AX
	MULQ 160(SP)
	ADDQ AX,R14
	ADCQ DX,R15
	MOVQ 8(SP),AX
	MULQ 176(SP)
	ADDQ AX,R8
	ADCQ DX,R9
	MOVQ 8(SP),AX
	MULQ 184(SP)
	ADDQ AX,R10
	ADCQ DX,R11
	MOVQ 8(SP),AX
	MULQ 192(SP)
	ADDQ AX,R12
	ADCQ DX,R13
	MOVQ $REDMASK51,DX
	SHLQ $13,CX:SI
	ANDQ DX,SI
	SHLQ $13,R9:R8
	ANDQ DX,R8
	ADDQ CX,R8
	SHLQ $13,R11:R10
	ANDQ DX,R10
	ADDQ R9,R10
	SHLQ $13,R13:R12
	ANDQ DX,R12
	ADDQ R11,R12
	SHLQ $13,R15:R14
	ANDQ DX,R14
	ADDQ R13,R14
	IMUL3Q $19,R15,CX
	ADDQ CX,SI
	MOVQ SI,CX
	SHRQ $51,CX
	ADDQ R8,CX
	MOVQ CX,R8
	SHRQ $51,CX
	ANDQ DX,SI
	ADDQ R10,CX
	MOVQ CX,R9
	SHRQ $51,CX
	ANDQ DX,R8
	ADDQ R12,CX
	MOVQ CX,AX
	SHRQ $51,CX
	ANDQ DX,R9
	ADDQ R14,CX
	MOVQ CX,R10
	SHRQ $51,CX
	ANDQ DX,AX
	IMUL3Q $19,CX,CX
	ADDQ CX,SI
	ANDQ DX,R10
	MOVQ SI,80(DI)
	MOVQ R8,88(DI)
	MOVQ R9,96(DI)
	MOVQ AX,104(DI)
	MOVQ R10,112(DI)
	RET
