import java.util.Scanner;

class Nprimeiros{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        System.out.println("Introduza um valor de N");
        int n = AT.nextInt();
        double a = 0;
        for (int i = 0; i < n; i++){
            a = a + (Math.pow((-1), i))/(2 * i + 1);
        }
        System.out.printf("%.15f\n", a);
        if (a > 3.14 / 4){
            System.out.println("Seu n e maior que pi/4");
        }
        else if (a < 3.14 / 4){
            System.out.println("Seu n e menor que pi/4");
        }
        else{
            System.out.println("Seu n e igual que pi/4");     
        }
    }
}