import java.util.scanner;

class Tabuada{
    public static final Scanner AT = new Scanner(System.in);
    
    public static void main(String[] args){
        System.out.println("Introduza um numero de 1 a 99");
        int n = AT.nextInt();
        System.out.println("-------------------");
        System.out.printf("  Tabuada dos %2d\n ", n);
        System.out.println("-------------------");
        System.out.printf("| %2d x  1  |  %3d |\n", n, 1 * n);
        System.out.printf("| %2d x  2  |  %3d |\n", n, 2 * n);
        System.out.printf("| %2d x  3  |  %3d |\n", n, 3 * n);
        System.out.printf("| %2d x  4  |  %3d |\n", n, 4 * n);
        System.out.printf("| %2d x  5  |  %3d |\n", n, 5 * n);
        System.out.printf("| %2d x  6  |  %3d |\n", n, 6 * n);
        System.out.printf("| %2d x  7  |  %3d |\n", n, 7 * n);
        System.out.printf("| %2d x  8  |  %3d |\n", n, 8 * n);
        System.out.printf("| %2d x  9  |  %3d |\n", n, 9 * n);
        System.out.printf("| %2d x 10  |  %3d |\n", n, 10 * n);
    }
}