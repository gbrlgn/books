function insert (s, p, s2)
    local send = string.sub(s, p)
    local sbeg = string.sub(s, 1, p)
    return sbeg .. s2 .. send
end