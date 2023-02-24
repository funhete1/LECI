package Aula03;

import java.util.ArrayList;
import java.util.Scanner;


public class Ex4 {
    public static void main(String[] args) {
        System.out.printf(MaxMinMed().toString());
    }
    public static ArrayList<Integer> MaxMinMed() {
        Scanner sc = new Scanner(System.in);
        ArrayList<Integer> result = new ArrayList<Integer>();
        System.out.println("Insert a number(To end insert the frist number again): ");
        int inicial = sc.nextInt();
        System.out.println("Insert a number: ");
        int num = sc.nextInt();
        result.add(num);
        while(num != inicial){
            System.out.println("Insert a number: ");
            num = sc.nextInt();
            result.add(num);
        }     
        sc.close();
        return result;
    }
}
