function combinations (items, x, y)
    local m, n = x, y
    
    if m == nil then
        m = #items - 1
    end
    
    if n == nil then
        n = #items
        print("First level")
    end
    
    if m * n == 0 then
        print("Exited")
        return {{}}
    end
    
    local ret, old = {}, combinations(items, m - 1, n - 1)
    
    for i = 1, n do
        for k, v in ipairs(old) do
            ret[#ret + 1] = {i, map(incr(i), table.unpack(v))}
        end
    end

    retplain = {{}}

    if x == nil then
        for i = 1, #ret do
            item = ret[i]
            plain = {}
            
            for j = 1, #item do
                table.insert(plain, items[item[j]])
            end
            
            table.insert(retplain, plain)
        end

        print("First level")
        return retplain
    else
        print("Level", x, y)
        return ret
    end
end

function map (f, a, ...)
    if a then
        return f(a), map(f, ...)
    end
end

function incr(k)
    return function(a)
        return k > a and a or a + 1
    end
end

r = combinations({"spinoza", "nietzsche", "whitehead", "deleuze"})

for i = 1, #r do
    print(table.unpack(r[i]))
end