import java.util.Scanner;
class dpe{
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        System.out.printf("Quantos dolares e qual a taxa de conversao: ");
        float n = input.nextFloat();
        float i = input.nextFloat();
        System.out.printf("%.2f dólares equivalem a %.2f euros.\n", n, n * i);
    }
}