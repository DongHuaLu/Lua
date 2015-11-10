function maximum(a)
  local maxIdx = 1;
  local max = a[maxIdx]
  for i,v in ipairs(a) do
    if v > max then
      max = v
      maxIdx = i
    end
  end
  return max,maxIdx -- 多返回值
end


print(maximum({22,32,56,2,1,55,12}))
-----------------------
function foo() end
function foo1() return "a" end
function foo2() return "a","b" end

x,y = foo() --> x=nil,y=nil
print((x or "nil" ).. " " .. (y or "nil"))
x,y = foo1() --> x=a,y=nil
print((x or "nil" ) .. " " .. (y or "nil"))
x,y = foo2() --> x=a,y=b
print(x .. " " .. y)
x = foo2() -->x=a,第二个返回值被丢弃
x,y = 10,foo1() --x=10,y="a"
print(x .. " " .. y)
x,y = 10,foo2() --x=10,y="a"
print(x .. " " .. y)
-- 如果函数调用不是一系列表达式的最后一个元素,那么将值产生一个值
x,y = foo2(),10 --x="a",y=10
print(x .. " " .. y)
x,y = foo(),10,20 --x=nil,y=10,20被丢弃
print((x or "nil" ) .. " " .. y)

print(foo()) --> 
print(foo1()) -->a
print(foo2()) -->a,b
print(foo2(),1) -->a,1 不是表达式的最后一个元素,只产生一个值
print(foo2() .. "x") --> ax 不是表达式的最后一个元素,只产生一个值

--table 可以完整的接受一个函数的所有返回值---------------------
t={foo()} -- t={}
t={foo1()} -- t={"a"}
t={foo2()} -- t={"a","b"}
t={foo2(),2,3} -- t={"a",2,3} -- 不是表达式的最后一个值,值产生一个值
print(table.concat(t,","))
---return返回值----------------------------
function f(a)
  if a==1 then return foo()
  elseif a==2 then return foo1()
  elseif a==3 then return foo2()
  elseif a==4 then return (foo2()) --(函数) 将多返回值函数转换成单返回值
  end
end

print(f(1))
print(f(2))
print(f(3))
print(f(4))
------------------------
a={1,"ll"}

print(unpack(a)) -- unpack 将table作为多返回值返回
s,b = unpack(a)
