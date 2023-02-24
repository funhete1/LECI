import java.util.Scanner;

class Coordenadas{
    final static Scanner AT = new Scanner(System.in);

    public static void main(String args[]){
        int counter = 0;
        double distancia = 0;
        boolean tf = true;
        Ponto2D cords;
        Ponto2D max = new Ponto2D();
        Ponto2D origem = new Ponto2D();
        origem.x = 0;
        origem.y = 0;
        do{
            cords = ler();
            if(distancia(cords, origem) >= distancia(max, origem)){
                max.x = cords.x;
                max.y = cords.y;
            }
            distancia += distancia(cords, origem);
            counter++;
            if(((cords.x == 0) && (cords.y == 0))){
                tf = false;
            }
        }while(tf);
        write_distancia(counter, distancia);
        write_coords(max);
    }
    public static Ponto2D ler(){
        Ponto2D cords = new Ponto2D();

        System.out.printf("Enter a point: \n");
        System.out.printf("Coordenada x: ");

        cords.x = AT.nextInt();


        System.out.printf("Coordenada y: ");

        cords.y = AT.nextInt();
        return cords;

    }
    public static void write_distancia(int counter, double distancia){
         System.out.printf("A soma das distâncias do(s) %d pontos à origem é %.1f\n", counter - 1, distancia);
    }
    public static void write_coords(Ponto2D a){
        System.out.printf("O ponto mais afastado da origem foi: (%d.0, %d.0)\n", a.x, a.y);
    }
    public static double distancia(Ponto2D a, Ponto2D b){
        return Math.sqrt(Math.pow((a.x - b.x), 2) + Math.pow((a.y - b.y), 2));
    }

}
class Ponto2D{
    int x, y;
}