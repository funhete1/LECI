package Aula03;
//package Aula03;
import java.util.Scanner;

class Ex03{
    public static void main(String[] args) {
        higherLower();
    }
    public static void higherLower() {
        Scanner sc = new Scanner(System.in);
        int random = (int)Math.floor(Math.random() * 101);
        int guess,counter = 0;

        do{
            System.out.println("Try to guess the number between 1 and 100");
            guess = sc.nextInt();
            if(guess > random){
                System.out.println("Lower");
            }else if(guess < random){
                System.out.println("Higher");
            }
            counter++;

        }while(random != guess);
        System.out.printf("Number of tries: %d\n", counter);
        System.out.println("Wanna try again ?");
        sc.nextLine();                          //solves the problem with the scans link="https://stackoverflow.com/questions/23450524/java-scanner-doesnt-wait-for-user-input"
        String answer = sc.nextLine();
        if((answer != "Y") || (answer != "Yes" ) || (answer != "yes") || (answer != "y") ){   //why does the condition only works if the result is false ???
            higherLower();
        };
        sc.close();
    }
}