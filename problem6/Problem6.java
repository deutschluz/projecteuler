package problem4;

public class Problem6 {
	
	public static void main(String[] args) {
		
		System.out.println("Welcome to Problem 6!");
		
		
		int sum = 0;
		for (int i = 1; i <= 10; ++i) {
			int squared = i * i;
			sum = (sum + squared);
			System.out.println(sum);
		
		}
		
		
	}

}

/*
OUTPUT
Welcome to Problem 6!
1
5
14
30
55
91
140
204
285
385



*/