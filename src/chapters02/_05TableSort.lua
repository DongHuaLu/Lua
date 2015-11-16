fruits={
  {name="apple" , price=10},
  {name="banana" , price=5},
  {name="orange" , price = 15},
  {name="limon" , price = 20}
}


table.sort(fruits,function(a,b) return (a.price > b.price) end );

for i,v in ipairs(fruits) do
  print(v.name)
end