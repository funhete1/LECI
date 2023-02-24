import java.lang.Math;
import java.util.Scanner;
class tri{
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        double B, A, C, y;
        System.out.println("Qual a base ?");
        B = input.nextDouble();
        System.out.println("Qual a altura ?");
        A = input.nextDouble();
        C = Math.sqrt(Math.pow(B, 2) + Math.pow(A, 2));
        y = Math.asin(B / C);
        System.out.printf("Hipotenusa = %.1f\n", C);
        System.out.printf("Angulo entre A e C = %.2f°\n", (y * 180) / 3.14);
    }
}