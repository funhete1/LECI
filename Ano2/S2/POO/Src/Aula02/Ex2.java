package Aula02;
import java.util.*;

public class Ex2 {
    public static void main(String[] args)throws Exception {
        Scanner sc = new Scanner(System.in);
        System.out.println("What is the temperature ?");
        double F = CtoF(sc.nextFloat());
        System.out.printf("%. 2f", F);
        sc.close();
    }

    public static double CtoF(float num) {
        return (1.8 * num) + 32;
    }
}
