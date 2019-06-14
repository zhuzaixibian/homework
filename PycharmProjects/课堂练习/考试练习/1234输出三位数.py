count=0
numlist=[]
for i in range(1,5):
    for j in range(1,5):
        for k in range(1,5):
            if i!=j and i!=k and k!=j:
                num=100*i+10*k+j
                count+=1
                numlist.append(num)
print(count)
print(numlist)