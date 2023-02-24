import java.util.Scanner;

public class Counters
{
    public static final Scanner AT = new Scanner(System.in);

	public static void main(String[] args) {
	    int n = 1, counter_plus = 0, counter_less = 0, counter_ni = 0, counter_pi = 0;
	    while(n != 0){
	        System.out.println("Enter a number");
	        n = AT.nextInt();
	        if(n != 0){
	            if(n > 0){
	                counter_plus ++;
	                if(n >= 100 && n <= 1000){
	                    counter_pi ++;
	                }
	            }
	            if(n < 0){
	                counter_less ++;
	                if(n >= -1000 && n <= -100){
	                    counter_ni ++;
	                }
	            }
	        }
	    }
	    System.out.printf("Numeros positivos: %d\n", counter_plus);
	    System.out.printf("Numeros negativos: %d\n", counter_less);
	    System.out.printf("Numeros entre [100,1000]: %d\n", counter_pi);
	    System.out.printf("Numeros entre [-1000,-100]: %d\n", counter_ni);
    }
}
