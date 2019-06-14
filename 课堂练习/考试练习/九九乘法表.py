#九九乘法表.py
for i in range(1,10):
    for j in range(1,10):
        if i <=j:
            print(i,'*',j,'=',i*j,end=" ")
            j+=1
    i+=1
    print()
