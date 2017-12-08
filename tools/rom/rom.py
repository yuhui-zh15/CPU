#coding=utf-8

f = open('loader.bin', 'rb')

cnt = 0
while True:
    s = f.read(4).encode('hex')
    if len(s) == 0: break
    print '10\'h' + hex(cnt)[2:] + ': inst <= 32\'h' + s +';' 
    cnt += 1


