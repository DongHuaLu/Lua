-- 创建一个协同程序
co = coroutine.create(function() print("run") end)
print("type of co is " .. type(co)) -->thread
-- suspended(挂起),running(运行),dead(死亡),normal(正常)
print("now co status is " .. coroutine.status(co)) -->suspended

coroutine.resume(co) --启动或再次启动一个协同程序
print("now co status is " .. coroutine.status(co)) -->dead