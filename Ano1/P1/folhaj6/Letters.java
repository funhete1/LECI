import java.util.Scanner;

class Letters{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        System.out.print("String: ");
        String frase = AT.nextLine();

        int[] histograma = new int[26];

        for(int i=0; i < frase.length(); i++){
            if( frase.charAt(i)>='a' && frase.charAt(i)<='z' ) {
                histograma[frase.charAt(i) - 'a'] += 1;
            }
        }

        System.out.print("Letras usadas: ");
        for(int i = 0; i < 26; i++){
            if(histograma[i] != 0){
                System.out.print(Character.toString((char) i + 'a') + " ");
            }
        }
        System.out.println("");
    }
}