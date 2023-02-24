import java.util.Scanner;

class Primet{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[]  args){
        System.out.println("Enter a number: ");
        int counter = 0;
        int a = AT.nextInt();
        for(int b = a - 1; b >= 1; b--){
            int c = a % b;
            if(c == 0){
                counter ++;
            }
        }
        if(counter > 1){
            System.out.printf("Nao e primo\n");
        }
        else{
            System.out.printf("E primo\n");    
        }
    }
}