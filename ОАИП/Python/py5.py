# Списки в Python
'''
a = list()  #Объявление списка

x = "7"
b = [1,2,3,4,5,6,7,8]


a.clear() #очистить список
a.append(x) #вставить элемент
a.remove(x) #удалить элемент по значению
a.insert(0,x) #вставить элемент по индексу
a.extend(b) #дописывает список в список
a.pop() #удалить элемент по индексу (по умолчанию последний)
a.index(x) #возвращает индекс элемента
a.count(x) #посчитать кол-во тех или иных элементов в списке
a.remove(x) #удалить элемент по значению
a.sort(reverse=True) #остортировать список по тому-или иному признаку
# c = a.sorted() #возвращает отсортированый список --- ПИЗДЁЖ

# Срезы также применимы и по отношению к спискам

len(a) #длина списка

u = [i for i in range(10)]

a = [[1,2,3,4,5],[6,7,8,9,10]]

print(a, u)

a = "xvgyhnumij xgbyhnijmok, nigycftvyhbunijokmn poihougifyudtyrsteazsdfxycg hbjnbhvjbnoiihvjkbnuh"

n,*k,l = a.split() # * указывает на то, что объект возьмёт в себя столько значений, сколько нужно
'''
import random
nums = [i for i in range(1,11)]
myNumber = nums[random.randint(0,9)]
tries = 3
print("Было загадано число от 1 до 10, ваша задача - угадать\nУ вас есть 3 попытки")
for i in range(1,tries+1):
    guess = int(input("Введите число: "))
    if guess == myNumber:
        print("Вы угадали!")
        break
    else:
        if i != tries:
            print(f"Вы не угадали, осталось попыток: {tries-i}")
        else: print("Вы проиграли")