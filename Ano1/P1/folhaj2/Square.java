import java.util.Scanner;

class Square{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        System.out.println("Bem vindo ao quadrado ou não quadrado");
        double x1, y1, x2, y2, x3, y3, x4, y4, l1, l2, l3, l4;
        System.out.println("Ponha as coordenadas dos pontos no sentido horario");
        x1 = AT.nextDouble();
        y1 = AT.nextDouble();
        x2 = AT.nextDouble();
        y2 = AT.nextDouble();
        x3 = AT.nextDouble();
        y3 = AT.nextDouble();
        x4 = AT.nextDouble();
        y4 = AT.nextDouble();
        //calculo dos lados
        l1 = Math.sqrt(Math.pow(x2 - x1), 2) + Math.pow((y2 - y1), 2);
        l2 = Math.sqrt(Math.pow(x3 - x2), 2) + Math.pow((y3 - y2), 2);
        l3 = Math.sqrt(Math.pow(x3 - x4), 2) + Math.pow((y3 - y4, 2);
        l4 = Math.sqrt(Math.pow(x4 - x1), 2) + Math.pow((l4 - y1), 2);

        if(l1 == l2 == l3 == l4)
        {
            System.out.println("E um quadrado");
        }
        else
        {
            System.out.println("Nao e um quadrado");
        }
    }
}