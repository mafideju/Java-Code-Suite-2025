package org.mars.mafideju.maps;

import java.util.HashMap;
import java.util.Map;

public class App {

    Map<Integer, String> map = new HashMap<Integer, String>();

    public void addElement(int key, String value) {
        map.put(key, value);
    }

    public void removeElement(int key) {
        map.remove(key);
    }

    public void updateElement(int key, String value) {
        map.put(key, value);
    }

    public void printMap(HashMap<Integer, String> map) {
        for (Map.Entry<Integer, String> entry : map.entrySet()) {
            System.out.println("Key: " + entry.getKey() + " Value: " + entry.getValue());
        }
    }

    public String getElement(int key) {
        return map.get(key);
    }
}
