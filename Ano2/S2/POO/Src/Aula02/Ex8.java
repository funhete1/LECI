package Aula02;
import java.util.*;

public class Ex8 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("A side ?");
        double a = sc.nextInt();
        System.out.println("B side ?");
        double b = sc.nextInt();
        double c =  hypo(a,b);
        System.out.printf("Hypo: %.2f\n",c);
        System.out.printf("Angle between A and C: %.2f", Math.asin(b/c));
        sc.close();
    }
    public static double hypo(double a, double b){
        return Math.sqrt(Math.pow(a,2)+Math.pow(b,2));
    }
}
