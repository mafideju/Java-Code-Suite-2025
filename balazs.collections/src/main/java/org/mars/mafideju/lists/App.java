package org.mars.mafideju.lists;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class App {
    List<? extends Collection<?>> list = new ArrayList<>();
    
    public static void main(String[] args) {
        List<String> list = new ArrayList<>();
        list.add("Hello");
        list.add("World");
        list.add("!");
        System.out.println(list);
    }
}
