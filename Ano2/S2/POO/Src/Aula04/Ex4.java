package Aula04;
import java.util.*;
import java.lang.Exception;

class ValueOutOfBounds extends Exception {
    public ValueOutOfBounds(String erroMessage){
        super(erroMessage);
    }
}

public class Ex4 {
    public static void main(String[] args)throws ValueOutOfBounds{
        calendar();
    }
    public static void calendar() throws ValueOutOfBounds {
        String days = " Su Mo Tu We Th Fr Sa";
        String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
        String[] input = getInput().split("/");
        int starter = Integer.parseInt(input[0]);
        System.out.println("    "+months[Integer.parseInt(input[1])-1]
                            +" "
                            +Integer.parseInt(input[2]));
        System.out.println(days);
        for (int i = 1; i < starter; i++) {
            System.out.printf("   ");
        }
        int i = 0;
        do{
            i++;
            System.out.printf("%3d",i);
            if(starter == 7){    
                System.out.println();
                starter = 0;
            }
            starter++;

        }while(i < NumberOfDays(Integer.parseInt(input[1]), Integer.parseInt(input[2])));
    }

    public static String getInput()throws ValueOutOfBounds{
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the starter day of the month, the month and the year (dd/mm/yy): ");
        
        String[] date = sc.nextLine().split("/");
        StringBuilder result = new StringBuilder();
        sc.close();

        if(!(Integer.parseInt(date[0]) > 0 && Integer.parseInt(date[0]) < 8)) throw  new ValueOutOfBounds("Value must be between 1 and 7");

        if(!(Integer.parseInt(date[0]) > 0 && Integer.parseInt(date[0]) < 13)) throw  new ValueOutOfBounds("Value must be between 1 and 12");

        if(!(Integer.parseInt(date[0]) > 0)) throw  new ValueOutOfBounds("Value must be greatter than 0");
        
        for (int i = 0; i < date.length; i++) {
            result.append(date[i]+"/");
        }
        return result.toString().substring(0, result.length()-1);
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
