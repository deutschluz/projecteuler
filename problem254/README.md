# README Probem 254 
	from projecteuler.net

## Problem Statement

	* Define f(n) as the sum of the factorials of the digits of n. 
		- For example, f(342) = 3! + 4! + 2! = 32.

	* Define sf(n) as the sum of the digits of f(n). So sf(342) = 3 + 2 = 5.

	* Define g(i) to be the smallest positive integer n such that sf(n) = i. 
		Though sf(342) is 5, sf(25) is also 5, and it can be verified that g(5) is 25.

	* Define sg(i) as the sum of the digits of g(i). So sg(5) = 2 + 5 = 7.

	* Further, it can be verified that g(20) is 267
		- and the sum of sg(i) for i from 1 to 20 is 156
	
	**what is the sum of sg(i) from 1 to 150?**
	
	
# Analysis of the problem

	## Remarks
		* the first function needs a better name: say, sumDigitFac(n)
			- thus we must show that sumDigitFac(342) = 32
		* sf shall be renamed to sumDigit; and we need to implement
			- sumDigit(sumDigitFac(342)) = 5
		* g(i) is an interesting function: in words, 
			"g of i is to be the smallest positive integer n such that sumDigit(sumDigitFac(n))=i"
		* the myu operator in recursion function theory is used to denote functions that
			- require a minimization; see the wiki on the "mu" operator for more.
		* the next line says "it can be verified that ..."; in other words, a proof
			can be found that g(5) is 25.
		* another claim about a proof is made in this line: "it can be verified that 
			g(20) is 267"
	
	# Insights 
		* there is a way to generate proofs for statements such as "x is the least positive
			integer such that [expression(x)]"; this is the obvious brute force method which 
			reasons as follows: if x is the least positive integer that [expression(x)]; then
			obviously, [expression(x-1)] must be false because x-1 < x and so we can search
			from x to 0 to verify that x is in fact the least such positive integer. 
			
		* using this reasoning we can devise a brute force method to prove that
			25 is the least positive integer such that sumDigit(sumDigitFac(25))=5
			```python
				for i in range(24):
					if sumDigit(sumDigitFac(i))==5:
						return false
				else:
					return true;
			```
			- the loop simply searches through all i < 25 and checks the condition; pretty simple.
			
		* we have enough understanding now to implement a brute force approach and check that
			the sum of sg(i) from 1 to 20 is 156
			
		* first lets implement g(i) as bruteForce(N,i)
			```python
			def bruteForceProof(N,i):
				for n in range(1,N):
					if sumDigit(SumDigitFac(n))==i:
						return n
				else:
					return False;
			```
		* in bruteForce(N,i) N is acting as an arbitrary limit and in fact, the
			values returned fluctuate randomly
			
		* since we have renamed g to bruteForce, we will also rename 's' in 'sg' to
			sumDigit, so that we want to show using the code below 
				```python
					total=0
					for i in range(1,20):
						total=total + sumDigit(bruteForceProof(10000,i))
					return total
				```
				that total=156
				
		* ```python
			def sum(lim,N):
				total=0
				for i in range(1,N+1):
					total=total + sumDigit(bruteForceProof(lim,i))
				return total
   
			print(sum(1000,20))
		
	
# Key Insigts 
	- all of the complexity of this problem lies in the bruteForceProof function
	