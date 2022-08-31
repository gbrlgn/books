sunday = "monday"; monday = "sunday"
t = {sunday = "monday", [sunday] = monday}
print(t.sunday, t[sunday], t[t.sunday])

--> monday sunday sunday

for k, v in pairs(t) do
   print(k, v)
end         --> sunday monday
            --> monday sunday

print(t.sunday)   --> "monday"
print(t[sunday])   --> "sunday"
print(t[t.sunday]) --> "sunday"