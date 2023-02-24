import java.util.Scanner;

class Notzero{
    public static final Scanner AT = new Scanner(System.in);

    public static void main (String[] args){
        System.out.println("Poem qualquer numero ai: ");
        double a = AT.nextDouble();
        double b = a;
        while(a != 0){
            System.out.println("Poem qualquer numero ai: ");
            a = AT.nextDouble();
             if(a != 0){
                b = a * b;
             }
        }
        System.out.printf("Produto: %.2f\n", b);
    }
}