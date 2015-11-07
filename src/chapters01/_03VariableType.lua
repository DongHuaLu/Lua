--[[
基础类型 nil(空),boolean,number,string,userdata(自定义类型)
,function(函数),thread(线程),talbe(表)
--]]
print("type hello wrold is " .. type("hello world")) -->string
print("type 11.2 * 4 is " .. type(11.2*4)) -->number
print("type print is " .. type(print)) -->function
print("type true is " .. type(true)) -->boolean
print("type nil is " .. type(nil)) -->nil
print("type type(X) is " .. type(type(X))) -->string,type返回一个string
print("----------------------------------------------")
print("a is undefine a = " .. type(a)) -->nil
a = 100
print("a become a number" .. type(a)) -->number
a = "a string"
print("a become a string " .. type(a)) -->string
a = print
a("use a print type(a) is function" .. type(a))
