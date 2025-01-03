package org.mars.mafideju.lists;

import java.util.*;

public class App {

    private String appName;
    private List<String> list = new ArrayList<>();

    public App(String appName) {
        this.appName = appName;
    }

    public void add(String item) {
        list.add(item);
    }

    public void add(Integer index, String item) {
        list.add(index, item);
    }

    public void addAll(Collection<String> items) {
        list.addAll(items);
    }

    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }

    public SortedSet<?> sortedList(Collection<?> linkedList) {

        SortedSet<?> sortedList = new TreeSet<>(linkedList);

        return sortedList;
    }
}
