import jieba
file = open('/Users/elsazhang/Desktop/政府工作报告1000句.txt', 'r')
text = file.readlines()

file = open('/Users/elsazhang/Desktop/写入.txt', 'w')
for line in text:
    seg_list = jieba.cut(line)
    for word in seg_list:
        file.write(str(word)+ ' ')