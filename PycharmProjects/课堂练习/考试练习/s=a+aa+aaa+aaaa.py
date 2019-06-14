a=str(input("请输入一个数字"))
list=[]
print("s",end="=")
for i in range(1,6):
    num=a*i
    i+=1
    list.append(num)
    print("+",num,end="")
