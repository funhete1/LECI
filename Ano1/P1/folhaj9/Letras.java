import java.util.Scanner;

class Letras{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        int up = 0, low = 0, isd = 0, v = 0, c = 0;

        System.out.printf("Frase de entrada -> ");
        String str = AT.nextLine();

        for(int i = 0; i < str.length(); i++){
            if(Character.isUpperCase(str.charAt(i))) up++;
            if(Character.isLowerCase(str.charAt(i))) low++;
            if(Character.isDigit(str.charAt(i))) isd++;
            if(isVowel(str.charAt(i))) v++;
            char j = str.charAt(i);
            if(!Character.isDigit(str.charAt(i)) && isVowel(j) ==  false && str.charAt(i) != ' ') c++;
        }
        System.out.println("Número de caracteres minúsculos -> " +low);
        System.out.println("Número de caracteres maiúsculos -> " +up);
        System.out.println("Número de caracteres numéricos  -> " +isd);
        System.out.println("Número de vogais -> " +v);
        System.out.println("Número de consoantes -> " +c);

    }
    public static boolean isVowel(char c){
        boolean tf = false;

        if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' ){
            tf = true;
        }
        if(c == 'A' || c == 'B' || c == 'I' || c == 'O' || c == 'U' ){
            tf = true;
        }
        return tf;

    }
}