// initialize R3=0, loop variable
@R3
M=0

// initialize R2=0 
@R2
M=0

(LOOP)
  // if R3>=R1=>end
  @R3
  D=M
  @R1
  D=D-M // D=R3-R1
  @END
  D;JGE // jump if R3>=R1

  // otherwise, do R2=R2+R0
  @R0
  D=M
  @R2
  M=D+M

  // R3++
  @R3
  M=M+1

  // jump back to LOOP unconditionally
  @LOOP
  0;JMP

(END)
@END
0;JMP
