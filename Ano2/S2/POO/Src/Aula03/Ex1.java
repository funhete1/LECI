package Aula03;
import java.util.Scanner;
public class Ex1 {
    public static void main(String[] args) {
        int sum = sum();
        System.out.println("Sum of all prime numbers betweeen your number is: "+sum);
    }
    public static int sum(){
        int sum = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the a number: ");
        int number = sc.nextInt();
        while(number > 0){
            if(Utils.Utils.PrimeN(number)){
                sum+=number;
            }
            number--;
        }
        sc.close();
        return sum;
    }
    
    
}
