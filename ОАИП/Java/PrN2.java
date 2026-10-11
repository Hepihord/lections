import java.util.Scanner;
public class PrN2
{
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Введите число, множители которого будут рассчитаны");
		int num = scanner.nextInt();
        System.out.println("Введите нижнюю границу диапазона");
        int lowBorder = scanner.nextInt();
        System.out.println("Введите верхнюю границу диапазона");
        int highBorder = scanner.nextInt();
        for (; lowBorder <= highBorder; lowBorder++){
            System.out.println((num*lowBorder)+"\t"+(lowBorder));
        }
	}
}
