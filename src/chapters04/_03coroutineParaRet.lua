co1 = coroutine.create(function(a,b)
  print("co1",a,b)
end)

coroutine.resume(co1,2,3) --> co1,2,3

co2 = coroutine.create(function(a,b) 
  coroutine.yield(a+b,a-b)
end)

print(coroutine.resume(co2,3,4)) --> true,7,-1

co3 = coroutine.create(function() 
  print("co3",coroutine.yield())
end)

coroutine.resume(co3)
coroutine.resume(co3,6,8) --> yield的返回值就是resume传入的参数

co4 = coroutine.create(function()
  return 6,7
end)

print(coroutine.resume(co4)) --> true,6,7 