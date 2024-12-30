package balazs.generics;

import java.util.ArrayList;
import java.util.Properties;

public class App {
    static GenericMethod genericMethod = new GenericMethod();

    public static void main(String[] args) {
        genericMethod.showItem("Hello");
        genericMethod.showItem(1);
        genericMethod.showItem(1.0);
        genericMethod.showItem(true);
        genericMethod.showItem('c');
        genericMethod.showItem(1L);
        genericMethod.showItem(1.0f);
        genericMethod.showItem(1.0d);
        genericMethod.returnMajor(304, 67);

        System.out.println(App.class.getPackageName());
        System.out.println(App.class.getName());

    }
}
