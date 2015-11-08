local read
repeat
	local line = io.read()
	read = line
until line ~= "" --在这可以访问到repeat中的局部变量
print(read)