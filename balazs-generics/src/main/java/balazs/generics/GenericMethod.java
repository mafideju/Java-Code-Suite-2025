package balazs.generics;

public class GenericMethod {

    public <T> void showItem(T t) {
        System.out.println("showItem -> " + t);
    }

    public <T extends Comparable<T>> void returnMajor(T t1, T t2) {
        System.out.println("Compare -> " + t1 + " -> " + t2);
        if (t1.compareTo(t2) > 0) {
            System.out.println("Comparable -> " + t1);
        } else {
            System.out.println("Comparable -> " + t2);
        }
    }

}
