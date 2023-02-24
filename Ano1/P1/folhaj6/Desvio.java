import java.util.Scanner;

class Desvio{

	public static final Scanner AT = new Scanner(System.in);

    public static void main (String[] args) {
        System.out.printf("How many numbers do you like to enter ?");
        int n = AT.nextInt();
        double[] number = new double[n];
        for(int i = 0; i < n; i++){
            System.out.printf("Enter the numbers: ");
            int carry = AT.nextInt();
            number[i] = carry;
        }
        double media = Media(number, n);
        Desvio(number, n, media);
        for(int i = 0; i < n; i++){
            if(number[i] > media)System.out.printf("Desvio da sequencia = %2f ", number[i]);
        }
    }
    public static double Media(double[] number, int n){
        double media = 0;
        for(int i = 0; i < n; i++){
            media = media + number[i];
        }
        media = media / n;
        return media;
    }
    public static void Desvio(double[] number, int n, double media){
        double sum = 0;
        for(int i = 0; i < n; i++){
            sum = number[i] + media;
            sum  = Math.sqrt(Math.pow((sum), 2) / n);
        }
        System.out.printf("Desvio da sequencia = %2f ", sum);
    }
}