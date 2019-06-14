# # 用户输入数字
# num = int(input("请输入一个数字: "))
#
# # 质数大于 1
# if num > 1:
#     # 查看因子
#     for i in range(2, num):
#         if (num % i) == 0:
#             print(num, "不是质数")
#             print(i, "乘于", num // i, "是", num)
#             break
#     else:
#         print(num, "是质数")
#
# # 如果输入的数字小于或等于 1，不是质数
# else:
#     print(num, "不是质数")
























#让用户输入数字
num=eval(input("请输入一个数字"))
if num==1 or num ==2:
    print("是质数")
else:
    for i in range(2,num):
        if i%num==0:
            print("是质数")
            break
        else:
            i+=1
    print("不是质数")