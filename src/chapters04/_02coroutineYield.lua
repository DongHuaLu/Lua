co = coroutine.create(function()
  for i=1,10 do
    print("run " .. i)
    coroutine.yield()
  end
end)

print("co status is " .. coroutine.status(co))
coroutine.resume(co) -->1
coroutine.resume(co) -->2
coroutine.resume(co) -->3
coroutine.resume(co) -->4
coroutine.resume(co) -->5
coroutine.resume(co) -->6
coroutine.resume(co) -->7
coroutine.resume(co) -->8
coroutine.resume(co) -->9
coroutine.resume(co) -->10
coroutine.resume(co) -->什么都不打印
print(coroutine.resume(co)) -->false  cannot resume dead coroutine
