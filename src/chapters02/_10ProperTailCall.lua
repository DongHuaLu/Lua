--[[ 
  尾调用消除,指的是函数调用最后的return中调用了其他函数,获取返回值后没有后续处理,则外层函数可以不入栈保存上下文 
 而直接使用返回函数的值进行处理,在深层次递归调用可以不消耗栈空间
]]--

function f(x)
  return g(x) -->满足尾调用消除
end

function f(x)
  g(x) --> 不满足尾调用消除
end

function f(x)
  return g(x)+1 -->return 有后续处理,不满足尾调用消除
end

function proper(x)
  if(x>0) then
  print(x)
  return proper(x-1) -- 即使x再大,也不会引起 stack overflow 若把return 的值 -1进行运算,则会栈溢出
  end
end

proper(2111111111)
----------------------------------------------------
function room1()
  print("enter room1")
  local move = io.read()
  if "4" == move then return room4()
    elseif "6" == move then return room6()
    else return room1()
  end
end

function room4()
  print("enter room4")
  local move = io.read()
  if "8" == move then return room8()
    elseif "2" == move then return room2()
    elseif "6" == move then return room1()
    else return room4()
  end
end

function room6()
  print("enter room6")
  local move = io.read()
  if "4" == move then return room1()
  else return room6()
  end
end

function room8()
  print("enter room8")
  local move = io.read()
  if "8" == move then print("victor")
  elseif "2" == move then return room4()
  else return room8()
  end
end

function room2()
  print("enter room2")
  local move = io.read()
  if "8" == move then return room4()
  else return room2()
  end
end

room1()