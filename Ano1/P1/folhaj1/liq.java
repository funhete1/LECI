import java.util.Scanner;
class liq{
    public static void main(String[] agrs){
        Scanner input = new Scanner(System.in);
        float bruto, desconto, iva, quantidade;
        double liquido;
        System.out.println("Qual o valor de um produto: ");
        bruto = input.nextFloat();
        System.out.println("Qual o valor do desconto(%): ");
        desconto = input.nextFloat();
        System.out.println("Qual o valor do iva(%): ");
        iva = input.nextFloat();
        System.out.println("Qual a quantidade: ");
        quantidade = input.nextFloat();
        //calculo do valor liquido
        iva = (iva/100) * bruto;
        desconto = (desconto / 100) * (bruto + iva);
        liquido = (bruto + iva - desconto);
        System.out.printf("Valor liquido = %.2f", liquido);
    }
}