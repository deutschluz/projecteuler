

function sqSum(limit)
  local total=0
  for i=1,limit do
    total = total + i
  end
  return total*total
end

function sumSq(limit)
  local total=0
  for i=1,limit do
    total = total + i*i
  end
  return total
end

function main()
  local lim=100
  local res1=sqSum(lim)
  local res2=sumSq(lim)
  print(res1,"-",res2,"=",res1-res2)
end
main()