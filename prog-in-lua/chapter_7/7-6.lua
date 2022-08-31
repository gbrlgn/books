function manipulatedir (dir, mode)
    dir = dir or "."
    if mode == "mk" then
        os.execute(string.format("mkdir %s", dir))
        return
    elseif mode == "rm" then
        local ok = os.execute(string.format("rmdir %s", dir))
        if not ok then
            os.execute(string.format("rm -rf %s", dir))
        end
        return
    elseif mode == "ls" then
        os.execute(string.format("ls %s", dir))
        return
    else
        print("Unknown mode.")
        return
    end
end