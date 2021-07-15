

def fib(n):
    a,b=1,2
    total=0
    while b<n:
        a,b=b,a+b
        if(a%2==0):
            total=total+a
            
    print(total)
    
fib(4000000)