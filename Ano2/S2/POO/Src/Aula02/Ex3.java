package Aula02;
import java.util.*;

public class Ex3 {
    public static void main(String[] args)throws Exception {
        Scanner sc = new Scanner(System.in);
        System.out.println("How much water(kg) ?");
        double water = sc.nextDouble();
        System.out.println("What it is the inicial temperature(C) ?");
        double ti = sc.nextDouble();
        System.out.println("What it is the final temperature(C) ?");
        double tf  = sc.nextDouble();
        System.out.printf("%.2f", EnergyNedded(water,tf,ti));
        sc.close();
    }

    public static double EnergyNedded(double m, double tf, double ti) {
        return m * (tf - ti) * 4184;
    
    }
}
