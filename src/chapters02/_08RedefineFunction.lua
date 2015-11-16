oldPrint = print
print = function(...)
  oldPrint(...); -->原来的print
  local all = "my pirint "
  for i=1,select("#",...) do
    all = all .. '   ' .. select(i,...)
  end
  return oldPrint(all) -->增加print前输出
end

print("a","b")


do 
  local oldPrint = print
  print = function(...)
    oldPrint(...)
    local all = "my pirint2 "
    for i=1,select("#",...) do
      all = all .. '   ' .. select(i,...)
    end
    return oldPrint(all) -->增加print前输出
  end
end

print("a","b")