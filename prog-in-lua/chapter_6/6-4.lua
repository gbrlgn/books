function shufflelist (...)
    items = table.pack(...)
    itemsr = {}
    
    for i = 1, #items do
      math.randomseed(os.time())
      p = math.random(#items)
      
      print("Random item:", p)

      table.insert(itemsr, items[p])
      table.remove(items, p)
    end
    
    return table.unpack(itemsr)
  end