def fac(n):
	result=1;
	while n>=1:
		result=result*n
		n=n-1;
	return result;

def SumDigitFac(N):
    result=0
    while N%10 > 0:
        result=result + fac(N%10)
        N=(N-N%10)/10;
    return int(result);
        
#print(SumDigitFac(342));

#print(SumDigitFac(25))

def sumDigit(N):
    result=0;
    while N>0:
        result=result + (N%10)
        N=(N-N%10)/10;
    return int(result)

#print(sumDigit(SumDigitFac(342)))
#print(sumDigit(SumDigitFac(25)))
def bruteForceProof(N,i):
    for n in range(1,N):
        if sumDigit(SumDigitFac(n))==i:
            return n
    else:
        return False;
    
print(sumDigit(bruteForceProof(1000,2)))
print(sumDigit(bruteForceProof(1000,3)))
print(sumDigit(bruteForceProof(1000,4)))
print(bruteForceProof(100000,150))


def sum(lim,N):
    total=0
    for i in range(1,N+1):
        total=total + sumDigit(bruteForceProof(lim,i))
    return total
   
print(sum(1000,20))