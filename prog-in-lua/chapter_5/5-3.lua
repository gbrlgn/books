t = {
    ["\a"] = "bell",
    ["\b"] = "backspace",
    ["\f"] = "form feed",
    ["\n"] = "new line",
    ["\r"] = "carriage return",
    ["\t"] = "horizontal tab",
    ["\v"] = "vertical tab",
    ["\\"] = "backslash",
    ["\""] = "double quote",
    ["\'"] = "single quote"
}

for k, v in pairs(t) do
    print(k, v)
end