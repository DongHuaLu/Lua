print(4 and 5) -->5
print(nil and 5) --> nil
print(false and 5) --> false
print(4 or 5) -->4
print(false or 5) -->5
-----------------------------
x=x or v -- 等价于 如果x为空,将v赋值给x
if not x then x = v end
----------------------------
x = 5
y = 3
max = (x > y) and x or y -- 等同于 x>y?x:y
print("max = " .. max )
val = (x > y) and z or y -- 不同于x>y?z:y,
--在z为false的时候, (x > y) and z 为false 最后值为y
print("val = " .. val )