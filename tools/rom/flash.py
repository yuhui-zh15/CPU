#coding=utf-8

f = open('ucore.img', 'rb')

cnt = 0
while True:
    s = f.read(2).encode('hex')
    if len(s) == 0: break
    print s  
    cnt += 1


