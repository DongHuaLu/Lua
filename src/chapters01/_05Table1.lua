a={} --创建一个table,讲该table的引用赋值给a
k="x"
a[k] = 10 --a["x"] 赋值为10
a[20] = 200 -- a[20] 赋值为200
print(a["x"]) --> 10
print(a[k]) --> 等同于a["x"] 10
k=20
print(a[k]) -->等同于 a[20] 200
a["x"] = a["x"] + 1 -->a["x"]赋值为 原a["x"]+1
print(a["x"]) -->11
-----------------------------------
b=a --将table的引用指向b
print(b["x"]) --等同于a["x"]
b["x"] = 1 -- 改变table ["x"]的值
print(a["x"]) -->1
a=nil
b=nil --当没有其他引用指向table时,table会回收table所在的内存
-----------------------------------
c={}
for i=0,100 do c[i] = i*2 end
print(c[11])
c["x"] = 12
print(c["x"])
c.x = 22
print(c["x"])
print(c.x) -- c.x 等同于c["x"]
print(c.y)
----------------------------------
d={}
x="y"
d[x] = 23 -- a["y"] = 23
print(d[x]) -->23
print(d.x) -->d["x"] = nil
print(d.y) -->d["y"] = 23
