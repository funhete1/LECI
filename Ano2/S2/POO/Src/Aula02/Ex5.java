package Aula02;
import java.util.*;

public class Ex5 {
    public static void main(String[] args)throws Exception {
        Scanner sc = new Scanner(System.in);
        System.out.println("Velocity 1 ?");
        double v1 = sc.nextDouble();
        System.out.println("Distance 1 ?");
        double d1 = sc.nextDouble();
        System.out.println("Velocity 2 ?");
        double v2  = sc.nextDouble();
        System.out.println("Distance 2 ?");
        double d2 =  sc.nextDouble();
        System.out.printf("%.2f", Vm(v1,d1,v2,d2));
        sc.close();
    }

    public static double Vm(double v1, double d1, double v2, double d2) {
        return (d1+d2)/((d1/v1)+(d2/v2));
    
    }
}
