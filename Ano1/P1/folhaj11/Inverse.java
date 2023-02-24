import java.util.Scanner;

class Inverse {
        public static final Scanner AT = new Scanner(System.in);

         public static void main(String[] args) {
            String carry = "";
            String fim = "fim";
            int counter = 0;
            String[] frases = new String[10];
            do{
                carry = AT.nextLine();
                frases[counter] = carry;
                counter++;
                
            }while(!carry.equals(fim) || counter != 9);

            System.out.println("Resultado: ");
            for(int i = counter - 1; i > 0; i--){
                System.out.printf("%s", frases[i]);
            }
        }
}