import java.util.Scanner;

class Sequence{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        int n = 0;
        int[] sequence = null;
        do{

            Menu();
            n = AT.nextInt();
            if(n == 1) sequence = Ler();
            if(n == 2) Escrever(sequence);
            if(n == 3) Max(sequence);
            if(n == 4) Min(sequence);
            if(n == 5) Media(sequence);
            if(n == 6) Par(sequence);
            if(n == 10) break;

        }while(n != 10);
    }

    public static void Menu(){
        System.out.printf("1 - Ler uma sequência de números inteiros\n");
		System.out.printf("2 - Escrever uma sequência\n");
		System.out.printf("3 - Calcular o máximo da sequência\n");
		System.out.printf("4 - Calcular o mínimo da sequência\n");
		System.out.printf("5 - Calcular a média da sequência\n");
		System.out.printf("6 - Detetar se é uma sequência só constituída por números pares\n");
		System.out.printf("10 - Terminar o programa\n");
		System.out.print("Opção -> ");
    }

    public static int[] Ler(){
        int[] sequence = new int[50];
        for(int i = 0; i < 50; i++){
            System.out.printf("Introduza Numeros ate 50 ou pare a contagem digitando 0.\n");
            int numero = AT.nextInt();
            if(numero == 0) break;
            sequence[i] = numero;
        }
        return sequence;
    }

    public static void Escrever(int[] sequence){
        System.out.printf("Sequencia:");
        for(int j = 0; j < sequence.length; j++){
            if(sequence[j] == 0) break;
            System.out.printf(" %d", sequence[j]);
        }
        System.out.println();
    }

    public static void Max(int[] sequence){
        int a = 0, b = 0;
        for(int j = 0; j < sequence.length; j++){
            if((j + 1) >= sequence.length) break;
                a = sequence[j] >= sequence[j + 1] ? sequence[j] : sequence[j + 1];
                    if(a > b) b = a;
        }
        System.out.printf("Numero maximo da sequencia: %d\n", b);
    }

    public static void Min(int[] sequence){
        int a, b = sequence[0];
        for(int j = 0; j < sequence.length; j++){
            if((j + 1) >= sequence.length) break;
            if(sequence[j + 1] == 0) break;
                a = sequence [j] <= sequence[j + 1] ? sequence[j] : sequence[j + 1];
                if(a < b) b = a;
        }
        System.out.printf("Numero minimo da sequencia: %d\n", b);
    }

    public static void Media(int[] sequence){
        double counter = 0, soma = 0;
        for(int j = 0; j < sequence.length; j++){
            if(sequence[j] != 0){
                counter++;
                soma = soma + sequence[j];
            }
        }
        System.out.printf("Media: %.2f\n", (soma / counter));
    }

    public static void Par(int[] sequence){
        int counter = 0, counterp = 0 ;
        for(int j = 0; j < sequence.length; j++){
            if(sequence[j] == 0) break;
            if(sequence[j] != 0) counter++;
            if((sequence[j] % 2) == 0)counterp ++;
        }
        if(counter == counterp){
            System.out.printf("A sequencia e par\n");
        }
        else{
            System.out.printf("A sequencia nao e par\n");
        }
    }
}