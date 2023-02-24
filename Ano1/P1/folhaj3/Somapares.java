import java.util.Scanner;

class Somapares{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        System.out.println("Enter a number between 0 & 1000.");
        int n = AT.nextInt();
        int counter = 0;
        for(int i = 1; i <= n; i++){
            System.out.printf("%d\n", i * 2);
            counter =  counter + i;
        }
        System.out.printf("Soma do %d primeiros pares: %d\n", n, 2 * counter);
    }
}