package Aula03;
import java.util.Scanner;

public class Ex6 {
    public static void main(String[] args) {
        Date();
    }
    public static void Date() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a date(month/year): ");
        String[] date = sc.nextLine().split("/", 0);
        assert (Integer.parseInt(date[0]) >0 && Integer.parseInt(date[0]) <= 12 );
        assert (Integer.parseInt(date[1]) > 0);
        System.out.printf("Number of days: %d", NumberOfDays(Integer.parseInt(date[0]),Integer.parseInt(date[1])));
        sc.close();
    }
    public static int NumberOfDays(int month,int year) {
        Integer[] days = {31,28,31,30,31,30,31,31,30,31,30,31};
        if(isBissexto(year) && month == 2){return 29;};
        return days[month-1];

    }
    public static boolean isBissexto(int year){
        return (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0);
    }
}
