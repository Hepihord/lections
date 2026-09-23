while True:
    a = input("Введите пожалуйста два числа по одному в каждой строкe\n")
    b = input()
    if (a is a) or (b is b):
        try:
            a = float(a)
            b = float(b)
            c = input("Выберите оператор:\n1.Сравнения\n2.Арифметический\n3.Выход\n")
            match c:
                case "1":
                    c = input("Выберите оператор:\n1.>\n2.<\n3.==\n4.!=\n5.>=\n6.<=\n")
                    print("Результат сравнения: ", end ="")
                    match c:
                        case "1":
                            print(a>b)
                        case "2":
                            print(a<b)
                        case "3":
                            print(a==b)
                        case"4":
                            print(a!=b)
                        case "5":
                            print(a>=b)
                        case"6":
                            print(a<=b)
                        case _:
                            print("Неверный ввод")
                case "2":
                    c = input("Выберите оператор:\n1.+\n2.-\n3.*\n4./\n5.//\n6.%\n7.**\n")
                    match c:
                        case "1":
                            print(f"Результат сложения: {a+b}")
                        case "2":
                            print(f"Результат вычитания: {a-b}")
                        case "3":
                            print(f"Результат умножения: {a*b}")
                        case"4":
                            if not(b == 0):
                                print(f"Результат деления: {a/b}")
                            else: print("на ноль делить нельзя")
                        case "5":
                            print(f"Результат целочисленного деления: {a//b}")
                        case"6":
                            print(f"Результат поиска остатка от деления: {a%b}")
                        case"7":
                            print(f"Результат возведения в степень: {a**b}")
                        case _:
                            print("Неверный ввод")
                case "3":
                    print("работа программы завершена")
                    break
                case _:
                    print("Неверный ввод")
        
        except: print("Неверный ввод")
    elif (a is not a):
        print("конец работы")
        break