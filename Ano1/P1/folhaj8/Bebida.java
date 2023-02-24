import java.util.Scanner;

class Bebida{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String args[]){
        Pessoa dados = new Pessoa();
        ler();
        TAS(dados);
    }
    public static Pessoa ler(){
        Pessoa dados = new Pessoa();

        System.out.printf("Nome: ");
        dados.n = AT.nextLine();

        do{
            System.out.printf("Sexo: ");
            dados.s = AT.nextLine();
        }while(dados.s != "Masculino" || dados.s != "Feminino");

        do{
            System.out.printf("Massa(Peso): ");
            dados.kg = AT.nextDouble();
        }while(dados.kg < 0);

        do{
            System.out.printf("Quantidade de alcool ingerida ");
            dados.ml = AT.nextDouble();
        }while(dados.ml < 0);

        do{
            System.out.printf("Qual o teor alcoolico da bebida ingerida: ");
            dados.TA = AT.nextDouble();
        }while(dados.TA < 0);

        System.out.printf("Bebeu em jejum: ");
        String answer = AT.nextLine();
        if(answer == "sim")dados.j = true;
        else dados.j = false;
        
        return dados;
    }

    public static void TAS(Pessoa dados){
        double coeficiente = 0;
        if(dados.s == "Feminino" && dados.j == true){
            coeficiente  = 0.6;
        }
        if(dados.s == "Masculino" && dados.j == true){
            coeficiente = 0.7;
        }
        else coeficiente = 1.1;

        double tas = (0.8 * dados.ml * dados.TA) / (dados.kg * coeficiente);
        System.out.printf("TAS = %.1f\n", tas);
    }
}
class Pessoa{
    String n; //nome
    String s; //sexo
    double kg; //peso
    double ml; //quantidade ingerida
    double TA; //teor alcoolico
    boolean j; //jejum ou nao
}