/* Summation of primes
 Problem 10
        The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

        Find the sum of all the primes below two million.
*/



//generate array of primes < 2*10^6
//using Sieve of Eratosthenes

//for i in ArrOfPrimes
// total = total + ArrOfPrimes[i]
// return total

//test with limit=20
//

#include <iostream>

using namespace std;



int main()
{
  //generate all primes < 20
  int lim=2000000;
  int  nums[lim];
  //init all nums to true
  for(int index=0;index<lim;index++){
      nums[index]=true;
  }
    //now mark multiples false
    for(int i=2;i<lim;i++){
      if (nums[i] ==true){
	for(int j=2;i*j<lim;j++){
	  nums[i*j]=false;
	}
      }
    }
    //sum the array
    int total=0;
    unsigned long limit=2*1000000; 
    for(int i=2;i<lim;i++){
      if (nums[i]==true){

        total += i;
	}
    }
    cout<<"the total is "<<total<<endl;
    return 0;
}
