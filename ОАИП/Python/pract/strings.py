# 1. 

string = input('Введите строку: ')

print(f"Длина строки: {len(string)}\nПервый символ: {string[0]}. Последний символ: {string[-1]}")

# 2.
string = input("Введите строку: ")

lenght = len(string)

if lenght==0:
    print("Строка пустая")
elif lenght % 2 != 0:
    middle = string[lenght//2]
    print(f"Средний символ:{middle}")
else:
    middle_1 = string[(lenght//2)-1]
    middle_2 = string[lenght//2]
    print(f"Средние символы: {middle_1},{middle_2}")

# 3.

string = input("Введите строку: ")

print(f"Первые три символа строки:{string[:3]}\nПоследние три символа строки:{string[-3:]}\nСимволы с четными индексами:{string[::2]}\nСтрока в обратном порядке:{string[::-1]}")

# 4. 

str = input("Введите строку: ")

print(f"Строка в верхнем регистре: {str.upper()}\nСтрока в нижнем регистре: {str.lower()}\nСтрока с заглавной буквы: {str.capitalize()}")

# 5. 

str = input("Введите строку: ")
c = input("Введите символ с для поиска: ")

if c in str:
    print(f"Символ {c} есть в строке")
    print(f"Встречается {str.count(c)} раз")
    print(f"Индекс первого вхождения: {str.find(c)}")
else:
    print(f"Символа {c} нет в строке")

# 6. 

str = "Мороз и солнце день чудесный"
str = str.replace(" ",",")
print(str)


# 7. 

str = "    Мороз и солнце день чудесный\nЕщё ты дремлешь друг прелестный         "
print(str.strip())

# 8.
str = "Казимир Краснов"
str= str.split(" ")
print(f"Имя - {str[0]}, фамилия - {str[1]}, инициалы - {str[0][0]}.{str[1][0]}.")

# 9.
str=input()
str_low=str.lower()
str_reverse=""
for i in range(len(str_low)):
    st_reverse+=str_low[-(i+1)]
if str_low == str_reverse:
    print("Строка является палинтропом")
else:
    print("Строка не является палинтропом")

# 10. 
str = "Мой мир погрузился во мрак Мёртвый ландшафт и холодная мгла"
str=str.split(" ")
print(f"Количество слов в строке - {len(str)}, первое слово - {str[0]}, последнее слово - {str[-1]}")
