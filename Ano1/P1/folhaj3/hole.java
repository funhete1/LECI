import java.util.Scanner;

class hole
{
    public static final Scanner AT = new Scanner(System.in);
    
    public static void main(String[] args)
    {
        System.out.print("Lenght: ");
        int lenght = AT.nextInt();
        System.out.print("Height: ");
        int height = AT.nextInt();
        //i = linhas 
        for (int i = 0 ; i < height ; i++){
            //j = colunas 
            for (int j = 0; j < lenght; j++){
                String a = ((i == 0) || (i == (height - 1)) || (j == 0) || (j == (lenght - 1))) ? "*" : " ";
                System.out.print(a);
            }
            System.out.println("");
        }
    }
}