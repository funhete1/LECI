import java.util.Scanner;

class HNotas{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String[] args){
        int as0 = 0, as1 = 0, as2 = 0, as3 = 0, as4 = 0, as5 = 0;
        int as6 = 0, as7 = 0, as8 = 0, as9 = 0, as10 = 0;
        int as11 = 0, as12 = 0, as13 = 0, as14 = 0, as15 = 0;
        int as16 = 0, as17 = 0, as18 = 0, as19 = 0, as20 = 0;
        System.out.printf("How many grades are you going enter\n");
        int n = Intervalo(1, 50);
        int[] grades = new int[n];
        int[] counters = new int[21];

        for(int i = 0; i < n; i++){
            System.out.printf("Enter your grades: ");
            int carry = AT.nextInt();
            if(carry < 0 || carry > 20){
                System.out.printf("Your grade must be between 0 and 20");
                carry = AT.nextInt();
            }
            grades[i] = carry;
        }
        // check os numero repetidos
        for(int i = 0; i < grades.length; i++){
            if(grades[i] == 0) counters[0]++;
            if(grades[i] == 1) counters[1]++;
            if(grades[i] == 2) counters[2]++;
            if(grades[i] == 3) counters[3]++;
            if(grades[i] == 4) counters[4]++;
            if(grades[i] == 5) counters[5]++;
            if(grades[i] == 6) counters[6]++;
            if(grades[i] == 7) counters[7]++;
            if(grades[i] == 8) counters[8]++;
            if(grades[i] == 9) counters[9]++;
            if(grades[i] == 10) counters[10]++;
            if(grades[i] == 11) counters[11]++;
            if(grades[i] == 12) counters[12]++;
            if(grades[i] == 13) counters[13]++;
            if(grades[i] == 14) counters[14]++;
            if(grades[i] == 15) counters[15]++;
            if(grades[i] == 16) counters[16]++;
            if(grades[i] == 17) counters[17]++;
            if(grades[i] == 18) counters[18]++;
            if(grades[i] == 19) counters[19]++;
            if(grades[i] == 20) counters[20]++;
        }
        System.out.printf("\nHistograma de notas");
        System.out.printf("\n-------------------------------------------------------");
        for(int j = 20; j >= 0; j--){
            System.out.printf("\n%2d | ", j);
            Historiograma('*', counters[j]);
        }
        System.out.print("\n\n");
    }
    
    public static void Historiograma(char c, int d){
        for(int i = 0; i < d; i++){
            System.out.print(c);
        }
    }

    public static int Intervalo(int min, int max){
        int n = AT.nextInt();
        while(n < min || n > max){
            System.out.printf("The maximum number of grades is 50\n");
            n = AT.nextInt();
        }
        return n;
    }
}