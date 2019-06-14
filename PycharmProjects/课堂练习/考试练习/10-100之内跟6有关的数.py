for i in range(1,101):
    if i%6 ==0 or i%10==0 or i in [10,100]:
        print(i)
        i+=1
