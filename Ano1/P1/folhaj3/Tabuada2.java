import java.util.Scanner;

class Tabuada2{
    public static final Scanner AT = new Scanner(System.in);
    
    public static void main(String[] args){
        System.out.println("indica um numero de 1 a 99");
        int n = AT.nextInt();
        System.out.println("-------------------");
        System.out.printf("  Tabuada dos %2d\n ", n);
        System.out.println("-------------------");
        for(int i = 0;  i < 10; i++){
            System.out.printf("| %2d  x %2d  |  %3d |\n",n , i, n * i);
        }
        System.out.println("-------------------");
    }
}