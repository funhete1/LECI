import java.util.Scanner;
class pa{
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        //scan o lado e a base
        System.out.println("Height:");
        float i = input.nextFloat();
        System.out.println("Lenght:");
        float j = input.nextFloat();
        //calula e imprime
        System.out.println("Perimeter: " + (2 * i + 2 * j));
        System.out.println("Area: " + (i  * j));
        }
}