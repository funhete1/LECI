import java.util.Scanner;

class Inverse{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[]  args){
        System.out.println("Introduza um valor positivo e decimal.");
        int num = AT.nextInt();
        int reversed = 0;
        if(num >= 10){
            while(num != 0){
            int digit = num % 10;
            reversed = reversed * 10 + digit;
            num /= 10;
            }
        System.out.printf("Numero invertido: %d\n", reversed);
        }    
        else{
            System.out.printf("Tem de ser positivo e decimal.");
        }
    }
}