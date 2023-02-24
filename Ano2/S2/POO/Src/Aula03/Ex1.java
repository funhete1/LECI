package Aula03;

import java.util.*;

public class Ex1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        float notaP = 0; 
        float notaT = 0;
        do{
            System.out.println("Nota pratica ?");
            notaP = sc.nextFloat();
            System.out.println("Nota teorica ?");
            notaT = sc.nextFloat();

        }while(!( ( notaP >=0 ) && (notaP <= 20) ) && !((notaT >=0) && (notaT <= 20)));
        System.out.printf("Nota: %.2f", Notafinal(notaP, notaT));
        sc.close();
    }

    public static double Notafinal(float notaPratica, float notaTeorica) {
        return (0.4 * notaTeorica + 0.6 * notaPratica);
    }
}
