import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;
 
public class Solution {
 
    public int f(int n)
    {
        int res=0;
        while(n!=0)
        {
            int a=n%10;
            res+=findFact(a);
            n=n/10;
        }
        return res;
    }
    public static int findFact(int n)
    {
        int ret=1;
        for(int i=1;i<=n;i++)
            ret*=i;
        return ret;
    }
    public int s(int n)
    {
        int res=0;
        while(n!=0)
        {
            res+=n%10;
            n/=10;
        }
        return res;
    }
    public int g(int n)
    {
        Solution obj=new Solution();
        int res=1;
        int temp=1;
        int s_f_of_N=0;
        while(s_f_of_N!=n)
        {
            int f_of_N=obj.f(temp);
            s_f_of_N = obj.s(f_of_N);
             
            if(s_f_of_N==n)
            {
                res=temp;
                break;
            }
            temp+=1;
        }
//code copied from https://wp.me/pc8BF4-13L
//Arjun Pinpoint
        return res;
    }
	//Brute force! creative but not smart enough.
    public static void main(String[] args) 
    {
        Solution obj=new Solution();
        Scanner scan=new Scanner(System.in);        
        int q=scan.nextInt();
        while(scan.hasNextInt())
        {
            int n=scan.nextInt();
            int m=scan.nextInt();
            int res=0;
            for(int i=1;i<=n;i++)
            {
                int g_of_i = obj.g(i);
                int sg_of_i = obj.s(g_of_i);
                res+=sg_of_i;
            }
            System.out.println(res);
        }
    }
}
