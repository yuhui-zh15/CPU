ori $1, $0, 0x1100
ori $2, $0, 0x0020
ori $3, $0, 0xff00
ori $4, $0, 0xffff
lui $1, 0x0000
lui $2, 0xffff
lui $3, 0x0505
lui $4, 0x0000
mthi $0
mthi $2
mthi $3
mfhi $4
mtlo $3
mtlo $2
mtlo $1
mflo $4
