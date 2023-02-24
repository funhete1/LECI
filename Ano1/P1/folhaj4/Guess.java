import java.util.Scanner;

class Guess{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        int secret = (int)((100.0 * Math.random()) + 1);
        System.out.println("try to guess: ");
        int a = AT.nextInt();
        int counter = 1;
        while(a != secret){
            System.out.println("try to guess: ");
            a = AT.nextInt();
            if(a > secret){
                System.out.println("To high");
            }
            else{
                System.out.println("To low");    
            }
        counter++;
        }
        System.out.printf("Corret, it only took %d tries\n", counter);
    }
}