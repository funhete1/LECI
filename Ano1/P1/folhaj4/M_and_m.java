import java.util.Scanner;

class M_and_m{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[]  args){
        System.out.println("Enter 2 numbers: ");
        double a = AT.nextDouble();
        double max = a;
        double min = a;
        double media = a;
        double counter = 1;
        while(true){
            System.out.println("Enter another one: ");
            double n = AT.nextDouble();
            if (a == n) break;
            max = Math.max(max, n);
            min = Math.min(min, n);
            counter ++;
            media = (((media * counter) + n) / counter);
        }
        System.out.printf("Valor máximo: %.2f\n", max);
        System.out.printf("Valor mínimo: %.2f\n", min);
        System.out.printf("Valor medio: %.2f\n", media);
        System.out.printf("Valor medio: %.2f\n", media);
        System.out.printf("Numero de elementos: %.2f\n", counter);
    }

}