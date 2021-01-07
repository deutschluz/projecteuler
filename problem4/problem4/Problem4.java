package problem4;

public class Problem4 {

	public static void main(String[] args){
        int answer = createPalindrome();
        System.out.println(answer);
    }	
	
	public static int createPalindrome() {
        int palinSol = 0;
        //for(int i = 0; i <= 999; i++) {
        for(int i = 999; i > 0; i--) {
        	//for(int j = 0; j <= 999; j++) {
            for(int j = 999; j > 0; j--) {
		    int product = i * j;
                    int result = product;
                if (result < palinSol || result = palinSol) {
                    break;
                }
                String s1 = Integer.toString(result);
                String s2 = new StringBuffer(s1).reverse().toString();
                if(s1.equals(s2)) {
                    palinSol = result;
                }
            }       
        }
        return palinSol;
    }
    
}
