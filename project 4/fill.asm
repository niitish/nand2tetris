// R0: tracks which pixel to fill

(INIT)
  @8192 // total number of lines (32*256)
  D=A
  @R0
  M=D

(LOOP)
  // to fill screen backwards
  @R0
  M=M-1
  D=M

  // jump to init when all pixels are filled
  @INIT
  D;JLT

  // check if any key is pressed
  @KBD
  D=M
  
  // jump to blacken the screen when any char is pressed
  @BLACK
  D;JGT
  
  // else jump to whiten it
  @WHITE
  D;JEQ

(BLACK)
  @SCREEN
  D=A

  @R0
  A=D+M
  M=-1

  @LOOP
  0;JMP

(WHITE)
  @SCREEN
  D=A

  @R0
  A=D+M
  M=0

  @LOOP
  0;JMP



