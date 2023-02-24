import java.util.Scanner;
class Random_2{
  int randomWithRange(int min, int max)	//defining method for a random number generator
  {
	int range = (max - min) + 1;
    return (int)(Math.random() * range) + min;
  }
  public static final Scanner AT = new Scanner(System.in);
  public static void main(String[] args){
    System.out.printf("Fale um numero inteiro: ");
    int n = AT.nextInt();
    Random_2 obj1 = new Random_2(); 			// creating an object of MyClass
    int rand = obj1.randomWithRange(1,20);	// range is from 1 to 100
    if (n == rand){
		System.out.println("Acertou");
		System.out.printf("Seu numero: %d\n", n);
		System.out.printf("Numero do pc: %d\n", rand);
    }
    else{
		System.out.println("Errou");
		System.out.printf("Seu numero: %d\n", n);
		System.out.printf("Numero do pc: %d\n", rand);
    }
  }
}