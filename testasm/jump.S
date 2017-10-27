j    0x20
ori  $1,$0,0x0002   
ori  $1,$0,0x1111
ori  $1,$0,0x1100

ori  $1,$0,0x0003   
jal  0x40
div  $zero,$31,$1   
                    
ori  $1,$0,0x0005   
ori  $1,$0,0x0006   
j    0x60
nop
  
jalr $2,$31           
or   $1,$2,$0        
ori  $1,$0,0x0009    
ori  $1,$0,0x000a    
j 0x80
nop

ori  $1,$0,0x0007    
jr   $2           
ori  $1,$0,0x0008    
ori  $1,$0,0x1111
ori  $1,$0,0x1100

nop