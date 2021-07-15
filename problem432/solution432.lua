function printA(t)
	for i in ipairs(t) do
		io.write(t[i])
	end
	io.write("\n")
end
printA({1,2,3,4})

function gcd(x,y)
   if y==0 then return x
   else return gcd(y,x%y)
   end
end

print("gcd of 101 and 51051 is: ",gcd(51051,101)) --these are relprim.

function phi(n)  --O(nlog n)
   local total=0
   for i=1,n do
      if gcd(n,i) == 1 then
         total= total +1
      end
   end
   return total
end


-- answer is not 51050;thus 51051 is NOT prime





function gcdfactor(N)
   local g=gcd
   local index=1
   while index < N do
      if g(N,index) == index then
         print(index)
      end
      index=index+1
   end
   print("the end")
end

print("the factors of 100 are: ")
print(gcdfactor(100))
print("the factors of 51051 are: ")
print(gcdfactor(51051))

function fillWith(t,N,M)
	for i=1,N do
		t[i]=M
	end
	return t
end

printA(fillWith({},10,0))

function sieve(N)
	local sqrt=math.sqrt
	local sqrtN=sqrt(N)
	local fill=fillWith
	local p=fill({},N,0)
	for i=2,N do
		--print("i: ",i)
		if(p[i]==0) then
	--	print("p[i]: ",p[i]==0)
		    for j=i*i,N,i do
		--		print("j: ",j)
			   p[j]=1 --1 == false
		    end
		end
	end
	return p
end
local s=sieve(101)


print("is 10 prime? ",s[10]==0)
print("is 19 prime? ", s[19]==0)
print("is 97 prime? ",s[97]==0)
print("is 100 prime? ",s[100]==0)
function relprime(x,y)
	return gcd(x,y) == 1
end


function otherPhi(N)
	local sqrt=math.sqrt
	local sqrtN=sqrt(N)
	local sieve=sieve
	local prmArr=sieve(N+(N/2))
	local phi=N -- init with N
	for p=2,sqrtN do
		-- if p is prime
		if prmArr[p] == 0 then
			--if p | N
			if N % p ==0 then
			--	print("p is: ",p)
				
				phi=(phi/p)*(p-1)
			--	print("phi is: ",phi)
			end
		end
	end
	return phi
end

print("phi of 100 is: ",phi(100))
print("phi of 101 is: ", phi(101))
print("phi of 51051 is: ",phi(51051))
print("phi of 100 is: ",otherPhi(100))
print("phi of 101 is: ", otherPhi(101))
print("phi of 51051 is: ",otherPhi(51051))
print("100 and 101 are relprime: ",relprime(100,101))

-- OUTPUT: list of squares < N in an array
function squares(N)
	local arr={}
	for i=1,N do
		arr[i]=i*i
	end
	return arr
end


--squarefree sieve; marks off multiples of perfect squares
-- treats squares like non-primes in the sieve of eratosthenes
function squareFree(N)
	local sqs=squares(N)--all squares < N
	local fill=fillWith
		--in the beginning all numbers are squarefree
	local sqfr=fill({},N,0) -- 1:= not square-free
	--now mark off the squares
	-- for every i find i^2 in sqs
		for i=2,#sqfr do
			-- if i is square free then set its square to 1
			if sqfr[i]==0 then
				
				--then mark off multiples of the square
				for j=1,#sqfr,i do
					sqfr[i*i*j]=1
				end
			end
		end
	return sqfr
end

local sqf=squareFree(100)
print("is 10 squarefree? ", sqf[10]==0)
print("is 9 square free? ",sqf[9]==0)
print("is 30 square free? ",sqf[30]==0)
print("is 2*3*7=42 square free? ",sqf[42]==0)
print("is 4 square free? ",sqf[4]==0)
print("is 8 square free? ",sqf[8]==0)
print("is 9 square free? ",sqf[9]==0)
print("is 16 square free? ",sqf[16]==0)
print("is 32 square free? ",sqf[32]==0)
--[[
--brute force: prolly gonna hang.
function sumPhi(N,M)
	-- use sieve of eratosthenes to generate table of primes < M
	-- then lookup whether is prime instead for calling phi.
	local sieve=sieve
	local primes=sieve(M);
	local total=0
	local phi=phi
	local rp=relprime
	local phiN=phi(N) --store this as a constant for the case
					-- where N and i are relprime.
	for i=1,M do
		if rp(N,i) then 
			total=total+phiN*phi(i)
		elseif primes[i]== 0 then
			total = total +phiN*(i-1)
		end
	end
	return total
end

--print(sumPhi(51051,1000000))

function mobius(n)
    --
	-- 1 ,if n is squarefree and have EVEN number of prime factors
	
	-- -1,if n is squarefree and has an ODD number of prime factors 
	
	-- 0, if n has square prime factor.
	end
	--]]