package balazs.generics;

public class Generic<T> {
    private T value;

    public Generic(T value) {
        this.value = value ;
    }

    public T getT() {
        return value;
    }

}
