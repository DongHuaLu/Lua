producer = coroutine.create(
  function()
    while true do
      local x = io.read()
      send(x)
    end
  end
)

function send(x)
  print("send " .. x)
  coroutine.yield(x)
end

function recieve()
  while true do
    local status,value = coroutine.resume(producer)
    print("value is " .. value)
  end
end


recieve()