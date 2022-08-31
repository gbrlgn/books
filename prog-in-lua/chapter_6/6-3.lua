function nolst (...)
    local args = {...}
    return select(args, 1, #args - 1)
end