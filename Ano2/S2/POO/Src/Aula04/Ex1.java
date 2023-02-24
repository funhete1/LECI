package Aula04;
import java.lang.String;
import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.printf("Enter the String: ");
        String text = sc.nextLine();
        System.out.printf("String in Uppercase format: %s\n",text.toUpperCase());
        System.out.printf("Last char of the string: %s\n",text.charAt(text.length()-1));
        System.out.printf("Frist 3 letters of the string: %s\n",text.replaceAll("[^a-zA-Z]", "").substring(0,3));
        System.out.printf("Just another test: "+String.join("a",text.replaceAll("[^a-zA-Z]","."))); //tendi nn
        sc.close();
    }
}
