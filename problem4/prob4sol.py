'''   A palindromic number reads the same both ways. 
        The largest palindrome made from the product of two 2-digit 
       numbers is 9009 = 91 × 99.

        Find the largest palindrome made from the product of 
        two 3-digit numbers.'''


# solution

# generate list of products of all 3 digit numbers
# starting from 999 down and put them into array
#  for i=999 down to 100
#      for j = 999 down to 100
#         if isPalindrome(i*j)
#             result[1000-i]=i*j
#  return result
#
# find largest element in array 
