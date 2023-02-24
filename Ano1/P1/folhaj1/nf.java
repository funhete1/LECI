import java.util.Scanner;
class nf{
    public static void main(String[] args)
    {
        Scanner input = new Scanner(System.in);
        float a, b, c, d, e, f;
        System.out.println("Teste Pratico 1: ");
        a = input.nextFloat();
        System.out.println("Teste Pratico 2: ");
        b = input.nextFloat();
        System.out.println("Teste Teórico Prático 1: ");
        c = input.nextFloat();
        System.out.println("Teste Teórico Prático 2: ");
        d = input.nextFloat();
        System.out.println("Teste Teórico Prático 3: ");
        e = input.nextFloat();
        System.out.println("Questões nas aulas TP: ");
        f = input.nextFloat();
        System.out.printf("Nota final: %.2f\n", a * 0.25 + b * 0.35 + c * 0.10 + d * 0.10 + e * 0.10 + f * 0.10);
        }
}