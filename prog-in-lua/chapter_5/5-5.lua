function polyval (p, x)
    local sum, pow = 0, 1
    for _, a in ipairs(p) do
       sum = sum + a * pow
       pow = pow * x
    end
    return sum
end