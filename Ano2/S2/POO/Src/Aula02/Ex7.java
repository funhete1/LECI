package Aula02;
import java.util.*;


public class Ex7 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Point 1 x  ?");
        double x1 = sc.nextDouble();
        System.out.println("Point 1 y  ?");
        double y1 = sc.nextDouble();
        System.out.println("Point 2 x  ?");
        double x2 = sc.nextDouble();
        System.out.println("Point 2 y  ?");
        double y2 = sc.nextDouble();
        System.out.printf("Distance between x and y is: %f", Distance(x1,y1,x2,y2));
        sc.close();
    }
    public static double Distance(double x1, double y1, double x2, double y2){
        return Math.sqrt(Math.pow((x2 - x1),2)+Math.pow((y2 - y1),2));
    }
}
