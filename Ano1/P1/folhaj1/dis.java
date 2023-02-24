import java.util.Scanner;
class dis{
		public static void main(String[] args){
			Scanner input = new Scanner(System.in);
			//qual a escala a ser usada
			System.out.printf("Qual escala a ser usada: ");
			int a = input.nextInt();
			int b = input.nextInt();
			//quais as coordenadas
			Double x1, y1, x2, y2, d;
			System.out.printf("Quais as coordenadas: ");
			x1 = input.nextDouble();
			y1 = input.nextDouble();
			x2 = input.nextDouble();
			y2 = input.nextDouble();
			//calculo da distancia
			d = Math.sqrt(Math.pow((x2 - x1), 2)+ Math.pow((y2 - y1), 2));
			System.out.printf("Distancia = %.2f\n", d * b / a);
			}
		}
