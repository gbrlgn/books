if not arg[1] then io.input()
    else io.input(assert(io.open(arg[1], "r"))) end
if not arg[2] then io.output()
    else io.output(io.open(arg[2], "w")) end

local lines = {}
for line in io.lines do
    lines[#lines + 1] = line
end

table.sort(lines)

for _, l in ipairs(lines) do
    io.write(l, "\n")
end