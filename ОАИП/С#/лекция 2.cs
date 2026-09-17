using System;

class Program
{
    static void Main()
    {
        int age;
        Console.Write("please enter your age");
        age = Convert.ToInt32(Console.Read());
        
        if (age >= 18)
        {
            int score = Convert.ToInt32(Console.Read());

            if (0 <= score < 50)
            {
                Console.Write("bad\n");
            }
            else if (50 <= score < 75)
            {
                Console.Write("normal\n");
            }
            else
            {
                Console.Write("good");
            }
        }

    }  
};