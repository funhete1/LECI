package Aula05;
import java.util.Scanner;
import Aula03.*;


public class Date{ 
    
    private int day;
    private int month;
    private int year;
    Date(){
        Scanner sc = new Scanner(System.in);
        do{
            System.out.println("Day:");
            this.day = sc.nextInt();
            System.out.println("Month: ");
            this.day = sc.nextInt();
            System.out.println("Year:");
            this.day = sc.nextInt();
        }while(!valid(this.day, this.month, this.year));
        sc.close();
    }

    Date(int day, int month, int year) throws ValueOutOfBounds{
        try{
            if(valid(day, month, year)){
                this.day = day;
                this.month = month;
                this.year = year;

            }else{
                throw new ValueOutOfBounds("Data inválida");
            }
        }catch(Exception e){
            System.err.println("Your date must be on the range acceptable values");
            System.out.println("Enter a new date");
            handler();
        }
    }
    //Get and Setter methods
    public int getDay(){
        return this.day;
    }
    public int getMonth(){
        return this.month;
    }
    public int getYear(){
        return this.year;
    }
    public void setDay(int day){
        this.day = day;
    }
    public void setMonth(int month){
        this.month = month;
    }
    public void setYear(int year){
        this.year = year;
    }
    //////////////////////////
    
    public boolean validMonth(int month){
        return (month > 0 && month < 13);
    }
    public static int monthDays(int month,int year) {
        switch (month) {
            case 4:
            case 6:
            case 9:
            case 11:
              return 30;
            case 2:
              return leapYear(year) ? 29 : 28;
        
            default:
              return 31;
            }
    }

    public static boolean leapYear(int year){
        return (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0);
    }
    public boolean valid(int day, int month, int year){
        if (leapYear(year) && month == 2){
            return (day > 0 && day < 30);
        }else{
            return ((day > 0 && day < 32) && (validMonth(month) ) && year > 0);
        }          
    }
    public void menu(){
        System.out.printf("Date operations:\n"+
                            "1 - create new date\n"+ 
                            "2 - show current date\n"+ 
                            "3 - increment date\n" +
                            "4 - decrement date\n"+ 
                            "0 - exit\n");
    }
    
    public void increment(){
        this.day++;
        if(!valid(this.day, this.month, this.year)){
            this.day = 1;
            this.month++;
            if(!valid(this.day, this.month, this.year)){
                this.month = 1;
                this.year++;
            }
        }
    }
    public void decrement(){
        this.day--;
        if(!valid(this.day, this.month, this.year)){
            this.day = 31;
            this.month--;
            if(!valid(this.day, this.month, this.year)){
                this.month = 12;
                this.year--;
           }
        }
    }
    private void handler(){
        Scanner sc = new Scanner(System.in);
        do{
            System.out.println("Day:");
            this.day = sc.nextInt();
            System.out.println("Month: ");
            this.month = sc.nextInt();
            System.out.println("Year:");
            this.year = sc.nextInt();
        }while(!valid(this.day, this.month, this.year));
        sc.close();

        //A non effective way to do:

    }
    public static String getMonthName(int month){
        String[] m = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
        return m[month -1];
    }

    public String toString(){
        return String.format("%02d/%02d/%04d", this.day, this.month, this.year);
    } 
}
