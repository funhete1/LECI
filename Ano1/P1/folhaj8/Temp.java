import java.util.Scanner;

class Temp{

    public static final Scanner AT = new Scanner(System.in);

    public static void main(String args[]){
        Temperaturas valores = new Temperaturas();


    }
    public static Temperaturas ler(){
        Temperaturas valores = new Temperaturas();
        for(int i = 0; i < 10; i++){
            do{
                System.out.printf("Temperatura minima do dia %d: ", i);
                valores.d[i] = AT.nextDouble();
            }while(valores.d[i] < -20 || valores.d[i] > 50);
            do{
            System.out.printf("Temperatura maxima do dia %d: ", i);
            valores.d[i] = AT.nextDouble();
            }while(valores.d[i] < -20 || valores.d[i] > 50);
        }
        return valores;
    }
    public static void max_min(Temperaturas valores){

        double delta = 0;
        for(int i = 0; i < 10; i = i + 2){
            if(i + 1 > 9)break;
            amplitude = valores.d[i + 1] - valores.d[i];
            switch(i){
                case 0:

            }
        }

    }
}
class Temperaturas{
    double[] d = new double[10]
}