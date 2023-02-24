import java.util.Scanner;

public class Main
{
    public static final Scanner AT = new Scanner(System.in);

	public static void main(String[] args){
	    int  n, a, max = 0, min = 0;
	    System.out.println("Enter a number: ");
	    n = AT.nextInt();
	    a = AT.nextInt();
	    if(n != a * 2){
	        while(n != a * 2){
	            System.out.println("Enter a number: ");
	            n = AT.nextInt();


	        }
	    }
    }
}
