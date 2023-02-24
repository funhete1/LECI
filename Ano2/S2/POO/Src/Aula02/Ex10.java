package Aula02;
import java.util.*;

public class Ex10 {
    public static void main(String[] args) {
        readValues();
    } 
    public static void readValues(){
        Scanner sc = new Scanner(System.in);
        List<Float> numbers = new ArrayList<Float>();
        numbers.add(sc.nextFloat());
        do{
            numbers.add(sc.nextFloat());           
        }while(0 != Float.compare(numbers.get(0), numbers.get(numbers.size() -1)));
        //System.out.printf("Max value: %d", max(numbers));
        System.out.println("Max and Min:"+maxMin(numbers));
        System.out.printf("Average: %.2f\n",mid(numbers));
        System.out.println("Total of numbers read: "+numbers.size());
        sc.close();
    }
    public static Set<Float> maxMin(List<Float> list) {
        Set<Float> mm = new HashSet<Float>();
        float max = list.get(0);
        float min = list.get(0);
        for (int i = 0; i < list.size(); i++) {
            if(list.get(i) > max) max = list.get(i);
            if(list.get(i) < min) min = list.get(i);
        }
        mm.add(max);
        mm.add(min);
        return mm;
    }
    public static float mid(List<Float> list) {
        float mid = 0;
        for (int i = 0; i < list.size(); i++) {
            mid += list.get(i);
        }
        return (mid/list.size());
    }
}
