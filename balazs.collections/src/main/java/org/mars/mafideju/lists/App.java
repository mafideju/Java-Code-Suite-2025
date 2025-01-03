package org.mars.mafideju.lists;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class App {

    private String appName;
    private List<String> list = new ArrayList<>();

    public App(String appName) {
        this.appName = appName;
    }

    public void add(String item) {
        list.add(item);
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
}
