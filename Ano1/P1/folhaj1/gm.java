import java.util.Scanner;
class gm{
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        System.out.println("Gasto do primeiro dia: ");
        double i, j;
        i = input.nextDouble();
        //gasto do primeiro dia
        j = i;
        //gasto do dia 2
        i = i + i * 0.2;
        //gasto do dia 3
        i = i + i * 0.2;
        //gasto do dia 4
        i = i + i * 0.2;
        System.out.printf("Gasto do medio da viagem = %.2f\n", (i + j)/ 4);
    }
}