
#_-------------------------------№1

lst = list(input().split())
a = ""
print(f"Первый элемент списка: {lst[0]}, последний элемент списка: {lst[-1]}")
a = lst[0]
lst[0] = lst[-1]
lst[-1] = a
print(lst)

#--------------------------------------------------------------№2

lst = list(input().split())
if len(lst)%2 == 0:
    print(f"Элементы середины списка: {lst[int(len(lst)/2)]} {lst[int(len(lst)/2)]+1}")
else: print(f"Элемент середины списка: {lst[int(len(lst)/2)]}")

#------------------------------------------------------------------№3

lst = [i for i in range(11)]
chet = []
for i in lst:
    if i %2== 0:
        chet.append(i)
print(f"Первые три элемента: {lst[:3]}\nПоследние три элемента: {lst[-3:]}\nЧётные элементы: {chet}\nСписок в обратном порядке: {lst[::-1]}")

#------------------------------№4

lst = []
for i in range(4):
    lst.append(i)
lst.insert(0,6)
print(lst.pop(-1))

#-------------------------------------------№5

lst = list(map(int,input().split()))
print(f"Длина списка: {len(lst)}\nСумма элементов списка: {sum(lst)}\nМинимум и максимум списка: {min(lst)}, {max(lst)}\nСреднее арифметическое: {sum(lst)/len(lst)}")

#---------------------------------------------------------№6

lst = list(input().split(","))
b = int(input())
print(f"Есть ли х в списке: {b in lst}\nx встречаться в списке {lst.count(str(b))} раз")

#------------------------------------------------------------------№7

lst = list(map(int,input().split()))
print(f"Три наименьших: {sorted(lst)[:3]}\nТри наибольших: {sorted(lst)[-3:]}")

#-----------------------------------------------------------------------№8

fLst = list(map(int,input().split()))
sLst = list(map(int,input().split()))
fLst.extend(sLst)
fLst.sort(reverse=True)
print(f"Второй элемент по убыванию: {fLst[-2]}")

#------------------------№9

a = input()
a = list(a.split())
a.sort()
a = ",".join(a)
print(a)

#--------------------------------------------------№10

lst = list(input().split())
k = int(input())
lst = lst[-k:] + lst[:-k]
print(lst)