--[[Problem 3 Prime Factors


      The prime factors of 13195 are 5, 7, 13 and 29.

      What is the largest prime factor of the number 600851475143 ?
      --]]

--Solution

--1. generate list of primes < limit
function genPrime(limit)
  --this is basically the sieve of eratosthenes
  local l={}  --hold booleans
  --create a list of booleans by default set to true
  for i=1,limit do
    l[i]=true
  end
  -- mark all multiples as false
  for i=2,limit do
    for j=i,limit do
      l[i*j]=false
    end
  end
  return l
end

result=genPrime(100)
print("is 97 prime?",result[97])


--2. for each p in listOfprimes
--  if p divides limit
--    factorarray.insert(p)

--3. find max element in factorarray
--   currmax=factorarray[0]
--   for i up factorarray.length
--     if currmax < factorarray[i] then
--        currmax=factorarray[i]
--   return currmax