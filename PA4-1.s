
	@	Put the required header information here

	.extern printf
	.extern scanf
	.global main
	.func main
main:
	PUSH	{LR}
	LDR	R2, =startval 	@ get addr of startval
	LDR	R2, [R2]	@ Load startval -> R2
	LDR	R3, =endval	@ get addr of endval
	LDR	R3, [R3]	@ Load endval -> R3
	@-------------
	@ Your code begins here
	MOV R1, #0      @ PLACES THE VALUE OF 0 IN R1
_loop:
    CMP R2, R3      @COMPARES R2,R3
    ADDLE R1, R1, R2@adds r1 and r2
    ADDLE R2, R2, #1@adds 1 to r2
    BLE _loop        @starts the loop over




	@ Your code must put the final answer
	@ in R1.
	@-------------



	@-------------
	@ Do NOT alter code past this line.
	@-------------
	LDR	R0, =out
	BL	printf
	POP	{PC}

.data
startval:	.word 1
endval:		.word 5
out:		.asciz "%d\n"
