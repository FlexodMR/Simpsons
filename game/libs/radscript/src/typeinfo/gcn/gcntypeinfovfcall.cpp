//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


asm int InvokeVf( void * pClass, unsigned int offset, unsigned int * pInts, float * pFloats )
{
	nofralloc
	
	mflr 	r0       	  		// move from link register to r0
	stw 	r0,4(rsp) 	  		// save return address on caller's stack
	stwu    rsp,-32(rsp)  		// build 32 byte stack frame, (automatically updates sp)
	stw     r31, 28(rsp)        // save contents of non-volatile registers we use for scratch
	stw     r30, 24(rsp)        // ...
	
	mr		r31, r6             // r31 holds floats
	mr      r30, r5             // r30 holds ints
 	mr      r11, r4             // r11 holds offset
 	mr      r12, r3			    // r12 holds this
 	
 	lwz		r4, 0(r30)			// load all of the int registers
 	lwz     r5, 4(r30)
 	lwz     r6, 8(r30)
 	lwz     r7, 12(r30)
 	lwz     r8, 16(r30)
 	lwz		r9, 20(r30)
 	lwz     r10, 24(r30)
 	
 	lfs		fp1, 0(r31)
 	lfs     fp2, 4(r31)
 	lfs     fp3, 8(r31)
 	lfs     fp4, 12(r31)
 	lfs     fp5, 16(r31)
 	lfs     fp6, 20(r31)
 	lfs     fp7, 24(r31)
 	lfs     fp8, 28(r31)
 	
 	lwz		r12, 0(r3)		// get the vtable pointer
	slwi	r11,r11,2
	addi	r11,r11,4
 	add		r12, r12, r11	// index into the vtable
 	lwz		r12, 0(r12)    
 	mtlr    r12				// get ready to jump
 	blrl					// jump and link
 	
 	lwz		r0,36(rsp)		// get our return address back
 	lwz		r31,28(rsp)		// restore our saved registers
 	lwz		r30, 24(rsp)	// ...
 	addi	rsp,rsp,32      // put the stack pointer back for the caller
 	mtlr	r0				// load the link register
 	blr						// and return. (return value preserved from last function call )
}
