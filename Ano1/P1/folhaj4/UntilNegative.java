import java.util.Scanner;

class UntilNegative{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        System.out.println("Poem qualquer numero ai: ");
        int a = AT.nextInt();
        int counter = 0;
        if (a > 0){
           counter++;
        }
        while(a >= 0){
            System.out.println("Poem qualquer numero ai: ");
            a = AT.nextInt();
            counter ++;
        }
        System.out.printf("%d\n", counter);
    }
}