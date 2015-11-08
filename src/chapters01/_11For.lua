for i=1,100,1 do
  print(i)
end

for j=1,100,2 do
  print(j)
end
--------------------------------
days={"Sunday","Monday","Tuesday","Wednesday"
      ,"Thursday","Friday","Saturday"}
for i,v in ipairs(days) do -- ipairs key,value
  print("i = " .. i .. " v = " .. v)
end

for key in pairs(days) do
  print("key is " .. key)
end

revDays = {}
for i,v in ipairs(days) do
  revDays[v] = i
end