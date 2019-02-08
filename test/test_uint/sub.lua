local fail = false

print("Test: sub...")

if a8-b8 ~= uint.u8(133) then
    print("\tFail: a8-b8 ~= 133")
    fail = true
end

if b8-a8 ~= uint.u8(123) then
    print("\tFail: a8-b8 ~= 123")
    fail = true
end

if a8-237 ~= uint.u8(38) then
    print("\tFail: a8-237 ~= 38")
    fail = true
end

if a8-238 ~= uint.u8(37) then
    print("\tFail: a8-238 ~= 37")
    fail = true
end

if 237-a8 ~= uint.u8(218) then
    print("\tFail: 237-a8 ~= 218")
    fail = true
end

if -a8-b8 ~= uint.u8(95) then
    print("\tFail: -a8-b8 ~= 95")
    fail = true
end

if not fail then
    print("\tPass")
end
