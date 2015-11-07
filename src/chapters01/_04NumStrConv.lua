print("put in a number ...")
line=io.read()
n = tonumber(line)
if(line == nil) then
  error(line .. "is not a vaild num")
else
  print("double line is " .. n * 2)
end
-----------------------------------------
print(tostring(10) == "10")
print(10 .. "" == "10")
-------长度操作符 #后会输出后续字符串的长度--------------
a="hello"
print(#a) -->5
print(#"good\0bye") -->8 