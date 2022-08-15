function ispali (s)
    local as = s:gsub(".", ""):gsub(",", ""):gsub(";", "")
                :gsub(":", ""):gsub("?", ""):gsub("!", "")
    local fh = as:sub(1, as:len() / 2)
    local sh = as:sub(as:len() / 2)
    return fh == sh:reverse()
end