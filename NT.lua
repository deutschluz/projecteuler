function gcd(x,y)
   if y==0 then return x
   else return gcd(y,x%y)
   end
end

-- euler's phi function
--   phi(n) = count of numbers <= n and relatively prime to n
function phi(n)  --O(nlog n)
   local total=0
   for i=1,n do
      if gcd(n,i) == 1 then
         total= total +1
      end
   end
   return total
end

--gcdFactoring algorithm
-- uses the theorem about the phi function that
-- if we are looking to factor N, then gcd(x,N)=x
--   means x is a factor of N
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
-- One can also turn such a function into a primality test:
--   N is prime iff phi(N)= N-1
function isPrimePhi(N)
   local p=phi
   return N-1 == p(N)
end

--pollard's rho algorithm

function pollardRho(N)
   local gcd=gcd
   local x_fixed=2
   local cycle_size=2
   local x=2
   local factor=1
   local g=function(x,N) return (x*x+1)%N end
--   print("x       | x_fixed     | x mod 101  | step")
   while factor == 1 do
      
 --     dbg() --call debugger
      local i=1
      
      while i<=cycle_size and factor<=1 do
 --        io.write(x,"     ",x_fixed,"    ",x%101,"  ",x_fixed%101,"     ",i,"\n")
         x=g(x,N)
         factor=gcd(x-x_fixed, N)
         i=i+1
      end
      cycle_size=cycle_size*2
      x_fixed=x
   end
   return factor
end


--modular exponentiation
function modex(b, e, m)
   function sq(y) return y*y end
   if e == 0 then return 1
   elseif e%2==0 then
      return sq(modex(b,e/2,m))%m
   else
      return b*(modex(b,e-1,m))%m
   end
end

function extGCD(a,b)
   local s=0;local old_s=1
   local t=1;local old_t=0
   local r=b;local old_r=a
   local q=0
   local fl=math.floor
   while r ~= 0 do
      q= fl(old_r/r)
      old_r, r = r, old_r - q*r
      old_s, s = s, old_s - q*s
      old_t, t = t, old_t - q*t
 --     print(q,r,s,t)
   end
   return old_s,old_t,old_r
end