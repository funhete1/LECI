import java.util.Scanner;

class Aritmetica{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String args[]){
        Complexo C;
        Complexo C2;
        System.out.printf("Operação: ");
    }
    
    public static Complexo ler(){
        Complexo C = new Complexo();
        System.out.printf("Parte real: ");
        C.r = AT.nextDouble();
        System.out.printf("Parte imaginaria: ");
        C.i = AT.nextDouble();
        return C;
    }
    public static Complexo ler2(){
        Complexo C2 = new Complexo();
        System.out.printf("Parte real: ");
        C2.r = AT.nextDouble();
        System.out.printf("Parte imaginaria: ");
        C2.i = AT.nextDouble();
        return C2;
    }
    public static void escrever(Complexo C){
        if(C.i >= 0) System.out.printf("Resultado: %.1f+%.1fi\n", C.r, C.i);
        else System.out.printf("Resultado: %.1f-%.1fi\n", C.r, C.i);
    }
    public static void operacoes(){
        Complexo C = new Complexo();
        Complexo C2 = new Complexo();
        Complexo C3 = new Complexo();
        C.r = 0;
        C.i = 0;
        char op;
        do{
            System.out.printf("Operação: ");
            op = AT.next().charAt(0);
            if(op == '+'){
                ler();
                ler2();
                escrever(C);
                System.out.printf(" + ");
                escrever(C2);
                System.out.printf(" = ");
                C3.r = C.r + C2.r;
                C3.i = C.i + C2.i;
                escrever(C3);
            }
            if(op == '-'){
                ler();
                ler2();
                escrever(C);
                System.out.printf(" - ");
                escrever(C2);
                System.out.printf(" = ");
                C3.r = C.r - C2.r;
                C3.i = C.i - C2.i;
                escrever(C3);
            }
            if(op == '*'){
                ler();
                ler2();
                escrever(C);
                System.out.printf(" * ");
                escrever(C2);
                System.out.printf(" = ");
                C3.r = ( (C.r * C2.r) - (C.i * C2.i) );
                C3.i = ( (C.i * C2.r ) + (C.r * C2.i ) );
                escrever(C3);
            }
            if(op == '/'){
                ler();
                ler2();
                escrever(C);
                System.out.printf(" * ");
                escrever(C2);
                System.out.printf(" = ");
                C3.r = ( ( (C.r * C2.r) + (C.i * C2.i) ) / ( Math.pow(C2.r, 2) + Math.pow(C2.i, 2) ) );
                C3.i = ( ( (C.i * C2.r) - (C.r * C2.i) ) / ( ( Math.pow(C2.r, 2) + Math.pow(C2.i, 2) ) )  );
                escrever(C3);
            }
            if(op == '='){
                System.out.printf("O programa vai terminar... ");
                break;
            }
            else{
                System.out.printf("Operação não permitida!");
            }
        }while(op != '=');
    }
}
class Complexo{
    double r, i;
}