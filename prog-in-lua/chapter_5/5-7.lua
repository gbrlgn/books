function insert (from, pos, to)
    for i, v in ipairs(from) do
        table.insert (
            to, pos + i - 1, v
        )
    end
end

to = {1, 2, 3, 4, 5}
from = {"a", "b", "c", "d", "e", 'f', 'g', 'h'}
insert(from, 3, to)

for i, v in ipairs(to) do
    print(i, v)
end