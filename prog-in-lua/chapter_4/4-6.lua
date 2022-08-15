function remove (s, i, c)
    local e = i + c
    local sbeg = string.sub(s, utf8.offset(s, -i))
    local send = string.sub(s, utf8.offset(s, -e))
    return sbeg .. send
end