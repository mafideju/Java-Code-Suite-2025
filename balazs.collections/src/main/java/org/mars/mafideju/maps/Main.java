package org.mars.mafideju.maps;

public class Main {
    public static void main(String[] args) {

        App app = new App();
        app.addElement(1, "one");
        app.addElement(2, "two");
        app.addElement(3, "three");
        app.addElement(4, "four");
        app.addElement(5, "five");
        app.addElement(6, "six");
        app.addElement(7, "seven");
        app.addElement(8, "eight");
        app.addElement(9, "nine");
        app.addElement(10, "ten");

        System.out.println(app.map);
        System.out.println(app.getElement(10));

    }
}
