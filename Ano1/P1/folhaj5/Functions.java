import java.util.Scanner;

class Functions {
	public static final Scanner AT = new Scanner(System.in);

	public static double sqr(double x) {
		double y;	// variavel para resultado
		y = x*x;	// calculo do resultado a partir dos dados
		return y;	// devolver o resultado
	}

	public static double arctg(int x){
		double y;	//variavel para o resultado
		y = 1.0 / (1 + Math.pow(x, 2)); //calculo da funcao arctg
		return y;	//devolver o valor da funcao
	}

	public static double max(double x, double y){
		return x >= y ? x : y;
	}
	public static double cardano(double a, double b, double c, double d, double x){
		a = a * Math.pow(x, 3) + b * Math.pow(x, 2) + c * x + d;
		return a;
	}
	public static int fact(int a){
		if(a > 0 && a <= 10){
		int f = 1;
			for(int i = 1; i <= a; i++){
				f = f * i;
				System.out.printf("%d! = %d\n", i, f);
			}
		}
		return a;
	}
	public static int GetIntPos(){
		int a = 0;
		while(a <= 0){
				System.out.println("Um promt: ");
				a = AT.nextInt();
		}
		return a;
	}
	public static void PrintNtimes(int a, String text){
		for(int n = 0; n < a; n++){
			System.out.println(text);
		}
	}
	public static boolean bissexto (int ano){
		return ano % 400 == 0;
	}
	public static int Ndays (int mes, int ano){
		if(mes == 2)return bissexto(ano) ? 28 : 29;

		if(mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12) return 31;

		else return 30;
	}
	public static boolean range (int mes){
		return (mes > 0 && mes <= 12);
	}
	public static void main (String args[]) {
		double a = AT.nextDouble();
    	double b = AT.nextDouble();
    	System.out.printf("O maior e: %.2f", max(a, b));
	}
}

