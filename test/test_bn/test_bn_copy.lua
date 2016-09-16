local fail = false

print("Test: copy...")

local q = a:copy()
if q ~= a then
    print("\tFail: q == a")
    fail = true
end

q = q + 12
if q == a then
    print("\tFail: q + 12 == a")
    fail = true
end

if a ~= bn(255) then
    print("\tFail: a")
    fail = true
end

local q = ne:copy()
if q ~= ne then
    print("\tFail: q == ne")
    fail = true
end

q = q * 3
if q == ne then
    print("\tFail: q * 4 == ne")
    fail = true
end

if ne ~= bn("-30446744073709551615") then
    print("\tFail: ne")
    fail = true
end

if not fail then
    print("\tPass")
end
