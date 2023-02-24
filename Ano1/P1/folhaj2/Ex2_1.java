import java.util.Scanner;
class Ex2_1{
    public static final Scanner AT = new Scanner(System.in);
    public static void main(String[] args){
        double nota1, nota2, nota3;
        System.out.println("Nota de TPG1: ");
        nota1 = AT.nextDouble();
        System.out.println("Nota de TPG2: ");
        nota2 = AT.nextDouble();
        System.out.println("Nota de EL: ");
        nota3 = AT.nextDouble();
        nota1 = nota1 * 0.2 + nota2 * 0.3 + nota3 * 0.5;
        if (nota1 >= 9.5)
        {
            System.out.println("Aluno aprovado");
        }
        else
        {
           System.out.println("Aluno reprovado"); 
        }
    }
}
