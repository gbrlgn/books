function ispali (s)
    local as = s:gsub(".", ""):gsub(",", ""):gsub(";", "")
                :gsub(":", ""):gsub("?", ""):gsub("!", "")
    local fh = as:sub(utf8.offset(as, 1), utf8.offset(as, as:len() / 2))
    local sh = as:sub(utf8.offset(as, as:len() / 2))
    return fh == sh:reverse()
end