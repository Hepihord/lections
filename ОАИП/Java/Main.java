import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Write down two numbers\n");
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        System.out.println("Result of addition:"+ (a+b)+"\nDifference:" + (a-b) +"\nResult of multiplication:" + (a*b) + "\nResult of division:" + (a/b) + "\nResult of division with reminder:" + (a%b) + "\nResult of exponentation:" + (Math.pow(a,b)) + "\nMiddle ariphmetic:" + ((a+b)/2));

        scanner.close();
    }
};