package Aula04;
import java.util.*;


abstract class Shapes {
    abstract public double getArea();
    abstract public double getPerimeter();

    public static void main(String[] args) {}

}

class Circle extends Shapes{
    private float radius;

    public Circle(float radius) {
        Scanner sc =  new Scanner(System.in);
        do{
            if(vF(radius)){
                this.radius = radius;
            }else{
                System.out.println("O valor deve ser maior que 0");
                System.out.printf("Insira um novo raio: ");
                radius = sc.nextFloat();
            }
        }while(!vF(radius));
        sc.close();
    }

    //define get and setter
    public float getRadius() {
        return this.radius;
    }

    
    public void setRadius(float radius) {
        Scanner sc = new Scanner(System.in);
        while(!vF(radius)){ 
            sc.nextFloat();
            this.radius = radius;
        }
        sc.close();
    }

    public boolean equals(Circle  c1){
        return this.radius == c1.getRadius();
    }
    
    public String toString(){
        return "Circule: " + this.radius;
    }
    
    boolean vF(float r){
        return r > 0;
    }

    @Override
    public double getArea() {
        return Math.round((Math.PI * this.radius * this.radius));
    }

    @Override
    public double getPerimeter(){
        return (float)Math.PI*2*this.radius;
    }
}

class Triangle extends Shapes{
    private double l1;
    private double l2;
    private double l3;

    public Triangle(double l1, double l2, double l3){
        this.l1 = l1;
        this.l2 = l2;
        this.l3 = l3;
    }

    public double[] getSides() {
        double[] sides = {this.l1,this.l2,this.l3};
        return sides;
    }
    
    public void setSides(double l1, double l2, double l3){
        Scanner sc =  new Scanner(System.in);
        double[] sides = {this.l1,this.l2,this.l3};
        while(!vF(sides)){
            System.out.println("Insira os lados do triangulo(b,l1,l2): ");
            sides[0] = sc.nextDouble();
            sides[1] = sc.nextDouble();
            sides[2] = sc.nextDouble();
        }
        sc.close();
    }

    private boolean vF(double[] sides){
        return ((sides[0] < sides[1] + sides[2] ) &&
                (sides[1] < sides[0] + sides[2]) && 
                (sides[2] < sides[1] + sides[0]));
    }
    public String toString(){
        return "Triangulo de lados:"+this.l1+this.l2+this.l3;
    }

    @Override
    public double getArea() { 
        //System.out.println("Area do Triangulo: " + (float)Math.sqrt(this.l1*this.l2*this.l3));
        double p = (this.l1+this.l2+this.l3)/2;
        return Math.sqrt(p*(p - this.l1) * (p - this.l2) * (p - this.l3));
    }

    @Override
    public double getPerimeter(){
        return (float)Math.sqrt(this.l1*this.l2*this.l3)*2;
    }
}

class Rectangle extends Shapes{
    private double l1;
    private double l2;


    public Rectangle(double l1 , double l2){
        this.l1 = l1;
        this.l2 = l2;
    }
    public double[] getSides() {
        double[] sides = {this.l1,this.l2};
        return sides;
    }
    public void setSides(double l1, double l2){
        Scanner sc =  new Scanner(System.in);
        double[] sides = {this.l1,this.l2};
        while(!vF(sides)){
            System.out.println("Insira os lados do retângulo(l1,l2): ");
            sides[0] = sc.nextDouble();
            sides[1] = sc.nextDouble();
        }
        sc.close();
    }
    private boolean vF(double[] sides){
        for (int i = 0; i < sides.length; i++) {
            if(sides[i]<=0){return false;}
        }
        return true;
    }

    public double getArea() {
        return this.l1*this.l2;
    }
    public double getPerimeter(){
        return 2*this.l1+2*this.l2;
    }
    public String toString(){
        return "Lado 1: "+this.l1+"\nLado 2: "+this.l2;
    }

}
