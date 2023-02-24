import java.util.Scanner;
class Intervalo{
	public static final Scanner AT = new Scanner(System.in);
	public static void main(String[] args){
		boolean tf;
		double x1, y1, x2, y2;
		System.out.printf("Primeiro Intervalo: ");
		x1 = AT.nextDouble();
		y1 = AT.nextDouble();
		System.out.printf("Segundo Intervalo: ");
		x2 = AT.nextDouble();
		y2= AT.nextDouble();
		if(x1 < y1)
		{
			tf = true;
		}
		else
		{
			tf = false;
		}
		System.out.printf("Intervalo 1: %.2f\n", x1);
		System.out.printf("Intervalo 2: %.2f\n", y1);
		System.out.println(tf);
		if(x2 < y2)
		{
			tf = true;
		}
		else
		{
			tf = false;
		}
		System.out.printf("Intervalo 1: %.2f\n", x2);
		System.out.printf("Intervalo 2: %.2f\n", y2);
		System.out.println(tf);
	}
}
