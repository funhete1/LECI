import java.util.Scanner;


public class DoStats {
  static final Scanner sc = new Scanner(System.in);

  public static void main(String[] args) {
    // Cria um registo de estatisticas:
    Statistics xstat = new Statistics();

    // Enquanto houver um valor para ler:
    while (sc.hasNextDouble()) {
      // Lê um valor:
      double x = sc.nextDouble();
      // Atualiza o registo de estatisticas:
      updateStats(xstat, x);
    }

    // Escreve resultados:
    System.out.printf("numero de valores = %d\n", xstat.num);
    System.out.printf("soma dos valores = %f\n", xstat.sum);
    System.out.printf("soma dos quadrados = %f\n", xstat.sum2);
    if (xstat.num > 0) {
      System.out.printf("min = %f\n", xstat.min);
      System.out.printf("max = %f\n", xstat.max);
      System.out.printf("média = %f\n", mean(xstat));
      System.out.printf("variancia = %f\n", variance(xstat));
    } else {
      System.out.printf("Lista vazia!");
    }
  }
  // Definir funções updateStats, mean e variance!
  public static void updateStats(Statistics xstat, double x){
    xstat.num ++;
    xstat.sum += x;
    xstat.sum2 += Math.pow(x, 2);
    xstat.min = xstat.min <= x ? xstat.min : x;
    xstat.max = xstat.max >= x ? xstat.max : x;
  }
  public static double mean(Statistics xstat){
    return xstat.sum / xstat.num;
  }
  public static double variance(Statistics xstat){
    double media = mean(xstat);
    return (xstat.sum2 / xstat.num) - Math.pow(media,2);
  }
}

class Statistics{
  double max = 0;
  double min = 0;
  int num = 0;
  double sum = 0;
  double sum2 = 0;
}
