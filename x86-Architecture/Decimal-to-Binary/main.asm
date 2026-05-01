include inout.asm
.486
.model small,c
.stack
.const 
.DATA 
     msg1 db "Enter the integer : $"
	 msg2 db "The converted integer is : $"
	 conv dw 10 dup(?)
	 num dw ?
	 
.code 
	.STARTUP
	call endl
	call puts,offset msg1
	call getint
	
	xor bx,bx
	add bx,2
next:
	CWD 
	div bx
	or DX,DX
	JNZ one
	JZ zero
	jmp skip
one: 
    call putint,1
    jmp skip
zero: call putint,1
	  
skip:or AX,AX
	 JNZ next
	 
	 call endl
	 .exit
	 end
	
