package Aula04;
import java.util.*;

public class Ex3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String text = sc.nextLine();
        System.out.println(acronimo(text));
        sc.close();
    }
    public static String acronimo(String txt) {
        StringBuilder ac = new StringBuilder();

        for (int i = 0; i < txt.split(" ").length; i++) {
            if (txt.split(" ")[i].length() < 3){continue;};
            ac.append(txt.split(" ")[i].toCharArray()[0]);
        }
        return ac.toString();
    }
}
