function norm (x, y)
    return math.sqrt(x^2 + y^2)
end

function twice (x)
    return 2.0 * x
end

--[[
dofile("1-2.lua")
norm(3.0, 5.0)

lua -l 1-2.lua
twice(3.14)
--]]