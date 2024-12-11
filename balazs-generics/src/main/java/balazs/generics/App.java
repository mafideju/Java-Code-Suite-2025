package balazs.generics;

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


        System.out.println(App.class.getPackageName());
    }
}
