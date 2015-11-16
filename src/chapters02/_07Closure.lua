--闭合函数
names = {"Peter","Paul","Mary"}
grades = {Mary=10,Paul=99,Peter=15}

function sortByGrade(names,grades)
  table.sort(names,function(n1,n2)
     return grades[n1] > grades[n2] --非局部变量,内部函数可以访问外部函数的局部变量grades
  end)
end

sortByGrade(names,grades)

for i,v in ipairs(names) do
  print(v)
end
-------------------------------------
function newConter()
  local i = 0
  return function()
    i = i + 1
    return i
  end
end

c1 = newConter() -->调用newConter时返回内部的匿名函数closure
print(c1()) --> 1 
print(c1()) --> 2   每次调用时时非局部变量i的作用范围未时效

c2 = newConter() -->新建一个closure
print(c2()) -->1
print(c1()) -->3
print(c2()) -->2
