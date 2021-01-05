package problem3;

public class Problem3 {

	public static void problem3(long longNum) {
        int result = 0;
		long largestNumber = longNum;
		long answer = largestNumber;

		for (long i = 2; i <= largestNumber / i; i++) { //divide the largestNumber by i, use the "%" to get the remainder
			while (largestNumber % i == 0) {//remainder = 0 means the number is an integer "%" this is the remainder operation
				answer = i;//assign "i" to answer
				result = (int) (largestNumber /= i);
			}
		}
		if (result > 1) {
			result = (int) largestNumber;
		}
		System.out.println(answer);
	}

}
