function ispali (s)
    local fh = s:sub(1, s:len() / 2)
    local sh = s:sub(s:len() / 2)
    return fh == sh:reverse()
end