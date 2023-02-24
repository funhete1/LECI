package Aula02;
import java.util.*;

public class Ex1 {
    
    public static void main(String[] args)throws Exception {
        Scanner sc = new Scanner(System.in);
        System.out.println("How much Km ?");
        double miles = KmToMiles(sc.nextInt());
        System.out.printf("%.sc.nextInt() 2f", miles);
        sc.close();
    }

    public static double KmToMiles(int num) {
        return num/1.609;
    }
}
