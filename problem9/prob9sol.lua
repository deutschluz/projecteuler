
function isPythagTrip(a,b,c)
  if a*a + b*b == c*c then
    return true
  else
    return false
  end
end

function addUpToThou(a,b,c)
  return a+b+c == 1000
end

--brute force search
function brute()
  local t0=os.time()
  for i=1,1000 do
    for j=1,1000 do
      for k=1,1000 do
        if isPythagTrip(i,j,k) and addUpToThou(i,j,k) then
	  print(i*j*k)
	  local tf=os.time()
	  print(os.difftime(tf,t0)," secs")
	  return true 
	end
      end
    end
  end
end
brute()

--Euclid's Formula
-- a = m^2 - n^2; b = 2*m*n; c = m^2 + n^2
-- assuming gcd(m,n)==1, and m+n is odd

function gcd(i,j)
  if j == 0 then return i
  else return gcd(j,i%j)
  end
end

function genPythagTrip(m,n)
  if (m+n)%2 == 0 then return false end
  if gcd(m,n) ~= 1 then return false end
  return m*m-n*n,2*m*n,m*m+n*n
end

function smart()
  local a,b,c=0,0,0
  for m=2,1000 do
    for n=1,1000 do
      a,b,c=genPythagTrip(m,n)
      if a==false then
         goto continue
      end
      if isPythagTrip(a,b,c) and addUpToThou(a,b,c) then
        print(a*b*c)
	return
      end
      ::continue::
    end --innerfor
  end
end

smart()