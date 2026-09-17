using System;
using System.Formats.Asn1;

class Program
{
    static void Main()
    {
        Console.WriteLine("Пожалуйста введите четыре переменные, к которым будет применена формула вида y = (42c - d/2 + 1)/(a^2 - ln(b - 5))\nПеременные необходимо вводить каждую в отдельной строке");

        double a,b,c,d;

        a = Convert.ToDouble(Console.ReadLine());
        b = Convert.ToDouble(Console.ReadLine());
        c = Convert.ToDouble(Console.ReadLine());
        d = Convert.ToDouble(Console.ReadLine());
        double answer = c * Math.Atan(b+23)/(a/2 - 4d - 1);

        Console.WriteLine($"Результат равен {answer:F3}");
    }  
};