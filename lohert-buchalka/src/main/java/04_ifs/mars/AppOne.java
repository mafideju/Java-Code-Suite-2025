package mars;

class AppOne {

	public static void main(String... args) throws Exception {
		boolean b = false;

		if(b = true) {
			System.out.println("True");
		} else {
			System.out.println("False");
		}

		if (args.length > 0) {

			int customArray = Integer.valueOf(args[0]);
			switch(customArray) {
				case 0:
					System.out.println("Segunda");
					break;
				case 1:
					System.out.println("Terça");
					break;
				default:
					System.out.println("Sábado");
			}	
		}

		int a  = 20;
		while(a > 10) {
			System.out.print(a);
			--a;
		}

		System.out.println();


		int y = 4;
		if(y<10) System.out.println("Too Low");
		else System.out.println("lfhajklshjlkasjdla");
	}

}
