def fac(n):
	result=1;
	while n>=1:
		result=result*n
		n=n-1;
	return result;


print(fac(6));


def SumDigitFac(N):
    result=0
    while N%10 > 0:
        result=result + fac(N%10)
        N=(N-N%10)/10;
    return int(result);
        
print(SumDigitFac(342));
