import java.util.Scanner;

public class Calculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner (System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();

        System.out.println("Please select the operation\n1.Sum\n2.Diff\n3.Multiplication\n4.Division\n");
        int operation = scanner.nextInt();

        switch (operation){
            case 1:
                System.out.println(a+b);
                break;
            case 2:
                System.out.println(a-b);
                break;
            case 3:
                System.out.println(a*b);
                break;
            case 4:
                System.out.println("Witch type of division would you like?\n1.Solid\n2.With reminder");
                operation = scanner.nextInt();
                if (operation == 1){
                    System.out.println(a/b);
                }
                else if (operation == 2){System.out.println(a%b);}
                break;
            default:
                System.out.println("Incorrect data");
                break;
        }
        scanner.close();
    }
};