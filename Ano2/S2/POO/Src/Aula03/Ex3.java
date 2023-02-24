package Aula03;
import java.util.*;

public class Ex3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Insert a number: ");
        int n = sc.nextInt();
        assert n >= 0;
        System.out.printf("%d is %s", n, (PrimeN(n) ? "prime":"not prime"));
        sc.close();
    }
    public static boolean PrimeN(int n) {
        if(n <= 1) return false;
        if(n <= 3) return true;

        if(n %2 == 0 || n % 3 == 0) return false;

        for (int i = 5;i * i <= n ; i =+6) {
            if(n % i == 0 || n % (i + 2) == 0) return false;
        }
        
        
        return true;
    }
}
