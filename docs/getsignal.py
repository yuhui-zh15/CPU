import os
import sys

filename = sys.argv[1]
start = int(sys.argv[2])
end = int(sys.argv[3])

cnt = 0

d = {'AluOpBus':'8','AluSelBus':'3','InstAddrBus':'32','InstBus':'32','RomBus':'10','DataAddrBus':'32','DataBus':'32','RegAddrBus':'5','RegBus':'32','DoubleRegBus':'64','TlbBus':'96'}

with open(filename) as f:
    for line in f:
        cnt += 1
        if (cnt < start or cnt > end): continue
        line = line.strip()
        if len(line) == 0: continue
        if line[0] != 'i' and line[0] != 'o': continue
        if line[-1] == ',': line = line[:-1]
        
        splitline = line.split(' ')
        split2 = splitline[1].split('[')
        if len(split2) == 1:
            print splitline[0] + ' & ' + splitline[1] + ' & 1 & ' + splitline[2].replace('_', '\\_') + ' & & \\\\' 
        else:
            split3 = split2[1].split(':')
            if len(split3) == 1:
                print splitline[0] + ' & ' + split2[0] + ' & ' + d[split3[0][1:-1]] + ' & ' + splitline[2].replace('_', '\\_') + ' & & \\\\' 
            else:
                print splitline[0] + ' & ' + split2[0] + ' & ' + str(int(split3[0]) + 1) + ' & ' + splitline[2].replace('_', '\\_') + ' & & \\\\' 

        
        
        
