N = 8                                   -- board size

-- check whether position (n,c) is free from attacks
function isplaceok (a, n, c)
    for i = 1, n - 1 do
        if (a[i] == c) or
        (a[i] - i == c - n) or          -- same diagonal?
        (a[i] + i == c + n) then        -- same diagonal?
            return false                -- place can be attacked
        end
    end
    return true                         -- no attacks; place is OK
end

-- print the first solution
function printfirstsolution (a)
    for i = 1, N do                     -- for each row
        for j = 1, N do                 -- and for each column
            -- write "X" or "-" plus a space
            io.write(a[i] == j and "X" or "-", " ")
        end
        io.write("\n")
    end
    io.write("\n")
end

-- add to board 'a' all queens from 'n' to 'N'
function addqueen (a, n)
    n = n or 1
    if n > N then                       -- all queens have been placed?
        local valid
        for r = 2, N do                 -- generate all permutations
            valid = isplaceok(a, r, a[r])
            if not valid then break end
        end
        if valid then printsolution(a) end
    else                                -- try to place the n-th queen
        for c = 1, N do
            if isplaceok(a, n, c) then
                a[n] = c                -- place the n-th queen at column 'c'
                addqueen(a, n + 1)
            end
        end
    end
end

addqueen({}, 1)                         -- run the program