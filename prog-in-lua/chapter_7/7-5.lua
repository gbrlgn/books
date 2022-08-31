function readlastg (file, n)
	n = n or 1
	local size = file:seek("end")
	local s = nil
	local count = 0
	for i = size, 0, -1 do
		file:seek("set", i)
		s = file:read(1)
		if s == "\n" then
			count = count + 1
			if count == n * 2 then
				print(file:read("*a"))
				return
			end
		end
	end
	file:seek("set", 0)
	print(file:read("*a"))
end