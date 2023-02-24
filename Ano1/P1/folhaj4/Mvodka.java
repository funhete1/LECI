import java.util.Scanner;

class Mvodka{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[]  args){
        System.out.println("Introduza um X e um Y.");
        int X = AT.nextInt();
        int Y = AT.nextInt();
        int soma = 0;
        boolean TF = X % 2 != 0;
        System.out.println(" X  |  Y  | soma");
        System.out.println("----------------");
        System.out.printf("%3d | %3d | %b \n", X, Y, TF);
        if(TF){
            soma = soma + Y;
        }
        while(X != 1){
            X /= 2;
            Y *= 2;
            TF = X % 2 != 0;
            System.out.printf("%3d | %3d | %b \n", X, Y, TF );
            if (TF){
                soma = soma + Y;
            }
        }
        System.out.println("----------------");
        System.out.printf("soma: %d\n", soma);
    }
}