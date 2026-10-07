# a = "zdsfxomj,l"
# ! a[0] = "h" - нельзя
# a = "h" + a[1:3]
# print(a)
# срез - операция, создающая новую строку на основе исходной
# string[start:end:step]
# start - начало среза(включительно)
# end - конец среза(невключительно)
# step - шаг, с которым происходит срез
# import random
# a = str(random.randbytes(15))
# print(a[4:10])
# print(a[::1])
# print(a[::2])

# for i in range(1,len(a)):
#     print(a[::i])

# a = "python"
# print("P"+a[1:])

# # конкатинация - объединение/склеивание строк
# примеры конкатинации:
#     "ergbyhnumij" + "zesxgbunijokm,"
#     "dvgbyhnu" * 5

# форматирование строк

# name = "Ann"
# age = 32
# all = f"{name} {age}"

# методы строки:
# .find(найти начало слова)                     - найти индекс начала слова
# .replace(что заменить, на что заменить)       - заменить одни символы на другие
# .count(что искать)                            - ищет кол-во того или иного символа
# .lower()                                      - делает все буквы строчными
# .upper()                                      - делает все буквы заглавными
# .capitalize()                                 - делает все слова с заглавной буквы
# .index(индекс чего искать)                    - выводит индекс символа
# .title()                                      - делает все слова заглавными буквами
# .swapcase()                                   - меняет строчные на заглавные и наоборот
# .strip()                                      - удаляет пробелы в начале строки
# .spit(символ-точка разделения)                - делит строку по символу(по умолчанию пробел)
# .join()                                       - объединяет строки в одну
# .center(то, на сколько центрировать)          - центрировать строку
# .ljust(отступ)                                - ориентировать строку налево
# .rjust(отступ)                                - ориентировать строку направо

# v = "我肏你妈"
# print(v)

string = "PythonProgramming"
print(f"{string[:6]}\n{string[-6:]}\n{string[5:10]}\n{string[::-1]}")

s = "abcdefghij" 
print(f"{s[::2]}\n{s[1::2]}\n{s[::3]}\n{s[8:2:-1]}")

s = "Hello World!"
print(list(s.split())[1][:-1],"\n")

s = "python"
print(s.center(20),"\n",s.ljust(20),"\n",s.rjust(20))

s = "banana,apple,cherry,orange"
s = s.split(",")
s = "-".join(s)
print(f"{s}\n{s.count("a")}\n{s.find("cherry")}\n{s.replace("apple","kiwi")}")