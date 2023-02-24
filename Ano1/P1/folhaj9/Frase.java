import java.util.Scanner;

class Frase{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String args[]){
        System.out.printf("%d\n", AT.nextLine().split(" ").length);
    }
}