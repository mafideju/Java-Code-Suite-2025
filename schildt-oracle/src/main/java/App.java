public class App {
    public static void main(String[] args) {
        System.out.println("Class name: " + App.class.getSimpleName());
        System.out.println("Canonical name: " + App.class.getCanonicalName());
        System.out.println("Package name: " +  new Object(){}.getClass().getEnclosingClass().getSimpleName());
        System.out.println("Module name: " + App.class.getModule().getName());
    }
}
