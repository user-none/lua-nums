local fail = false

print("Test: rshift...")

if b >> 11 ~= bn("60281635259934413525993") then
    print("\tFail: b >> 11")
    fail = true
end

if d >> 3003 ~= bn("0") then
    print("\tFail: d >> 3003")
    fail = true
end

if e >> 24 ~= bn("1814767365080") then
    print("\tFail: e >> 24")
    fail = true
end

if f >> 12 ~= bn("4503599627370495") then
    print("\tFail: f >> 12")
    fail = true
end

if e >> 8 ~= bn("118932594037927935") then
    print("\tFail: e >> 8")
    fail = true
end

if not fail then
    print("\tPass")
end
