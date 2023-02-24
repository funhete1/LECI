package Aula05;

public class Date{ 
    
    private int day;
    private int month;
    private int year;

    Date(int day, int month, int year){
        this.day = day;
        this.month = month;
        this.year = year;
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
    public int monthDays(int month,int year) {
        Integer[] days = {31,28,31,30,31,30,31,31,30,31,30,31};
        if(leapYear(year) && month == 2){return 29;};
        return days[month-1];

    }

    public boolean leapYear(int year){
        return (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0);
    }
    public boolean valid(int day, int month, int year){
        if (leapYear(year) && month == 2){return (day > 0 && day < 30);}
        return ((day > 0 && day < 32) && (validMonth(month) ) && year > 0);
    }
    public void menu(){
        System.out.printf("Date operations:\n"+
                            "1 - create new date\n"+ 
                            "2 - show current date\n"+ 
                            "3 - increment date\n" +
                            "4 - decrement date\n"+ 
                            "0 - exit\n");
    }

}
