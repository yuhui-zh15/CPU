_start:
   ori  $3,$0,0xeeff
   sb   $3,0x3($0)       
   srl  $3,$3,0x8
   sb   $3,0x2($0)       
   ori  $3,$0,0xccdd
   sb   $3,0x1($0)       
   srl  $3,$3,0x8
   sb   $3,0x0($0)       
   lb   $1,0x3($0)       
   lbu  $1,0x2($0)       
   nop

   ori  $3,$0,0xaabb
   nop      
   nop       
   nop       
 
   ori  $3,$0,0x8899
   nop       
   nop       
   nop       

   ori  $3,$0,0x4455
   sll  $3,$3,0x10
   ori  $3,$3,0x6677     
   sw   $3,0x8($0)       
   lw   $1,0x8($0)       

   nop
   nop      

   nop
   nop
   nop      

   lw   $1, 0x0($0)      
   lw   $1, 0x4($0)      
    
_loop:
   j _loop
   nop
