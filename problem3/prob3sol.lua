--[[Problem 3 Prime Factors


      The prime factors of 13195 are 5, 7, 13 and 29.

      What is the largest prime factor of the number 600851475143 ?
      --]]

--Solution

--function that prints the elements in array
function printArray(Arr)
  for i in ipairs(Arr) do
    io.write(Arr[i]," ")
  end
  io.write("\n")
end

--1. generate list of primes < limit
function genPrimes(limit)
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

result=genPrimes(100)
print("is 97 prime?",result[97])

function makeFactorArray(Num)
  local factArr={} --to hold factors
  local sqrtN=math.sqrt(Num)
  local listOfPrimes=genPrimes(sqrtN)
  local limit=#listOfPrimes
--2. for each p in listOfPrimes
  for p=2,limit do
    --if p is prime and divides limit
    if listOfPrimes[p] then
      if limit%p==0 then
       table.insert(factArr,p)
      end
    end
  end
  return factArr
end

local r = makeFactorArray(13195)
printArray(r)

--3. find max element in factorarray
--   currmax=factorarray[0]
--   for i up factorarray.length
--     if currmax < factorarray[i] then
--        currmax=factorarray[i]
--   return currmax