import java.util.Scanner;
class Year{
	public static final Scanner AT = new Scanner(System.in);
	public static void main(String[] args){
		int m, a;
		System.out.printf("Qual o mes de que ano: ");
		m = AT.nextInt();
		a = AT.nextInt();
		if (a % 4 == 0 && a / 100 != 0 && a % 400 == 0){
			if (m == 1 || m == 3 || m == 5 || m ==  7 || m == 8 || m == 10 || m == 12)
				System.out.printf("O mês %d do ano %d tem 31 dias\n", m, a);
			}
			else if (m == 2){
				System.out.printf("O mês %d do ano %d tem 29 dias\n", m, a);
			}
			else if (m == 4 || m == 6 || m == 9 || m == 11){
				System.out.printf("O mês %d do ano %d tem 30 dias\n", m, a);
			}
		else{
			if (m == 1 || m == 3 || m == 5 || m ==  7 || m == 8 || m == 10 || m == 12){
				System.out.printf("O mês %d do ano %d tem 31 dias\n", m, a);
			}
			else if (m == 2){
				System.out.printf("O mês %d do ano %d tem 28 dias\n", m, a);
			}
			else if (m == 4 || m == 6 || m == 9 || m == 11){
				System.out.printf("O mês %d do ano %d tem 30 dias\n", m, a);
			}
		}
	}
}