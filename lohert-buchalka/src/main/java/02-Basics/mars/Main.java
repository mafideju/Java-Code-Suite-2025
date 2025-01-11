package mars;

class Main {

	public static void main(String... args) {
		System.out.println(args.length);

		// WHOLE NUMERIC PRIMITIVES CLASS ONGOING

		if(args.length > 0) {
			for(int i = 0; i < args.length; i++) {
				System.out.println(args[i]);
			}
		}

		String personName = args[0];
		Integer personAge = Integer.parseInt(args[1]);
		Person person = new Person(personName, personAge);
		System.out.println("Funcionario " + person.getName() + ", tem " + person.getAge() + " anos.");

	}

}



