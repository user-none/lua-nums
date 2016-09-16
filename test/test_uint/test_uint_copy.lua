local fail = false

print("Test: copy...")

local r = a8:copy()
if r ~= a8 then
    print("\tFail: r ~= a8")
    fail = true
end

r = r + 7
if r == a8 then
    print("\tFail: r == a8")
    fail = true
end

if a8 ~= uint.u8(19) then
    print("\tFail: a8 ~= 19")
    fail = true
end

if not fail then
    print("\tPass")
end

