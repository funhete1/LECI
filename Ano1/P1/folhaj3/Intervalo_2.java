import java.util.Scanner;

class Intervalo_2{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        int a, b;
        System.out.println("Enter the ends of the range: ");
        a = AT.nextInt();
        b = AT.nextInt();
        if(a >= 0 && b >= 0){
            for(int c = a; c <= b; c++){
                if (c > 10 && ((c % 2) != 0) && ((c % 3) != 0) && ((c % 5) != 0) && ((c % 7) != 0)){
                    System.out.println(c);           
                }
                else if (c == 1 || c == 2 || c == 3 || c == 5 || c == 7){
                    System.out.println(c);    
                }
            }    
        }
        else{
            System.out.println("You must enter positive values.");
        }
    }
}