package org.mars.mafideju.lists;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        App app = new App("MyApp");
        List<String> list = new ArrayList<>();
        list.add(app.getAppName());
        list.add("Hello");
        list.add("World");
        list.add("!");
        System.out.println(list);
    }
}
