package Aula03;


public class Ex8 {
    public static void main(String[] args) {
        printTable(getNotes(16, 2));
    }
    public static Float[][] getNotes(int row, int column) {
        
        Float[][] notes = new Float[row][column];

        for (int i = 0; i < row; i++) {
            for (int j = 0; j < column; j++) {
                notes[i][j] = (float)Math.floor(Math.random() * 21);
            }
        }
        return notes;
    }

    public static void printTable(Float[][] table) {
        System.out.printf("NotaT   NotaP   Pauta");
        for(int i = 0; i < table.length; i++){
            System.out.println();
            for (int j = 0; j < table[i].length; j++) {
                System.out.printf("%4.1f\t", table[i][j]);
            }
            System.out.printf("%4.1f",Notafinal(table[i][0],table[i][1]));
        }
    }
    public static double Notafinal(float notaPratica, float notaTeorica) {
        return (0.4 * notaTeorica + 0.6 * notaPratica);
    }
}