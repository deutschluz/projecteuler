package problem4;

/*
 * 
 *  A palindromic number reads the same both ways. 
    The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

    Find the largest palindrome made from the product of two 3-digit numbers.
 * 
 * OUTPUT
 * 485584 
 * SOLVED!
 * 
 */


public class Problem4 {
    
    public static void makePalindrome(int a) {
        int resultProd = 0;
        int i = a;
        for(int i ; i > 0; i--) {
            for(int j = 999; j > 0; j--) {
                int prod = ((i*j)/2);
                if (prod <= resultProd) {
                    break;
                }
                String s1 = Integer.toString(prod);
                String s2 = new StringBuffer(s1).reverse().toString();
                if(s1.equals(s2)) {
                    resultProd = prod;
                }
            }       
        }
        System.out.print(resultProd);
    }
}
