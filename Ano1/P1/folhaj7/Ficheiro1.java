import java.util.Scanner;
import java.io.*;

class Ficheiro1{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String args[]) throws IOException{
        File ficheiro;
        boolean tf = true;
        do{
            System.out.printf("Enter your file: ");
            String filen = AT.nextLine();
            ficheiro = new File(filen);

            if(ficheiro.isFile()){
                 tf = true;
            }
            else{
                tf = false;
            }

        }while(tf == false );

        if(ficheiro.canRead()){
            Scanner sc = new Scanner(ficheiro);
            String line = "";
            do{
                line = sc.nextLine();
                System.out.println("" +line);
                
            }while(tf = sc.hasNextLine()); 
        }
        else{
            System.out.printf("erro\n");   
        }
    }
}
