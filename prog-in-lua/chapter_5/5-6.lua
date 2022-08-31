function isseq (t)
    local len = 0
    for k, _ in pairs(t) do
        if math.type(k) == "integer"
        and k > 0 then
            len = math.max(len, k)
        end
    end
    for i = 1, len do
        if t[i] == nil then
            return false
        end
    end
    return true
end