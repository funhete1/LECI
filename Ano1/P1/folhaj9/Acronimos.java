import java.util.Scanner;

class Acronimos{
    public static final Scanner lila = new Scanner(System.in);

    public static void main (String[] args){
        int counter = 0;
        String[] frases = new String[21];
        String str = "";

        do{
            str = lila.nextLine();
            frases[counter] = str;
            counter++;

            if(counter > frases.length){
                frases = Resize(frases);
            }

        }while(str.length() != 0);

        counter--;
        String[] ac = new String[counter];


        for(int i = 0; i < counter; i++){
            if(frases[i].length() != 0){
                String carry = GetUpperCase(frases[i]);
                ac[i] = carry;
            }
        }
        for(int i = 0; i < ac.length; i++){
            System.out.printf("Acronimos: %s\n", ac[i]);
        }
    }

    public static String GetUpperCase(String name){
        String acronimo = "";
        String[] array = name.split(" ");


        for(String palavra: array){
            char primeiro = palavra.charAt(0);
            if (Character.isUpperCase(primeiro)){
                acronimo += primeiro;
            }
        }
        return acronimo;
    }
    public static String[] Resize(String[] frases){
        String[] a = new String[name.length + 1];
        for(int i = 0; i < name.length; i++){
            a[i] = name[i];
        }
        return a;

    }

}
