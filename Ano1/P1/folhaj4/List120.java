import java.util.Scanner;

class List120{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        System.out.println("Qual a sua nota ?");
        int n = AT.nextInt();
        int a = 0;
        while(a >= 0){
            System.out.println("Qual a sua nota ?");
            a = AT.nextInt();
            if(a < 0){
                break;
            }
            a = a + n;
            n = a;
        }
        System.out.printf("soma: %d\n", n);
        System.out.printf("media: %.1f\n",(double) n / 2);
    }
}