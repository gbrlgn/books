function remove (s, i, c)
    local e = i + c
    local sbeg = string.sub(s, -i)
    local send = string.sub(s, -e)
    return sbeg .. send
end