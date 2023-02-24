package Aula02;
import java.util.*;

public class Ex6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Seconds ?");
        int[] result = hms(sc.nextInt());
        System.out.printf("%d:%d:%d", result[0],result[1], result[2]);
        sc.close();
    }

    public static int[] hms(int seconds) {
        int hour = 0;
        int min = seconds/60;
        if(min > 60){
            hour = min / 60;
        }
        int[] clock = new int[3];
        clock[0] = hour;
        clock[1] = hour%60;    
        clock[2] = min%60;
        return clock;
    }
}
