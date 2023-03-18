package Aula05;

import Aula03.*;

public class TestDate {
    public static void main(String[] args) throws ValueOutOfBounds{
        Date d2 = new Date(31,12, 2001);
        d2.increment();
        System.out.println(d2.getDay());
        d2.decrement();
        System.out.println(d2.getDay());
    }
}
