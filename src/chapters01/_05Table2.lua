a={}
for i=1,10 do
  a[i] = i
end
-----------------------
for i=1,#a do --#a用于返回返回数组或线性表最后一个索引值(或其大小)
  print(a[i])
end

print(a[#a]) -- 打印a的最后一个值
a[#a+1] = 11 -- 添加到列表尾
-----------------------
b={}
b[100000] = 1
print(table.maxn(b)) -- 返回table最大的正数索引