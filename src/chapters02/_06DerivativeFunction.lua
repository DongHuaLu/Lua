-- 求导函数 返回 (f(x+delta) - f(x))/delta
function derivative(f,delta)
  delta = delta or 1e-4
  return function(x) return (f(x+delta) - f(x))/delta end
end

x = 10;
f2 = function(x) return (x * x) end
f2d = derivative(f2) -- f2导函数
print(2*x,f2d(x))  -- f2'=2x 


f3 = function(x) return (x * x * x) end
f3d = derivative(f3) -- f3导函数
print(3*(x*x),f3d(x)) -- f3'=3x^2

sind = derivative(math.sin)
print(math.cos(x),sind(x)) -- sin'=cos
