local function getnext(list,node)
  if not node then
    return list --当node为空时,返回本身最后一个元素
  else
    return node.next --当node不为空时,返回node的下一个元素
  end
end

local function traverse(list)
  return getnext,list,nil  -- 迭代器,恒定list,控制变量为空
end

local prevNode = nil
local nodes = nil
for i=1,10,1 do
  nodes = {value=i*10,next=nodes}
end

for node in traverse(nodes) do
  print(node.value)
end