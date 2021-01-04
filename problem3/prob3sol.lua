--[[Problem 3 Prime Factors


      The prime factors of 13195 are 5, 7, 13 and 29.

      What is the largest prime factor of the number 600851475143 ?
      --]]

--Solution

--1. generate list of primes < sqrt(limit)

--2. for each p in listOfprimes
--  if p divides limit
--    factorarray.insert(p)

--3. find max element in factorarray
--   currmax=factorarray[0]
--   for i up factorarray.length
--     if currmax < factorarray[i] then
--        currmax=factorarray[i]
--   return currmax