package Aula02;
import java.util.*;

public class Ex4 {
    public static void main(String[] args)throws Exception {
        Scanner sc = new Scanner(System.in);
        System.out.println("What it is the inicial investment value ?");
        double money = sc.nextDouble();
        System.out.println("How many months ?");
        int time = sc.nextInt();
        System.out.printf("%.2f", Investiment(money,time));
        sc.close();
    }

    public static double Investiment(Double money, int months) {
        for (int i = 0; i < months; i++) {
            money += money * 0.01;
        }
        return money;
    }
}
