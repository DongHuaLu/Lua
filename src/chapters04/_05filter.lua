function recieve(prod)
  local status,value = coroutine.resume(prod)
  return value
end

function send(x)
  coroutine.yield(x)
end

function producer()
  return coroutine.create(
    function()
      while true do
        local x = io.read()
        send(x)
      end
    end)
end

function filter(prod)
  return coroutine.create(
    function()
      for line=1,math.huge do
        local x =recieve(prod)
        x = "filter " .. x
        send(x)
      end
    end
  )
end

function consumer(prod)
  while true do
    local x = recieve(prod)
    print(x)
  end
end

p = producer()
f = filter(p)
consumer(f)