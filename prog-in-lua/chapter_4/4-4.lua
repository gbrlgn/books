function insert (s, p, s2)
    local send = string.sub(s, utf8.offset(s, p))
    local sbeg = string.sub(s, utf8.offset(s, 1), utf8.offset(s, p))
    return sbeg .. s2 .. send
end