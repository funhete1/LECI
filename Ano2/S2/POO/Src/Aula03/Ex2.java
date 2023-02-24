package Aula03;

import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Insert a number: ");
        int n = sc.nextInt();
        assert n >= 0;
        do{
            System.out.printf("%d\n", n--);
        }while(n>=0);
        sc.close();
    }
}
