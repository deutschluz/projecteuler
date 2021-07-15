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
	
	---
	
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