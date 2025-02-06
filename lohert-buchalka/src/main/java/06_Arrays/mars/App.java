package mars;

class App {
	public static void main(String... urgh) {
		StringBuilder sb = new StringBuilder();
		sb.append("aaa").insert(1, "bb").insert(4, "ccc");
		System.out.println(sb);

		String numbers = "012345678";
		System.out.println(numbers.substring(1,3));
		System.out.println(numbers.substring(7,7));
		System.out.println(numbers.substring(7));
	}
}
