#CalThreeKingsV1.py
import jieba
txt=open("/Users/zhangxintong/Documents/python练习/threekingdoms.txt","r").read()
words=jieba.lcut(txt)
counts={}
for word in words:
    if len(word)==1:
        continue
    else:
        counts[word]=counts.get(word,0)+1
    items=list(counts.items())
    items.sort(key=lambda x:x[1],reverse=True)
    for i in range (15):
        word,count = items[i]
        print("{0:<10}{0:>5}".format(word,count))