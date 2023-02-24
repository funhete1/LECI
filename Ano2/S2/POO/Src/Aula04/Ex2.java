package Aula04;
import java.util.Scanner;

import java.lang.String;

public class Ex2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String text = sc.nextLine();
        System.out.println(Palindromo(text));
        sc.close();
    }
    public static int countDigits(String txt){
        return txt.replaceAll("[^0-9]","").length();
    }

    public static int spacesCount(String txt){
        return txt.replaceAll("[^' ']", "").length();
    }
    public static boolean allLowerCase(String txt) {
        for (int i = 0; i < txt.length(); i++) {
            if(txt.toCharArray()[i] <= 'Z' && txt.toCharArray()[i] >= 'A'){return false;}
        }
        return true;
    }
    public static String trimSpaces(String txt) {
        return txt.trim().replaceAll(" +", " ");
    }
    public static boolean Palindromo(String txt) {
        StringBuilder p = new StringBuilder();
        for (int i = txt.length() - 1; i >= 0; i--) {
           p.append(txt.toCharArray()[i]);  
        }
        return p.toString() == txt;
    }
}