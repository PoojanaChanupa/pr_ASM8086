DOSSEG
.MODEL SMALL
.STACK 100h

.DATA
 str1 DB 'Hello $'
 str2 DB 13, 'world!','$'

.CODE
 main:
  MOV AX, @DATA
  MOV DS, AX
  ; MOV DS, @DATA

 MOV DX, OFFSET str1
 ;LEA SX, str1
 MOV AX, 0900h
 ; MOV AH, 09h
 INT 21

 MOV DX, OFFSET str2
 MOV AX, 0900h
 INT 21h

 MOV AX, 4C00h
 INT 21h
END main
