package org.mars.mafideju.lists;

import java.util.*;

public class Main {
    public static void main(String[] args) {

        App app = new App("MyApp");

        app.add("Olá");
        app.add("Mundo");
        app.add("!");
        app.add(0, "Teste");
        app.add("Teste");


        StringBuilder sb = new StringBuilder();
        sb.append(app.getAppName());
        sb.append(":\n");
        sb.append(app.getList().toString());

        System.out.println(sb);

        LinkedList<Double> linkedList = new LinkedList<>();
        linkedList.add(47.1);
        linkedList.add(65.5);
        linkedList.add(9.11);
        linkedList.add(3.14);
        linkedList.add(2.71);
        linkedList.add(85.78);
        linkedList.add(23.08);
        linkedList.addLast(0.0);
        linkedList.addFirst(100.0);
        Double test = linkedList.getFirst() * 2;
        linkedList.add(test);
//        linkedList.add((double) System.currentTimeMillis() / 1000);
        System.out.println(Collections.max(linkedList));
        System.out.println(Collections.min(linkedList));

        LinkedList<String> linkedString = new LinkedList<>();
        linkedString.add("Maria");
        linkedString.add("Adriana");
        linkedString.add("Gisele");

        System.out.println(linkedList.toString());
        System.out.println(app.sortedList(linkedList));
        System.out.println(linkedString.toString());
        System.out.println(app.sortedList(linkedString));

        Vector<String> vector = new Vector<>();
        vector.add("Why ");
        vector.add("use ");
        vector.add("vectors?");
        System.out.println(vector.toString());

        Stack<String> stack = new Stack<>();
        stack.push("Why ");
        stack.push("use ");
        stack.push("stacks?");
        stack.push("Gimme good reasons! ");
        stack.add(1, "not ");
        System.out.println(stack.peek());
        stack.ensureCapacity(25);
        System.out.println(stack.size());
        System.out.println(stack.toString());
    }
}
