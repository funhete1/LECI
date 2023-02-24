import java.util.Scanner;

class PerfectNumber{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        System.out.println("Enter a positive int: ");
        int a = AT.nextInt();
        int b = a; 
        if (a >= 0)
        {
            for(int i = 0; i < a; i++)
            {
                b = b - i;
                if(b == 0)
                {
                    System.out.println("E um numero perfeito");
                }
            }
        }
        else
        {
            System.out.println("You must enter a positive number !");
        }
    }
}