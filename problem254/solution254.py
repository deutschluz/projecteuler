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
        
print(SumDigitFac(342));

print(SumDigitFac(25))

def sumDigit(N):
    result=0;
    while N>0:
        result=result + (N%10)
        N=(N-N%10)/10;
    return int(result)

print(sumDigit(SumDigitFac(342)))
print(sumDigit(SumDigitFac(25)))
def bruteForceProof(N,i):
    for j in range(1,N-1):
        if sumDigit(SumDigitFac(j))==i:
            return j,False
    else:
        return True;
        
print(bruteForceProof(24,5))