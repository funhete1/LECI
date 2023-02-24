import java.util.Scanner;

public class HTimes{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        int counter = 0;
        int[] numeros = new int[100];
        System.out.printf("Escolha o numero a ser contado: ");
        int escolhido = AT.nextInt();
        for(int i = 0; i < 100; i++){
            System.out.printf("Introduza numeros cem numeros: ");
            int Narray = AT.nextInt();
            if(Narray < 0) break;
            if(Narray == escolhido) counter++;
        }
        System.out.printf("O Numero foi introduzido: %d vezes\n", counter);
    }
}