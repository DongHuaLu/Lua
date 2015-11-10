function add(a)
  local sum = 0
  for i,v in ipairs(a) do
    sum = sum + v
  end
  return sum
end

-----------形参与实参-----------------------

function plus(a,b)
  if a ~= nil and b ~= nil then
    return a + b
  elseif a == nil then
    return b
  else
    return a
  end
end

print(plus(1,2)) -- a=1,b=2
print(plus(1))  -- a=1,b=nil
print(plus(1,2,3)) --a=1,b=2

----------初始化值-------------------
count = 0
function incCount(n)
  n = n or 1 -->调用incCount() 第一次初始化n = 1
  count = count + n
end

incCount()
incCount()
print(n) -->nil
print(count) -->2

