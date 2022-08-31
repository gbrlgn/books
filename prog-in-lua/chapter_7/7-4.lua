function readlast (file)
	local size = file:seek("end")
	local s = nil
	local count = 0
	for i = size, 0, -1 do
		file:seek("set", i)
		s = file:read(1)
		if s == "\n" then
			count = count + 1
		end
	end
	file:seek("set", 0)
	print(file:read("*a"))
end