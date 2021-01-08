package problem6;

public class Problem6 {
	
	public static void main(String[] args) {
		
		System.out.println("Welcome to Problem 6!");
		
		int sum1 = 0;
		int sum1Squared = 0;
		int sum = 0;
		for (int i = 1; i <= 10; ++i) {
			sum1 = (sum1 + i);
			
			sum1Squared = (sum1 * sum1);
			int squared = i * i;
			sum = (sum + squared);
			System.out.println(sum + " " + sum1Squared + " " + (sum1Squared - sum));
		
		}
		
	}

}

/*
OUTPUT
Welcome to Problem 6!
Welcome to Problem 6!
1 1 0
5 9 4
14 36 22
30 100 70
55 225 170
91 441 350
140 784 644
204 1296 1092
285 2025 1740
385 3025 2640



*/
