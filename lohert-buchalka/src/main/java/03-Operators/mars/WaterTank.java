package mars;

class WaterTank {

        private String brand;
        private boolean empty;

        public static void main(String[] args) {
                WaterTank wt = new WaterTank();
                System.out.println(wt.empty);
                System.out.println(wt.brand);

		Object ob = new Object();
		System.out.println((String) ob.toString());
        }

} 

