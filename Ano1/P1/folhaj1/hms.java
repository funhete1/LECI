    import java.util.Scanner;
    class hms{
        public static void main(String[] args){
            Scanner input = new Scanner(System.in);
            System.out.printf("Quantos segundos: ");
            int n = input.nextInt();
            System.out.printf("%02d : %02d : %02d\n", (n / 3600), ((n / 60) % 60), (n  % 60));
            }
    }