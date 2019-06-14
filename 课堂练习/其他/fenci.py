

# file= open('/Users/elsazhang/Desktop/para.txt')
# def count_10():
#     import collections
#     for line in file:
#         seg=line.split()
#     freq_most=collections.Counter(seg).most_common(10)
#     print(freq_most)
#
# count_10()
#
# import nltk
# from nltk.tokenize import WordPunctTokenizer
# file=open('/Users/elsazhang/Desktop/para.txt')
# #打开文件
# text1=file.read()
# #读取文件
# words=nltk.word_tokenize(text1)
# #分词
# punc=[',',':','.']
# word_list = [word for word in words if word not in punc]
# fdist1= nltk.FreqDist(word_list)
# print(fdist1.most_common(10))

#textprobar.py
# import time
# scale = 100
# print("执行开始".center(scale//2,"-"))
# start=time.perf_counter()
# for i in range(101):
# 	a='*'*i
# 	b='.'*(scale-i)
# 	c=(i/scale)*100
# 	dur=time.perf_counter() - start
# 	print("\r{:^3.0f}%[{}->{}]{:.2f}s".format(c,a,b,dur),end="")
# 	time.sleep(0.1)
# print("\n"+"执行结束".center(scale//2,'-'))

#CalBmiV3.py
# height,weight=eval(input("请输入身高(cm)体重(kg)并用逗号隔开"))
# bmi=weight/ pow(height,2)
# print("BMI的数值为:{:.2f}".format(bmi))
# who,nat="",""
# if bmi < 18.5:
# 	who,nat="偏瘦","偏瘦"
# elif 18.5<= bmi< 24:
# 	who,nat="正常","正常"
# elif 24<=bmi<25:
# 	who,nat="正常","偏胖"
# elif 25<=bmi<28:
# 	who,nat="偏胖","偏胖"
# elif 28<=bmi<=30:
# 	who,nat="肥胖","肥胖"
# print("国际BMI结果为{},国内BMI结果为{}".format(who,nat))

#Calpiv2.py
# from random import random
# from time import perf_counter
# DARTS=1000*1000
# hits=0.0
# start=perf_counter()
# for i in range(1,DARTS+1):
# 	x,y=random(),random()
# 	dist=pow(x**2+y**2,0.5)
# 	if dist<=1.0:
# 		hits=hits+1
# pi=4*(hits/DARTS)
# print("圆周率的值是：{}".format(pi))
# print("运行时间是：{:.5f}s".format(perf_counter()-start))

# import turtle
# def drawLine(draw):
# 	turtle.pendown() if draw else turtle.penup()
# 	turtle.fd(40)
# 	turtle.right(90)
# def drawDigit(digit):
# 	drawLine(True) if digit in[2,3,4,5,6,8,9] else drawLine(False)
# 	drawLine(True) if digit in [0,1,3,4,5,6,7,8,9] else drawLine(False)
# 	drawLine(True) if digit in [0,2,3,5,6,8,9] else drawLine(False)
# 	drawLine(True) if digit in [0,2,6,8] else drawLine(False)
# 	turtle.left(90)
# 	drawLine(True) if digit in [0,4,5,6,8,9] else drawLine(False)
# 	drawLine(True) if digit in [0,2,3,5,6,7,8,9] else drawLine(False)
# 	drawLine(True) if digit in [0,1,2,3,4,7,8,9,] else drawLine(False)
# 	turtle.left(180)
# 	turtle.penup()
# 	turtle.fd(20)
# def drawDate(date):
# 	for i in date:
# 		drawDigit(eval(i))
# def main():
# 	turtle.setup(800,350,200,200)
# 	turtle.penup()
# 	turtle.fd(-300)
# 	turtle.pensize(5)
# 	drawDate('20181010')
# 	turtle.hideturtle()
# 	turtle.done
# main()

#KochDrawV1.py
import turtle as t
def koch(size,n):
	if n ==0:
		t.fd(size)
	else:
		for angle in[0,60,-120,60]:
			t.left(angle)
			koch(size/3,n-1)
def main():
	t.setup(600,600)
	t.penup()
	t.goto(-200,100)
	t.pendown()
	t.pensize(2)
	level=3
	koch(400,level)
	t.right(120)
	koch(400,level)
	t.right(120)
	koch(400,level)
	t.hideturtle()
main()