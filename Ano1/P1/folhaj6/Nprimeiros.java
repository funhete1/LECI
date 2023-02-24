 import java.util.Scanner;
class Nprimeiros{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        System.out.println("Quantos Numeros pretendes introduzir: ");
        int a = AT.nextInt();
        int[] array = new int[a];
        for(int i = a - 1; i >= 0; i--){
            System.out.printf("Enter a number: \n");
            int n = AT.nextInt();
            array[i] = n;
        }
        for(int j = 0; j < array.length; j++){
            System.out.printf("%d\n", array[j]);
        }
    }
}