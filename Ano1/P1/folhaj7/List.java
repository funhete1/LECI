import java.io.*;
import java.util.Scanner;

import javax.sql.rowset.spi.SyncProviderException;

class List{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args)throws FileNotFoundException{

        int counter = 0;
        int[] carry = new int[Integer.MAX_VALUE];
        int[] numbers = readListFile(args[0]);

        for(int i = 0; i < numbers.length; i++){
            if(numbers[i] >= 0){
                counter++;
                carry[i] = numbers[i];
            }
        }

        int[] positive = new int[counter];

        for(int j = 0; j < counter; j++){
            if(carry[j] > 0){
                positive[j] = carry[j];
            }
        }
        for(int i = 0; i < counter; i++){
            System.out.printf("Numeros positivos do ficheiro: %d\n", positive[i]);
        }
    }
}