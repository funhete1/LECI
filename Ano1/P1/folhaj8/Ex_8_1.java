import java.util.Scanner;

public class Ex_8_1 {
    static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args) {
        Hora inicio;  // tem de definir o novo tipo Hora!
        Hora fim;
        int[] tempof = new int[3];
        read(tempof);
        inicio = new Hora();
        inicio.h = 9;
        inicio.m = 23;
        inicio.s = 5;
        System.out.print("Começou às ");
        printHorai(inicio);  // crie esta função!
        System.out.println(".");

        if (valid_or_not(tempof)){
            fim = new Hora();
            fim.h = tempof[0];
            fim.m = tempof[1];
            fim.s = tempof[2];

            System.out.print("Terminou as: ");
            printHoraf(fim);
            System.out.println(".");
        }
        else{
            System.out.printf("Este horario nao existe.\n");
        }
}

    public static boolean valid_or_not(int[] tempof){
        return tempof[0] >= 0 && tempof[0] <= 23 && tempof[1] >= 0 && tempof[1] <= 59 && tempof[2] >= 0 && tempof[2] <= 59;
    }
    public static int[] read(int[] tempof){
        System.out.printf("Introduza a que Horas, Minutos, Segundos terminou: \n");
        for(int i = 0; i < 3; i++){
            int carry = AT.nextInt();
            tempof[i] = carry;
        }
        return tempof;
    }
    public static void printHorai(Hora inicio){
        System.out.printf("Comecou as: %02d:%02d:%02d", inicio.h, inicio.m, inicio.s);
    }
    public static void printHoraf(Hora fim){
        System.out.printf("Terminou as: %02d:%02d:%02d", fim.h, fim.m, fim.s);
    }
}
class Hora{
    int h, m, s;
}
