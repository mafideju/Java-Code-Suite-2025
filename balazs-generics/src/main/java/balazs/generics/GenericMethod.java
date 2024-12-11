package balazs.generics;

public class GenericMethod {

    public <T> T showItem(T t) {
        System.out.println("showItem -> " + t);
        return t;
    }
}
