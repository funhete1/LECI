package Aula04;

public class TestShapes {
    public static void main(String[] args) {
        TestCircle();
    }
    public static void TestCircle(){
        //Exemplo de um funcionamento correto
        Circle c1 = new Circle(5);
        System.out.println("Raio do Circulo: "+c1.getRadius());
        System.out.println("Area do Circulo: "+c1.getArea());
        System.out.println("Perimetro do Circule: " + c1.getPerimeter());
        

        //Exemplo de um  funcionamento incorreto
        Circle c2 = new Circle(-1);
        System.out.println("Raio do Circulo: "+c2.getRadius());
        System.out.println("Area do Circulo: "+c2.getArea());
        System.out.println("Perimetro do Circule: " + c2.getPerimeter());
    }
}
