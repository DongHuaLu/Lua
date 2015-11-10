function addAll(...)
  local sum = 0
  for i,v in ipairs{...} do
    sum = sum + v
  end
  return sum
end

print(addAll(1,2,3,4,5,6)) -->1+2+3+4+5+6 = 21
----------------------------------------------
function f(...)
  local a,b = ...
  print(a)
  print(b)
end

f(1,2,3) -- >1 2
f(4) -- >4 nil
----------------------------------------------
function fAdd(...)
  local sum = 0
  for i=1, select("#",...) do -->选取...的个数,包含nil
    local arg = select(i,...) -->获取...中第i个元素
      if arg ~= nil then
        sum = sum + arg
      else
        print("arg [" .. i .. "] is nil")
      end
   end
   return sum
end

print(fAdd(1,2,nil,3,4,5,6))