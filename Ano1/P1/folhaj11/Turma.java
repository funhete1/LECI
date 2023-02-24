import java.util.Scanner;

class Turma{
    public static final Scanner AT = new Scanner(System.in);

    public static void main(String args[]){
        int option = 0;
        menu();
        do{
            option = AT.nextInt();
            switch(option){
                case 1:


            }
        }while(option != 0)
    }
    public static void menu(){
        System.out.println("Gestão de uma turma: ");
        System.out.println("1 - Inserir informação da turma: ");
        System.out.println("2 - Mostrar informação de um aluno: ");
        System.out.println("3 - Alterar informação de um aluno: ");
        System.out.println("4 - Listar os alunos ordenados por nº mec: ");
        System.out.println("5 - Listar os alunos ordenados por nota final: ");
        System.out.println("6 - Média das notas finais: ");
        System.out.println("7 - Melhor aluno: ");
        System.out.println("8 - Inserir pesos dos vários testes: ");
        System.out.println("9 - Gravar dados dos alunos num ficheiro: ");
        System.out.println("0 - Terminar o programa: ");
        System.out.print("Opcao: ");    
    }
    
    public static Alunos read(){
       
        Alunos ficha = new Alunos();
        System.out.print("Introduza o nome do aluno: ")
        ficha.nome = AT.nextLine();
        for(int i = 0; i < 3; i++){
            System.out.print("Nota do testes: ");
            int carry = AT.nextInt();
            while(valid(carry) == false){
                System.out.printf("Nota invalida!");
                carry = AT.nextInt();
            }
            ficha.nae
            
            
        }
    }
    
    public static boolean valid(int nota){
        boolean tf = true
        if(nota < 0 || nota > 20){
            return tf;
        }
        else{
            tf = false;
            return tf
        }
    }

}

class Alunos{
    int mec = 0;
    String nome = "";
    int[] notas = new int[3];
    double nf = 0.0;
}