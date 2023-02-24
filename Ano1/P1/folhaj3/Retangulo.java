import java.util.Scanner;

class Main{
    public static final Scanner AT = new Scanner(System.in);
    
    public static void main(String[] args){
        System.out.println("Lenght: ");
        int lenght = AT.nextInt();
        System.out.println("Height: ");
        int height = AT.nextInt();
        String c = "";
        for(int i = 0; i < lenght; i++){
                c = c + "*";   
        }
        for (int j = 0; j < height; j++){
            System.out.println(c);
        }
        
    }
}