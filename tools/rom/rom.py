#coding=utf-8

f = open('boot.bin', 'rb')

cnt = 0
while True:
    s = f.read(4).encode('hex')
    if len(s) == 0: break
    print '10\'h' + hex(cnt)[2:] + ': inst <= 32\'h' + s[6:8]+s[4:6]+s[2:4]+s[0:2] +';' 
    cnt += 1


