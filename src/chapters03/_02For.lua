------ipairs实现-----------------------
local function iter(a , i)
  i=i+1
  local v=a[i]
  if v then
    return i,v
  end
end

local function ipairs(a)
  return iter,a,0 -- 迭代器函数,恒定状态a,控制变量初值0
end

t={10,20,30,40,50}

for i,v in ipairs(t) do
  print("i= " .. i .. " v= " .. v)
end
print("----------------------------")

-----pairs-----------------

local function pairs(a)
  return next,t,nil
end

for i,v in pairs(t) do
  print("i= " .. i .. " v= " .. v)
end
print("----------------------------")
for i,v in next,t do  -- 等同于pairs
  print("i= " .. i .. " v= " .. v)
end