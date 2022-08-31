function polyval (p, x)
    local sum = 0
    for i, a in ipairs(p) do
       sum = sum + a * x ^ (i - 1)
    end
    return sum
end