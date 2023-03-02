package Aula03;

//package Aula03;

import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        FundoMensal();
    }
    public static void FundoMensal() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Inicial value invested, must be positive and multiple of 1000: ");
        float amount = sc.nextFloat();
        assert (amount > 0 && amount%1000==0);
        System.out.println("What is the fee percentage ? ");
        float fee = sc.nextFloat();
        assert (fee >= 0 && fee <= 5);
        for (int i = 1; i <= 12; i++) {
            amount += amount * (fee/100);
            System.out.printf("Value on %d month: %.2f\n", i,amount);
        }
        sc.close();

    }
}
