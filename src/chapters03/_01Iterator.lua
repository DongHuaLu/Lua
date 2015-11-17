function values(t)
  local i=0
  return function() i=i+1;return t[i] end
end


t={10,20,30,40,50}
iter = values(t)
while true do
  local element = iter()
  if element ~= nil then
    print(element)
  else
    break
  end
end 

for e in values(t) do
  print(e)
end