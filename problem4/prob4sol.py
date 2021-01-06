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


#function that determines whether a number is a palindrome
def isPalindrome(num):
    lo,hi=0,0
    #convert num to list
    listnum=[int(x) for x in str(num)]
    hi=len(listnum)-1
    while lo<hi:
      if listnum[lo]!=listnum[hi]:
        return False;
      lo=lo+1
      hi=hi-1
#if it makes out of the while loop it is a palindrome
    return True;
        

# function to generate products
def genProds(lolim,uplim):
    product=0
    result=[] #empty list for palindromic numbers
    for i in range(uplim,lolim,-1):
      for j in range(uplim,lolim,-1):
          product=i*j
          #if product is palidrome
          if isPalindrome(product):
              #add them to 
              result.append(product)
    return result

def findMax(l):
    return max(l);

def main():
    n1=9009
    print("9009 a palindrome",isPalindrome(n1))
    n2=9001
    print("9001 a palindrome",isPalindrome(n2))
    n3=12321
    print("12321 a palindrome",isPalindrome(n3))
    res=genProds(100,999)
    pali=findMax(res)
    print("the max palindrome is",pali)

    return


main()
