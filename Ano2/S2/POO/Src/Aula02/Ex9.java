package Aula02;
import java.util.*;
public class Ex9 {
    public static void main(String[] args) {
        until0();
    }
    public static void until0() {
        Scanner sc = new Scanner(System.in);
        int number = sc.nextInt();
        assert number >= 0;
        while(number >= 0){
            System.out.printf("%d,",number--);
            if(number == 0){
                System.out.printf("%d.",number);
                break;
            }
            if(number%10==0)System.out.println();
        }

        sc.close();
    }
}
