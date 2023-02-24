import java.util.Scanner;

class factorial{
    public static final Scanner AT = new Scanner(System.in);
    
    public static void main(String[] args){
        System.out.printf("Introduza um numero de 1 a 10\n");
        int n = AT.nextInt();
        int a = 1;
        if(n >= 1 && n <= 10){
            for(int i = 1; i <= n; i++){
            a = a * i;
            System.out.printf("%d! = %d\n", i, a);
           }
        }
    }
}