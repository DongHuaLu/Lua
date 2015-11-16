lib={}
lib.add = function(x , y) return x + y end
lib.red = function(x , y) return x - y end


local f1 = function() 
  print("f1") 
end

local f2 = function() 
  print("f2") 
  f1() 
end

---------------
local fact = function(n)
  if(n == 0) then return 1
  else return n * fact(n-1) -- 这边fact调用的是全局的fact(),因为local fact没有定义完成
  end
end

local fact
fact = function(n)
  if(n == 0) then return 1
  else return n * fact(n-1) --
  end
end

print(fact(10))


