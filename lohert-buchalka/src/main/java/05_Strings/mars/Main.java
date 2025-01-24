package mars;

class Main {

	public static void main(String[] args) {
		String name = "Marcio";
		String name2 = "Marcio";

		String name3 = new String("Mar");
		String name4 = new String("Mar");	

		System.out.println(name == name2);
		System.out.println(name3 == name4);
	}
}
