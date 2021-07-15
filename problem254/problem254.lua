
function fac(n)
		local result=1;
		while n>=1 do
			result=result*n
			n=n-1;
		end
	return result;
end

print(fac(6));

function SumDigitFac(N)
		 local result=0
		  while (N%10 > 0) do
				result=result + fac(N%10)
				N=(N-N%10)/10;
			end
		return result;
	end
print(SumDigitFac(342));
function DigitSum(N)
		local result=0;
		while (N>0) do
			result=result + (N%10)
			N=(N-N%10)/10;
		end
		return result
	end
print(DigitSum(SumDigitFac(342)));

function printResult(A)
	for i=1,#A do
		io.write(A[i])
	end
	io.write("\n")
end
printResult({1,2,3,4})
--[[params: n is size of a
           a is a table--]]
function permgen(a,x)
	local x=x or #a
	if x==1 then
		printResult(a)
	else
		for i=1,x do	
			a[x],a[i]=a[i],a[x]
			permgen(a,x-1)
			a[x],a[i] = a[i],a[x]
		end
	end
end

print("the permutations of abcde are:")
result={'a','b','c','d','e'}
permgen(result,5)

function min(i,f)
		--
		return N
	end

function GenPart(N)
	--init an array to store a part
	local p={}
	local lasti=0
	
	--init the first partition as number itself
	p[lasti]=n;
	while true do
		printResult(p,lasti+1)
		--gen next part
		local remval = 0;
		while lasti >= 0 and p[lasti] == 1 do
	
	return result
end
print(GenPart(5))