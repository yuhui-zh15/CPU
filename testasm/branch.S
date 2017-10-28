   ori  $3,$0,0x8000 
   sll  $3,$3,16               
   ori  $1,$0,0x0001        
   beq  $0,$0,s1    
   ori  $1,$0,0x0002        
   ori  $1,$0,0x1111
   ori  $1,$0,0x1100

   .org 0x20
s1:
   ori  $1,$0,0x0003 

   ori  $1,$0,0x1100
   ori  $1,$0,0x1111
   bne  $1,$0,s3
   nop
   ori  $1,$0,0x1100
   ori  $1,$0,0x1111

   .org 0x50   
s2:
   ori  $1,$0,0x0004      
   beq  $3,$3,s3           
   or   $1,$31,$0         
   ori  $1,$0,0x1111
   ori  $1,$0,0x1100
L2:
   ori  $1,$0,0x0007      
   ori  $1,$0,0x0008      
   bgtz $1,s4
   ori  $1,$0,0x0009      
   ori  $1,$0,0x1111
   ori  $1,$0,0x1100

   .org 0x80
s3:
   ori  $1,$0,0x0005      
   BGEZ $1,L2           
   ori  $1,$0,0x0006      
   ori  $1,$0,0x1111
   ori  $1,$0,0x1100

   .org 0x100
s4:
   ori  $1,$0,0x000a      
   nop
   or   $1,$0,$31         
   ori  $1,$0,0x000b      
   ori  $1,$0,0x000c      
   ori  $1,$0,0x000d      
   ori  $1,$0,0x000e      
   bltz $3,s5
   ori  $1,$0,0x000f      
   ori  $1,$0,0x1100


   .org 0x130
s5:
   ori  $1,$0,0x0010      
   blez $1,L2           
   ori  $1,$0,0x0011      
   ori  $1,$0,0x0012      
   ori  $1,$0,0x0013      
   nop
   or   $1,$0,$31         
   ori  $1,$0,0x1100


   .org 0x160
s6:
   ori $1,$0,0x0014       
   nop