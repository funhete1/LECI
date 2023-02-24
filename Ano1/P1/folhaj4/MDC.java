import java.util.Scanner;

class MDC{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[]  args){
        System.out.println("Introduza o dividendo e o divisor");
        int a = AT.nextInt();
        int b = AT.nextInt();
        int c, d, e, f;
        d = a;
        e = b;
        c = 1;
        f = 1;
        while(c != 0){
            c = a % b;
            f = b;
            a = b;
            b = c;
        }
        System.out.printf("MDC(%d,%d) = %d\n", d, e, f);
    }
}