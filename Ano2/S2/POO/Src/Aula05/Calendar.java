package Aula05;

import java.util.*;
import Aula03.ValueOutOfBounds;


public class Calendar {
    private int firstD;
    private int year;
    private HashMap<Date, List<String>> events = new HashMap<Date, List<String>>();

    Calendar(int day, int year )throws ValueOutOfBounds{
        try{
            if(validIn(day, year)){
                this.firstD = day;
                this.year = year; 
            }else{
                throw new ValueOutOfBounds("Input Invalidos");
            }
        }catch(Exception e){
            System.out.println("Day must be between 1 and 7\n"+
                                "Year must be grather than 0");
            handler();
        }
        //menu() TOOD
    }
    public int getYear(){
        return this.year;
    }
    public void setYear(int year){
        this.year = year;
    }
    public void firstD(int day){
        this.firstD = day;

    }
    public int getFirstD(){
        return this.firstD;
    }

    public int getFirstDayOfMonth(int month){
            int days = 0;
            for(int i =1; i < month; i++){
                days += Date.monthDays(i, this.year);
            }
            return ((this.firstD + days - 1) % 7) +1; //Subtrai-se um pois o primeiro dia de janeiro ja esta incluso, e se adciona um pois  
                                                // e se adciona um pois o modulo de 7 varia entre 0-6 e os dias da semana variam entre 1-7  
    }
    public void addEvent(Date event, String description){
        if(this.events.get(event) == null){
            ArrayList<String> temp = new ArrayList<String>();
            temp.add(description);
            this.events.put(event, temp);
        }else{
            this.events.get(event).add(description);
        }
    }
    //////////////////////////
    public void showEvents(Date index){
        System.out.println("Events on month "+index.getMonth()+": "+this.events.get(index));
    }

    //Input validation methods
    public boolean validIn(int firstD, int year){
        return (firstD > 0 && firstD < 8 && year > 0);
    }
    private void handler(){ 
        Scanner sc = new Scanner(System.in);
        do{
            System.out.println("Enter the frist day: ");
            this.firstD = sc.nextInt();
            System.out.println("Enter the year: ");
            this.year = sc.nextInt();

        }while(!validIn(this.firstD, this.year));
        sc.close();
    }

    //Menu class definition
    public void menu(){
        System.out.printf("Calendar operations:\n"+
                            "1 - create new calendar\n"+ 
                            "2 - print calendar month\n"+ 
                            "3 - print calendar\n" +
                            "0 - exit\n");
    }
    ////To string methods
    public void toString(int month) throws ValueOutOfBounds{ 
        int counter = 1;
        System.out.println("       "+Date.getMonthName(month)+" "+this.year+"       ");
        System.out.println("Su  Mo  Tu  We  Th  Fr  Sa");
        for(int i = 1;i < getFirstDayOfMonth(month);i++){
            System.out.printf("    ");
            counter +=1;
        }

        // to many conditionals ???
        // should i use a StringBuilder or I can implement a toString method with prints?
        for(int i = 1; i <= Date.monthDays(month, this.year);counter++,i++){
            Date d = new Date(i,month,this.year);
            if(check(d)){
                if(counter%7==0){
                    System.out.printf("*%1d\n",i);
                    continue;
                }if(i<10){
                    System.out.printf("*%1d  ",i);
                }else{
                    System.out.printf("*%1d ",i);
                }
            }else{
                if(counter%7==0){
                    System.out.printf("%2d\n",i);
                    continue;
                }
                System.out.printf("%2d  ",i);
            }
        }
    }
    
    private boolean check(Date event){
        return this.events.get(event) == null;
    }

    //Need to implent the other method with an StringBuilder or a stringFormat dk
    // public String toString() {
    //     for(int i = 1; i<= 12;i++){toString(i);}
    // }
}
