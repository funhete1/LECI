import java.util.Scanner;
class cf{
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        System.out.printf("What temperature: ");
        float n = input.nextFloat();
        System.out.printf("%.2f ºCelsius é equivalente a %.2f ºFahrenheit\n", n, 1.8 * n + 32);
        }
}